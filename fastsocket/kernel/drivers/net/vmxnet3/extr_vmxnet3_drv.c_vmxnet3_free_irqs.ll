; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_free_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32*, %struct.TYPE_4__*, i32*, i32, i32*, %struct.vmxnet3_intr }
%struct.TYPE_4__ = type { i32 }
%struct.vmxnet3_intr = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VMXNET3_IT_AUTO = common dso_local global i32 0, align 4
@VMXNET3_INTR_BUDDYSHARE = common dso_local global i32 0, align 4
@VMXNET3_INTR_TXSHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_free_irqs(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca %struct.vmxnet3_intr*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %4 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %4, i32 0, i32 7
  store %struct.vmxnet3_intr* %5, %struct.vmxnet3_intr** %3, align 8
  %6 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VMXNET3_IT_AUTO, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ true, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %43 [
    i32 129, label %23
    i32 130, label %33
  ]

23:                                               ; preds = %16
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free_irq(i32 %28, i32* %31)
  br label %45

33:                                               ; preds = %16
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @free_irq(i32 %38, i32* %41)
  br label %45

43:                                               ; preds = %16
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %33, %23
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
