; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.Vmxnet3_RxCompDesc = type { i32 }
%struct.vmxnet3_rx_ctx = type { i32* }
%struct.vmxnet3_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_rx_queue*, %struct.Vmxnet3_RxCompDesc*, %struct.vmxnet3_rx_ctx*, %struct.vmxnet3_adapter*)* @vmxnet3_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rx_error(%struct.vmxnet3_rx_queue* %0, %struct.Vmxnet3_RxCompDesc* %1, %struct.vmxnet3_rx_ctx* %2, %struct.vmxnet3_adapter* %3) #0 {
  %5 = alloca %struct.vmxnet3_rx_queue*, align 8
  %6 = alloca %struct.Vmxnet3_RxCompDesc*, align 8
  %7 = alloca %struct.vmxnet3_rx_ctx*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %5, align 8
  store %struct.Vmxnet3_RxCompDesc* %1, %struct.Vmxnet3_RxCompDesc** %6, align 8
  store %struct.vmxnet3_rx_ctx* %2, %struct.vmxnet3_rx_ctx** %7, align 8
  store %struct.vmxnet3_adapter* %3, %struct.vmxnet3_adapter** %8, align 8
  %9 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.Vmxnet3_RxCompDesc*, %struct.Vmxnet3_RxCompDesc** %6, align 8
  %15 = getelementptr inbounds %struct.Vmxnet3_RxCompDesc, %struct.Vmxnet3_RxCompDesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %5, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.vmxnet3_rx_ctx*, %struct.vmxnet3_rx_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_rx_ctx, %struct.vmxnet3_rx_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.vmxnet3_rx_ctx*, %struct.vmxnet3_rx_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_rx_ctx, %struct.vmxnet3_rx_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dev_kfree_skb_irq(i32* %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.vmxnet3_rx_ctx*, %struct.vmxnet3_rx_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_rx_ctx, %struct.vmxnet3_rx_ctx* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
