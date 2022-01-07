; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mtqc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mtqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__*, i32, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RTTDCS = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_MTQC_VT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC_RT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC_8TC_8TQ = common dso_local global i32 0, align 4
@IXGBE_MTQC_4TC_4TQ = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_MTQC_32VF = common dso_local global i32 0, align 4
@IXGBE_MTQC_64VF = common dso_local global i32 0, align 4
@IXGBE_MTQC_64Q_1PB = common dso_local global i32 0, align 4
@IXGBE_MTQC = common dso_local global i32 0, align 4
@IXGBE_SECTXMINIFG = common dso_local global i32 0, align 4
@IXGBE_SECTX_DCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_mtqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_mtqc(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 3
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @netdev_get_num_tc(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %122

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load i32, i32* @IXGBE_RTTDCS, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load i32, i32* @IXGBE_RTTDCS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %21
  %39 = load i32, i32* @IXGBE_MTQC_VT_ENA, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %44 = load i32, i32* @IXGBE_MTQC_8TC_8TQ, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %76

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %53 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %75

57:                                               ; preds = %48
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* @RING_F_RSS, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @IXGBE_MTQC_32VF, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @IXGBE_MTQC_64VF, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %42
  br label %95

77:                                               ; preds = %21
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %82 = load i32, i32* @IXGBE_MTQC_8TC_8TQ, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %5, align 4
  br label %94

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %89 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @IXGBE_MTQC_64Q_1PB, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %80
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = load i32, i32* @IXGBE_MTQC, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %105 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @IXGBE_SECTX_DCB, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %110 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %102, %95
  %114 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %119 = load i32, i32* @IXGBE_RTTDCS, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %20
  ret void
}

declare dso_local i32 @netdev_get_num_tc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
