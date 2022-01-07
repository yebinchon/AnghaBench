; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*, i8**, i32, i32)* @emac_net_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_net_tx_complete(%struct.emac_priv* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.emac_priv*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %15 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @netif_queue_stopped(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i1 [ false, %4 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %26 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_start_queue(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %30
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.sk_buff*
  store %struct.sk_buff* %40, %struct.sk_buff** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = icmp eq %struct.sk_buff* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %46 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.emac_priv*, %struct.emac_priv** %5, align 8
  %54 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %44, %43
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %30

65:                                               ; preds = %30
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
