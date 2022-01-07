; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_strip_drv_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_strip_drv_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i64 }
%struct.tx_mgmt_hdr = type { i32 }
%struct.tx_frame_hdr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unsupported EPID: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.sk_buff*)* @strip_drv_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip_drv_header(%struct.ath9k_htc_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_mgmt_hdr*, align 8
  %9 = alloca %struct.tx_frame_hdr*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(i32 %12)
  store %struct.ath_common* %13, %struct.ath_common** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %14)
  store %struct.ath9k_htc_tx_ctl* %15, %struct.ath9k_htc_tx_ctl** %6, align 8
  %16 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tx_mgmt_hdr*
  store %struct.tx_mgmt_hdr* %27, %struct.tx_mgmt_hdr** %8, align 8
  %28 = load %struct.tx_mgmt_hdr*, %struct.tx_mgmt_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @skb_pull(%struct.sk_buff* %31, i32 4)
  br label %92

33:                                               ; preds = %2
  %34 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %73, label %41

41:                                               ; preds = %33
  %42 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %73, label %49

49:                                               ; preds = %41
  %50 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %51 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %67 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %65, %57, %49, %41, %33
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.tx_frame_hdr*
  store %struct.tx_frame_hdr* %77, %struct.tx_frame_hdr** %9, align 8
  %78 = load %struct.tx_frame_hdr*, %struct.tx_frame_hdr** %9, align 8
  %79 = getelementptr inbounds %struct.tx_frame_hdr, %struct.tx_frame_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @skb_pull(%struct.sk_buff* %81, i32 4)
  br label %91

83:                                               ; preds = %65
  %84 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %85 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ath_err(%struct.ath_common* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %83, %73
  br label %92

92:                                               ; preds = %91, %23
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
