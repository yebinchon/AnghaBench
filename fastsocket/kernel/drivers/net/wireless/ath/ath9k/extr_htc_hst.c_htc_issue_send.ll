; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_issue_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_issue_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.TYPE_2__*, %struct.htc_endpoint* }
%struct.TYPE_2__ = type { i32 (i32, i32, %struct.sk_buff*)* }
%struct.htc_endpoint = type { i32 }
%struct.sk_buff = type { i32 }
%struct.htc_frame_hdr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.sk_buff*, i32, i64, i64)* @htc_issue_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_issue_send(%struct.htc_target* %0, %struct.sk_buff* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.htc_target*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.htc_frame_hdr*, align 8
  %12 = alloca %struct.htc_endpoint*, align 8
  %13 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.htc_target*, %struct.htc_target** %6, align 8
  %15 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %14, i32 0, i32 2
  %16 = load %struct.htc_endpoint*, %struct.htc_endpoint** %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %16, i64 %17
  store %struct.htc_endpoint* %18, %struct.htc_endpoint** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i64 @skb_push(%struct.sk_buff* %19, i32 24)
  %21 = inttoptr i64 %20 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %21, %struct.htc_frame_hdr** %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %11, align 8
  %24 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %11, align 8
  %31 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.htc_target*, %struct.htc_target** %6, align 8
  %33 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %35, align 8
  %37 = load %struct.htc_target*, %struct.htc_target** %6, align 8
  %38 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %41 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 %36(i32 %39, i32 %42, %struct.sk_buff* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  ret i32 %45
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
