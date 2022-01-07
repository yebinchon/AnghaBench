; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_dump_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@S5K4AA_PAGE_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Dumping the s5k4aa register state for page 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"register 0x%x contains 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"s5k4aa register state dump complete\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Probing for which registers that are read/write for page 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"register 0x%x is writeable\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"register 0x%x is read only\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Read/write register probing complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @s5k4aa_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k4aa_dump_registers(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %12 = call i32 @m5602_read_sensor(%struct.sd* %10, i32 %11, i32* %5, i32 1)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %19 = call i32 @m5602_write_sensor(%struct.sd* %17, i32 %18, i32* %4, i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 255
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @m5602_read_sensor(%struct.sd* %26, i32 %27, i32* %6, i32 1)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %22

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  %40 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %80, %39
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %83

44:                                               ; preds = %41
  %45 = load %struct.sd*, %struct.sd** %2, align 8
  %46 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %47 = call i32 @m5602_write_sensor(%struct.sd* %45, i32 %46, i32* %4, i32 1)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %76, %44
  %51 = load i32, i32* %3, align 4
  %52 = icmp sle i32 %51, 255
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  store i32 255, i32* %9, align 4
  %54 = load %struct.sd*, %struct.sd** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @m5602_read_sensor(%struct.sd* %54, i32 %55, i32* %7, i32 1)
  %57 = load %struct.sd*, %struct.sd** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @m5602_write_sensor(%struct.sd* %57, i32 %58, i32* %9, i32 1)
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @m5602_read_sensor(%struct.sd* %60, i32 %61, i32* %8, i32 1)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %53
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.sd*, %struct.sd** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @m5602_write_sensor(%struct.sd* %73, i32 %74, i32* %7, i32 1)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %50

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %41

83:                                               ; preds = %41
  %84 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %85 = load %struct.sd*, %struct.sd** %2, align 8
  %86 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %87 = call i32 @m5602_write_sensor(%struct.sd* %85, i32 %86, i32* %5, i32 1)
  ret void
}

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
