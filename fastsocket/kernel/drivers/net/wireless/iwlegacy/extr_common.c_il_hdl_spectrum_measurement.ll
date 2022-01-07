; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_spectrum_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_spectrum_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.il_spectrum_notification }
%struct.il_spectrum_notification = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Spectrum Measure Notification: Start\0A\00", align 1
@MEASUREMENT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_hdl_spectrum_measurement(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_spectrum_notification*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %7 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %8 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %7)
  store %struct.il_rx_pkt* %8, %struct.il_rx_pkt** %5, align 8
  %9 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %10 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.il_spectrum_notification* %11, %struct.il_spectrum_notification** %6, align 8
  %12 = load %struct.il_spectrum_notification*, %struct.il_spectrum_notification** %6, align 8
  %13 = getelementptr inbounds %struct.il_spectrum_notification, %struct.il_spectrum_notification* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @D_11H(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 1
  %21 = load %struct.il_spectrum_notification*, %struct.il_spectrum_notification** %6, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.il_spectrum_notification* %21, i32 4)
  %23 = load i32, i32* @MEASUREMENT_READY, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %18, %16
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @D_11H(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.il_spectrum_notification*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
