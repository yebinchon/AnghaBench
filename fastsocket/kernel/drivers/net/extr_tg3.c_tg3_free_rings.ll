; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_free_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.tg3_napi* }
%struct.tg3_napi = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TG3_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_free_rings(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %61, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %7
  %14 = load %struct.tg3*, %struct.tg3** %2, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load %struct.tg3_napi*, %struct.tg3_napi** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %16, i64 %18
  store %struct.tg3_napi* %19, %struct.tg3_napi** %5, align 8
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %22 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %21, i32 0, i32 1
  %23 = call i32 @tg3_rx_prodring_free(%struct.tg3* %20, i32* %22)
  %24 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %25 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %13
  br label %61

29:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TG3_TX_RING_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %36 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %57

46:                                               ; preds = %34
  %47 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @tg3_tx_skb_unmap(%struct.tg3_napi* %47, i32 %48, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %46, %45
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %30

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %7

64:                                               ; preds = %7
  ret void
}

declare dso_local i32 @tg3_rx_prodring_free(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_tx_skb_unmap(%struct.tg3_napi*, i32, i64) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
