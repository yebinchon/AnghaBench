; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_cmd_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_cmd_hdr = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*, i32, i32)* @ath9k_wmi_cmd_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_wmi_cmd_issue(%struct.wmi* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_cmd_hdr*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i64 @skb_push(%struct.sk_buff* %10, i32 16)
  %12 = inttoptr i64 %11 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %12, %struct.wmi_cmd_hdr** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %9, align 8
  %16 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.wmi*, %struct.wmi** %5, align 8
  %18 = getelementptr inbounds %struct.wmi, %struct.wmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call i8* @cpu_to_be16(i32 %20)
  %22 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %9, align 8
  %23 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.wmi*, %struct.wmi** %5, align 8
  %25 = getelementptr inbounds %struct.wmi, %struct.wmi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load %struct.wmi*, %struct.wmi** %5, align 8
  %29 = getelementptr inbounds %struct.wmi, %struct.wmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htc_send_epid(i32 %26, %struct.sk_buff* %27, i32 %30)
  ret i32 %31
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @htc_send_epid(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
