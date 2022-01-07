; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_VXGE_COMPLETE_VPATH_TX.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_VXGE_COMPLETE_VPATH_TX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_fifo = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NR_SKB_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxge_fifo*)* @VXGE_COMPLETE_VPATH_TX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VXGE_COMPLETE_VPATH_TX(%struct.vxge_fifo* %0) #0 {
  %2 = alloca %struct.vxge_fifo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca [128 x %struct.sk_buff*], align 16
  %7 = alloca i32, align 4
  store %struct.vxge_fifo* %0, %struct.vxge_fifo** %2, align 8
  store i64 0, i64* %3, align 8
  store %struct.sk_buff** null, %struct.sk_buff*** %4, align 8
  br label %8

8:                                                ; preds = %38, %1
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [128 x %struct.sk_buff*], [128 x %struct.sk_buff*]* %6, i64 0, i64 0
  store %struct.sk_buff** %9, %struct.sk_buff*** %4, align 8
  %10 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %11 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @spin_trylock_irqsave(i32* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %17 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vxge_hw_vpath_poll_tx(i32 %18, %struct.sk_buff*** %4, i32 128, i32* %7)
  %20 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %21 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %15, %8
  %25 = getelementptr inbounds [128 x %struct.sk_buff*], [128 x %struct.sk_buff*]* %6, i64 0, i64 0
  store %struct.sk_buff** %25, %struct.sk_buff*** %5, align 8
  br label %26

26:                                               ; preds = %34, %24
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %29 = icmp ne %struct.sk_buff** %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  %33 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %30
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i32 1
  store %struct.sk_buff** %36, %struct.sk_buff*** %5, align 8
  br label %26

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %8, label %41

41:                                               ; preds = %38
  ret void
}

declare dso_local i64 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @vxge_hw_vpath_poll_tx(i32, %struct.sk_buff***, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
