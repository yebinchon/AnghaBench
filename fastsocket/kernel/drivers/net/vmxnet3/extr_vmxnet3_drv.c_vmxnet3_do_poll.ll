; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_do_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*, i32)* @vmxnet3_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_do_poll(%struct.vmxnet3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %16 = call i32 @vmxnet3_process_events(%struct.vmxnet3_adapter* %15)
  br label %17

17:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %32 = call i32 @vmxnet3_tq_tx_complete(i32* %30, %struct.vmxnet3_adapter* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %18

36:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @vmxnet3_rq_rx_complete(i32* %49, %struct.vmxnet3_adapter* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmxnet3_process_events(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_tq_tx_complete(i32*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @vmxnet3_rq_rx_complete(i32*, %struct.vmxnet3_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
