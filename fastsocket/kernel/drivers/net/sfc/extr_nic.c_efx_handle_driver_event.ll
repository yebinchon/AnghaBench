; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_driver_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_driver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32 }

@FSF_AZ_DRIVER_EV_SUBCODE = common dso_local global i32 0, align 4
@FSF_AZ_DRIVER_EV_SUBDATA = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"channel %d TXQ %d flushed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"channel %d RXQ %d flushed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"channel %d EVQ %d initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"channel %d SRAM update done\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"channel %d RXQ %d wakeup event\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"channel %d RX queue %d timer expired\0A\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"channel %d seen DRIVER RX_RESET event. Resetting.\0A\00", align 1
@RESET_TYPE_RX_RECOVERY = common dso_local global i32 0, align 4
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"RX DMA Q %d reports descriptor fetch error. RX Q %d is disabled.\0A\00", align 1
@RESET_TYPE_RX_DESC_FETCH = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"TX DMA Q %d reports descriptor fetch error. TX Q %d is disabled.\0A\00", align 1
@RESET_TYPE_TX_DESC_FETCH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"channel %d unknown driver event code %d data %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, i32*)* @efx_handle_driver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_handle_driver_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBCODE, align 4
  %14 = call i32 @EFX_QWORD_FIELD(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %18 = call i32 @EFX_QWORD_FIELD(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %163 [
    i32 131, label %20
    i32 134, label %37
    i32 135, label %54
    i32 133, label %65
    i32 130, label %75
    i32 132, label %86
    i32 136, label %97
    i32 129, label %121
    i32 128, label %142
  ]

20:                                               ; preds = %2
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %27 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @efx_handle_tx_flush_done(%struct.efx_nic* %31, i32* %32)
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @efx_sriov_tx_flush_done(%struct.efx_nic* %34, i32* %35)
  br label %175

37:                                               ; preds = %2
  %38 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %39 = load i32, i32* @hw, align 4
  %40 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %44 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @efx_handle_rx_flush_done(%struct.efx_nic* %48, i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @efx_sriov_rx_flush_done(%struct.efx_nic* %51, i32* %52)
  br label %175

54:                                               ; preds = %2
  %55 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %56 = load i32, i32* @hw, align 4
  %57 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %61 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @netif_dbg(%struct.efx_nic* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  br label %175

65:                                               ; preds = %2
  %66 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %67 = load i32, i32* @hw, align 4
  %68 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %72 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %175

75:                                               ; preds = %2
  %76 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %77 = load i32, i32* @hw, align 4
  %78 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %79 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %82 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %84)
  br label %175

86:                                               ; preds = %2
  %87 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %88 = load i32, i32* @hw, align 4
  %89 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %90 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %93 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %95)
  br label %175

97:                                               ; preds = %2
  %98 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %99 = load i32, i32* @rx_err, align 4
  %100 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %101 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %104 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %98, i32 %99, i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %108 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %107, i32 0, i32 1
  %109 = call i32 @atomic_inc(i32* %108)
  %110 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %111 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %112 = call i32 @EFX_WORKAROUND_6555(%struct.efx_nic* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = load i32, i32* @RESET_TYPE_RX_RECOVERY, align 4
  br label %118

116:                                              ; preds = %97
  %117 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @efx_schedule_reset(%struct.efx_nic* %110, i32 %119)
  br label %175

121:                                              ; preds = %2
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @EFX_VI_BASE, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %127 = load i32, i32* @rx_err, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %135 = load i32, i32* @RESET_TYPE_RX_DESC_FETCH, align 4
  %136 = call i32 @efx_schedule_reset(%struct.efx_nic* %134, i32 %135)
  br label %141

137:                                              ; preds = %121
  %138 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @efx_sriov_desc_fetch_err(%struct.efx_nic* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %125
  br label %175

142:                                              ; preds = %2
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @EFX_VI_BASE, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %148 = load i32, i32* @tx_err, align 4
  %149 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %150 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %147, i32 %148, i32 %151, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %156 = load i32, i32* @RESET_TYPE_TX_DESC_FETCH, align 4
  %157 = call i32 @efx_schedule_reset(%struct.efx_nic* %155, i32 %156)
  br label %162

158:                                              ; preds = %142
  %159 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @efx_sriov_desc_fetch_err(%struct.efx_nic* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %146
  br label %175

163:                                              ; preds = %2
  %164 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %165 = load i32, i32* @hw, align 4
  %166 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %167 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %170 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_vdbg(%struct.efx_nic* %164, i32 %165, i32 %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %163, %162, %141, %118, %86, %75, %65, %54, %37, %20
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @efx_handle_tx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_sriov_tx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_handle_rx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_sriov_rx_flush_done(%struct.efx_nic*, i32*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @EFX_WORKAROUND_6555(%struct.efx_nic*) #1

declare dso_local i32 @efx_sriov_desc_fetch_err(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
