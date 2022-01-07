; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_negotiate_api_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_negotiate_api_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_VF_API_NEGOTIATE = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_negotiate_api_version(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IXGBE_VF_API_NEGOTIATE, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.0*
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %21 = call i32 %17(%struct.ixgbe_hw.0* %19, i32* %20, i32 3)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.ixgbe_hw.1*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)** %28, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = bitcast %struct.ixgbe_hw* %30 to %struct.ixgbe_hw.1*
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %33 = call i32 %29(%struct.ixgbe_hw.1* %31, i32* %32, i32 3)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %24, %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXGBE_VF_API_NEGOTIATE, align 4
  %46 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %57

53:                                               ; preds = %37
  %54 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
