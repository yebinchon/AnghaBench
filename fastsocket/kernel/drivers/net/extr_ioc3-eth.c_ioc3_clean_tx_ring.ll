; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i64, i64, %struct.TYPE_2__*, %struct.sk_buff** }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_clean_tx_ring(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  %9 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %10 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %9, i32 0, i32 3
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %11, i64 %13
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %20 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %19, i32 0, i32 3
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %21, i64 %23
  store %struct.sk_buff* null, %struct.sk_buff** %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %18, %8
  %28 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %29 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %40 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %42 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
