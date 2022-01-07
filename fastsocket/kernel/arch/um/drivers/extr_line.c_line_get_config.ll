; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_get_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i8*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"line_get_config failed to parse device number\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"device number out of range\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_get_config(i8* %0, %struct.line* %1, i32 %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.line*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.line* %1, %struct.line** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @simple_strtoul(i8* %18, i8** %15, i32 0)
  store i32 %19, i32* %16, align 4
  %20 = load i8*, i8** %15, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i8*, i8** %15, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %6
  %29 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  store i32 0, i32* %7, align 4
  br label %82

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %30
  %38 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  store i32 0, i32* %7, align 4
  br label %82

39:                                               ; preds = %33
  %40 = load %struct.line*, %struct.line** %9, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.line, %struct.line* %40, i64 %42
  store %struct.line* %43, %struct.line** %14, align 8
  %44 = load %struct.line*, %struct.line** %14, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.line*, %struct.line** %14, align 8
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @CONFIG_CHUNK(i8* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %77

56:                                               ; preds = %39
  %57 = load %struct.line*, %struct.line** %14, align 8
  %58 = getelementptr inbounds %struct.line, %struct.line* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.line*, %struct.line** %14, align 8
  %66 = getelementptr inbounds %struct.line, %struct.line* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @CONFIG_CHUNK(i8* %62, i32 %63, i32 %64, i8* %67, i32 1)
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.line*, %struct.line** %14, align 8
  %71 = getelementptr inbounds %struct.line, %struct.line* %70, i32 0, i32 2
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i8**, i8*** %13, align 8
  %75 = call i32 @chan_config_string(i32* %71, i8* %72, i32 %73, i8** %74)
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %69, %61
  br label %77

77:                                               ; preds = %76, %51
  %78 = load %struct.line*, %struct.line** %14, align 8
  %79 = getelementptr inbounds %struct.line, %struct.line* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %37, %28
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @CONFIG_CHUNK(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @chan_config_string(i32*, i8*, i32, i8**) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
