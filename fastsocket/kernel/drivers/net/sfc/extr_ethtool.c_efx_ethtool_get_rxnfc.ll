; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32, i32, i32 }
%struct.efx_nic = type { i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@EFX_REV_FALCON_B0 = common dso_local global i32 0, align 4
@EFX_REV_SIENA_A0 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_LOC_SPECIAL = common dso_local global i32 0, align 4
@EFX_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i8*)* @efx_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.efx_nic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %14)
  store %struct.efx_nic* %15, %struct.efx_nic** %9, align 8
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %140 [
    i32 136, label %19
    i32 137, label %25
    i32 139, label %75
    i32 138, label %99
    i32 140, label %111
  ]

19:                                               ; preds = %3
  %20 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %143

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %65 [
    i32 131, label %31
    i32 129, label %39
    i32 133, label %39
    i32 142, label %39
    i32 135, label %39
    i32 130, label %48
    i32 128, label %56
    i32 132, label %56
    i32 141, label %56
    i32 134, label %56
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* @RXH_L4_B_0_1, align 4
  %33 = load i32, i32* @RXH_L4_B_2_3, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %25, %25, %25, %25, %31
  %40 = load i32, i32* @RXH_IP_SRC, align 4
  %41 = load i32, i32* @RXH_IP_DST, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @EFX_REV_FALCON_B0, align 4
  store i32 %47, i32* %10, align 4
  br label %66

48:                                               ; preds = %25
  %49 = load i32, i32* @RXH_L4_B_0_1, align 4
  %50 = load i32, i32* @RXH_L4_B_2_3, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %25, %25, %25, %25, %48
  %57 = load i32, i32* @RXH_IP_SRC, align 4
  %58 = load i32, i32* @RXH_IP_DST, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @EFX_REV_SIENA_A0, align 4
  store i32 %64, i32* %10, align 4
  br label %66

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65, %56, %39
  %67 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %68 = call i32 @efx_nic_rev(%struct.efx_nic* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %73 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  store i32 0, i32* %4, align 4
  br label %143

75:                                               ; preds = %3
  %76 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %77 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %80 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %82 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %143

88:                                               ; preds = %75
  %89 = load i32, i32* @RX_CLS_LOC_SPECIAL, align 4
  %90 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %91 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %95 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %96 = call i32 @efx_filter_count_rx_used(%struct.efx_nic* %94, i32 %95)
  %97 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %98 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %143

99:                                               ; preds = %3
  %100 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %101 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %100)
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %143

106:                                              ; preds = %99
  %107 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %108, i32 0, i32 3
  %110 = call i32 @efx_ethtool_get_class_rule(%struct.efx_nic* %107, i32* %109)
  store i32 %110, i32* %4, align 4
  br label %143

111:                                              ; preds = %3
  %112 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %113 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %116 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %118 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @EOPNOTSUPP, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %143

124:                                              ; preds = %111
  %125 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %126 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %129 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @efx_filter_get_rx_ids(%struct.efx_nic* %125, i32 %126, i32* %127, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %143

136:                                              ; preds = %124
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %139 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %4, align 4
  br label %143

140:                                              ; preds = %3
  %141 = load i32, i32* @EOPNOTSUPP, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %136, %134, %121, %106, %103, %88, %85, %74, %19
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i8* @efx_filter_get_rx_id_limit(%struct.efx_nic*) #1

declare dso_local i32 @efx_filter_count_rx_used(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ethtool_get_class_rule(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_filter_get_rx_ids(%struct.efx_nic*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
