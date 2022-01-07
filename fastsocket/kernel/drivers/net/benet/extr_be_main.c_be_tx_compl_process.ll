; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_tx_compl_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_tx_compl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_tx_obj = type { %struct.sk_buff**, %struct.be_queue_info }
%struct.sk_buff = type { i32 }
%struct.be_queue_info = type { i64 }
%struct.be_eth_wrb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.be_adapter*, %struct.be_tx_obj*, i64)* @be_tx_compl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @be_tx_compl_process(%struct.be_adapter* %0, %struct.be_tx_obj* %1, i64 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_tx_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  %8 = alloca %struct.be_eth_wrb*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %15 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %14, i32 0, i32 1
  store %struct.be_queue_info* %15, %struct.be_queue_info** %7, align 8
  %16 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %17 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %16, i32 0, i32 0
  %18 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  store %struct.sk_buff** %18, %struct.sk_buff*** %9, align 8
  store i64 1, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %20 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %21 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %19, i64 %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %31 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %32 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %30, i64 %33
  store %struct.sk_buff* null, %struct.sk_buff** %34, align 8
  %35 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %36 = call i32 @queue_tail_inc(%struct.be_queue_info* %35)
  br label %37

37:                                               ; preds = %62, %3
  %38 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %39 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %42 = call %struct.be_eth_wrb* @queue_tail_node(%struct.be_queue_info* %41)
  store %struct.be_eth_wrb* %42, %struct.be_eth_wrb** %8, align 8
  %43 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = call i64 @skb_headlen(%struct.sk_buff* %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %37
  %55 = phi i1 [ false, %37 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @unmap_tx_frag(i32* %46, %struct.be_eth_wrb* %47, i32 %56)
  store i32 0, i32* %13, align 4
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  %60 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %61 = call i32 @queue_tail_inc(%struct.be_queue_info* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %37, label %66

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i64, i64* %12, align 8
  ret i64 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @queue_tail_inc(%struct.be_queue_info*) #1

declare dso_local %struct.be_eth_wrb* @queue_tail_node(%struct.be_queue_info*) #1

declare dso_local i32 @unmap_tx_frag(i32*, %struct.be_eth_wrb*, i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
