; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_manage_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_manage_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@BANDWIDTH_AVAILABLE_INITIAL = common dso_local global i32 0, align 4
@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_BANDWIDTH_AVAILABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32, i32, i32, i32*)* @manage_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_bandwidth(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @BANDWIDTH_AVAILABLE_INITIAL, align 4
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %87, %22
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %90

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @BANDWIDTH_AVAILABLE_INITIAL, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  br label %90

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %57 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SCODE_100, align 4
  %61 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %62 = load i64, i64* @CSR_BANDWIDTH_AVAILABLE, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @fw_run_transaction(%struct.fw_card* %56, i32 %57, i32 %58, i32 %59, i32 %60, i64 %63, i32* %64, i32 8)
  switch i32 %65, label %86 [
    i32 128, label %66
    i32 129, label %76
  ]

66:                                               ; preds = %47
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  store i32 %75, i32* %7, align 4
  br label %93

76:                                               ; preds = %47
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @be32_to_cpup(i32* %77)
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %7, align 4
  br label %93

83:                                               ; preds = %76
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @be32_to_cpup(i32* %84)
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %83, %47
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %24

90:                                               ; preds = %46, %24
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %81, %74
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
