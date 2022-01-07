; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_offload_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_offload_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32* }

@TXQ_CTRL = common dso_local global i64 0, align 8
@TXQ_OFLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_offload_tx(%struct.t3cdev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_qset*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %9 = call %struct.adapter* @tdev2adap(%struct.t3cdev* %8)
  store %struct.adapter* %9, %struct.adapter** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %6, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @queue_set(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i64 %15
  store %struct.sge_qset* %16, %struct.sge_qset** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @is_ctrl_pkt(%struct.sk_buff* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %24 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @TXQ_CTRL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @ctrl_xmit(%struct.adapter* %22, i32* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %33 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @TXQ_OFLD, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @ofld_xmit(%struct.adapter* %31, i32* %36, %struct.sk_buff* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.adapter* @tdev2adap(%struct.t3cdev*) #1

declare dso_local i64 @queue_set(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_ctrl_pkt(%struct.sk_buff*) #1

declare dso_local i32 @ctrl_xmit(%struct.adapter*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @ofld_xmit(%struct.adapter*, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
