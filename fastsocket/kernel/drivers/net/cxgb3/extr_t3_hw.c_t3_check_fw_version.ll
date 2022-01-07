; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_check_fw_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_check_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@FW_VERSION_T3 = common dso_local global i32 0, align 4
@FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@FW_VERSION_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"found old FW minor version(%u.%u), driver compiled for version %u.%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"found newer FW version(%u.%u), driver compiled for version %u.%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_check_fw_version(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call i32 @t3_get_fw_version(%struct.adapter* %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @G_FW_VERSION_TYPE(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @G_FW_VERSION_MAJOR(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @G_FW_VERSION_MINOR(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FW_VERSION_T3, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FW_VERSION_MAJOR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FW_VERSION_MINOR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %60

34:                                               ; preds = %29, %25, %15
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FW_VERSION_MAJOR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @FW_VERSION_MINOR, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FW_VERSION_MAJOR, align 4
  %47 = load i32, i32* @FW_VERSION_MINOR, align 4
  %48 = call i32 @CH_WARN(%struct.adapter* %43, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @FW_VERSION_MAJOR, align 4
  %54 = load i32, i32* @FW_VERSION_MINOR, align 4
  %55 = call i32 @CH_WARN(%struct.adapter* %50, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %60

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %49, %33, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @t3_get_fw_version(%struct.adapter*, i32*) #1

declare dso_local i32 @G_FW_VERSION_TYPE(i32) #1

declare dso_local i32 @G_FW_VERSION_MAJOR(i32) #1

declare dso_local i32 @G_FW_VERSION_MINOR(i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
