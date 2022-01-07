; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_rsp_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_rsp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i64, i32, i32* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi*, %struct.sk_buff*)* @ath9k_wmi_rsp_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_wmi_rsp_callback(%struct.wmi* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wmi*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.wmi* %0, %struct.wmi** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call i32 @skb_pull(%struct.sk_buff* %5, i32 4)
  %7 = load %struct.wmi*, %struct.wmi** %3, align 8
  %8 = getelementptr inbounds %struct.wmi, %struct.wmi* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.wmi*, %struct.wmi** %3, align 8
  %13 = getelementptr inbounds %struct.wmi, %struct.wmi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.wmi*, %struct.wmi** %3, align 8
  %18 = getelementptr inbounds %struct.wmi, %struct.wmi* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wmi*, %struct.wmi** %3, align 8
  %24 = getelementptr inbounds %struct.wmi, %struct.wmi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @memcpy(i32* %19, i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %16, %11, %2
  %28 = load %struct.wmi*, %struct.wmi** %3, align 8
  %29 = getelementptr inbounds %struct.wmi, %struct.wmi* %28, i32 0, i32 1
  %30 = call i32 @complete(i32* %29)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
