; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_tx_birq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_tx_birq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*)* @tx_birq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_birq(%struct.bchannel* %0) #0 {
  %2 = alloca %struct.bchannel*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %2, align 8
  %3 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %4 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %9 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %12 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %19 = call i32 @hfcpci_fill_fifo(%struct.bchannel* %18)
  br label %38

20:                                               ; preds = %7, %1
  %21 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %22 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %27 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @dev_kfree_skb(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %32 = call i64 @get_next_bframe(%struct.bchannel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %36 = call i32 @hfcpci_fill_fifo(%struct.bchannel* %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32 @hfcpci_fill_fifo(%struct.bchannel*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_2__*) #1

declare dso_local i64 @get_next_bframe(%struct.bchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
