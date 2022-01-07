; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_rate_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_3__*, %struct.ixgbe_hw, %struct.ixgbe_ring_feature* }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_ring_feature = type { i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_RTTBCNRC_RF_INT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RF_INT_MASK = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RF_DEC_MASK = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RS_ENA = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRM = common dso_local global i32 0, align 4
@IXGBE_RTTDQSEL = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32)* @ixgbe_set_vf_rate_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_vf_rate_limit(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring_feature*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 3
  %14 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %13, align 8
  %15 = load i64, i64* @RING_F_VMDQ, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %14, i64 %15
  store %struct.ixgbe_ring_feature* %16, %struct.ixgbe_ring_feature** %5, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 2
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @IXGBE_RTTBCNRC_RF_INT_SHIFT, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @IXGBE_RTTBCNRC_RF_INT_MASK, align 4
  %40 = load i32, i32* @IXGBE_RTTBCNRC_RF_DEC_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @IXGBE_RTTBCNRC_RS_ENA, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %29, %2
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %60 [
    i32 129, label %52
    i32 128, label %56
  ]

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %54 = load i32, i32* @IXGBE_RTTBCNRM, align 4
  %55 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %54, i32 4)
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %58 = load i32, i32* @IXGBE_RTTBCNRM, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %58, i32 20)
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %56, %52
  %62 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %63 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @__ALIGN_MASK(i32 1, i32 %65)
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %85, %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %78 = load i32, i32* @IXGBE_RTTDQSEL, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %82 = load i32, i32* @IXGBE_RTTBCNRC, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %67

88:                                               ; preds = %67
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @__ALIGN_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
