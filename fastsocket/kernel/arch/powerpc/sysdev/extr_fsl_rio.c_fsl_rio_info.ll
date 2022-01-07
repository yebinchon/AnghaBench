; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Hardware port width: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Single-lane 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Single-lane 2\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Four-lane\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Training connection status: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Output port operating in 8-bit mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Input port operating in 8-bit mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @fsl_rio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_rio_info(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 30
  switch i32 %11, label %14 [
    i32 0, label %12
    i32 1, label %13
  ]

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %15

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %15

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 27
  %21 = and i32 %20, 7
  switch i32 %21, label %25 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %24
  ]

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %26

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %26

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %26

25:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %28)
  br label %45

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 134217728
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %26
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
