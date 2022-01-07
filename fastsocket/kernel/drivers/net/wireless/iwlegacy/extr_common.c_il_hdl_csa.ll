; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_csa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.il_csa_notification }
%struct.il_csa_notification = type { i64, i32 }
%struct.il_rxon_cmd = type { i64 }

@S_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CSA notif: channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CSA notif (fail) : channel %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_hdl_csa(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_csa_notification*, align 8
  %7 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %8 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %9 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %8)
  store %struct.il_rx_pkt* %9, %struct.il_rx_pkt** %5, align 8
  %10 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %11 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.il_csa_notification* %12, %struct.il_csa_notification** %6, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 3
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast i8* %15 to %struct.il_rxon_cmd*
  store %struct.il_rxon_cmd* %16, %struct.il_rxon_cmd** %7, align 8
  %17 = load i32, i32* @S_CHANNEL_SWITCH_PENDING, align 4
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 2
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %64

23:                                               ; preds = %2
  %24 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %25 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %23
  %30 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %31 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %39 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %44 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %50 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @le16_to_cpu(i64 %51)
  %53 = call i32 @D_11H(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %55 = call i32 @il_chswitch_done(%struct.il_priv* %54, i32 1)
  br label %64

56:                                               ; preds = %29, %23
  %57 = load %struct.il_csa_notification*, %struct.il_csa_notification** %6, align 8
  %58 = getelementptr inbounds %struct.il_csa_notification, %struct.il_csa_notification* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @le16_to_cpu(i64 %59)
  %61 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = call i32 @il_chswitch_done(%struct.il_priv* %62, i32 0)
  br label %64

64:                                               ; preds = %22, %56, %37
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @D_11H(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @il_chswitch_done(%struct.il_priv*, i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
