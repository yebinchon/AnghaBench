; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_pio_tx_write_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_pio_tx_write_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i64, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.b43legacy_pio_txpacket = type { i32 }
%union.txhdr_union = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_pioqueue*, %struct.sk_buff*, %struct.b43legacy_pio_txpacket*, i64)* @pio_tx_write_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_tx_write_fragment(%struct.b43legacy_pioqueue* %0, %struct.sk_buff* %1, %struct.b43legacy_pio_txpacket* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_pioqueue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.b43legacy_pio_txpacket*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.txhdr_union, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.b43legacy_pio_txpacket* %2, %struct.b43legacy_pio_txpacket** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %11, align 8
  %14 = bitcast %union.txhdr_union* %10 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @B43legacy_WARN_ON(i32 %20)
  %22 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %23 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @IEEE80211_SKB_CB(%struct.sk_buff* %32)
  %34 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %35 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %8, align 8
  %36 = call i32 @generate_cookie(%struct.b43legacy_pioqueue* %34, %struct.b43legacy_pio_txpacket* %35)
  %37 = call i32 @b43legacy_generate_txhdr(i32 %24, i32* %25, i64 %28, i64 %31, i32 %33, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %4
  %43 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %44 = call i32 @tx_start(%struct.b43legacy_pioqueue* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %52 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @tx_data(%struct.b43legacy_pioqueue* %59, i32* %60, i32* %64, i32 %65)
  %67 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @tx_complete(%struct.b43legacy_pioqueue* %67, %struct.sk_buff* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %58, %40
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @b43legacy_generate_txhdr(i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @generate_cookie(%struct.b43legacy_pioqueue*, %struct.b43legacy_pio_txpacket*) #1

declare dso_local i32 @tx_start(%struct.b43legacy_pioqueue*) #1

declare dso_local i32 @tx_data(%struct.b43legacy_pioqueue*, i32*, i32*, i32) #1

declare dso_local i32 @tx_complete(%struct.b43legacy_pioqueue*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
