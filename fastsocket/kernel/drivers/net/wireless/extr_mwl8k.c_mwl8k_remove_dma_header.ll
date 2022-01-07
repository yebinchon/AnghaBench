; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_remove_dma_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_remove_dma_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.mwl8k_dma_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @mwl8k_remove_dma_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_remove_dma_header(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_dma_data*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mwl8k_dma_data*
  store %struct.mwl8k_dma_data* %10, %struct.mwl8k_dma_data** %5, align 8
  %11 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %12 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ieee80211_hdrlen(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %21 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ieee80211_is_data_qos(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %28 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %33 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %32, i32 0, i32 1
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 2
  %36 = call i32 @memmove(i32 %31, %struct.TYPE_2__* %33, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %39 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  store i32 %37, i32* %43, align 4
  br label %54

44:                                               ; preds = %19
  %45 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %46 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %5, align 8
  %51 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %50, i32 0, i32 1
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @memmove(i32 %49, %struct.TYPE_2__* %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %26
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 8
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @skb_pull(%struct.sk_buff* %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @memmove(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
