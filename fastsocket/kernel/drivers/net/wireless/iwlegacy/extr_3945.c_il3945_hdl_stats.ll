; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hdl_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hdl_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Statistics notification received (%d vs %d).\0A\00", align 1
@IL_RX_FRAME_SIZE_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_hdl_stats(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %6 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %7 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %6)
  store %struct.il_rx_pkt* %7, %struct.il_rx_pkt** %5, align 8
  %8 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %9 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = load i32, i32* @IL_RX_FRAME_SIZE_MSK, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @D_RX(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 4, i32 %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %17, i32 %21, i32 4)
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @D_RX(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
