; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c___i8042_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c___i8042_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8042_noloop = common dso_local global i64 0, align 8
@I8042_CMD_AUX_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%02x -> i8042 (command)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%02x -> i8042 (parameter)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"     -- i8042 (timeout)\00", align 1
@I8042_STR_AUXDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"     -- i8042 (auxerr)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%02x <- i8042 (return)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__i8042_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i8042_command(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @i8042_noloop, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %99

15:                                               ; preds = %10, %2
  %16 = call i32 (...) @i8042_wait_write()
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %99

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @i8042_write_command(i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %54, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 12
  %32 = and i32 %31, 15
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = call i32 (...) @i8042_wait_write()
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @i8042_write_data(i8 zeroext %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %28

57:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %95, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 15
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %58
  %65 = call i32 (...) @i8042_wait_read()
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %99

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @I8042_CMD_AUX_LOOP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = call i32 (...) @i8042_read_status()
  %77 = load i32, i32* @I8042_STR_AUXDATA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

82:                                               ; preds = %75, %71
  %83 = call zeroext i8 (...) @i8042_read_data()
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %83, i8* %87, align 1
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %58

98:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %80, %68, %38, %19, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @i8042_wait_write(...) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @i8042_write_command(i32) #1

declare dso_local i32 @i8042_write_data(i8 zeroext) #1

declare dso_local i32 @i8042_wait_read(...) #1

declare dso_local i32 @i8042_read_status(...) #1

declare dso_local zeroext i8 @i8042_read_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
