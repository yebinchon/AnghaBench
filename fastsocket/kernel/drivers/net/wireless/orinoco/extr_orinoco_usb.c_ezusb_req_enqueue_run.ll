; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_req_enqueue_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_req_enqueue_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ezusb_priv = type { i32, i32 }
%struct.request_context = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EZUSB_CTX_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ezusb_priv*, %struct.request_context*)* @ezusb_req_enqueue_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_req_enqueue_run(%struct.ezusb_priv* %0, %struct.request_context* %1) #0 {
  %3 = alloca %struct.ezusb_priv*, align 8
  %4 = alloca %struct.request_context*, align 8
  %5 = alloca i64, align 8
  store %struct.ezusb_priv* %0, %struct.ezusb_priv** %3, align 8
  store %struct.request_context* %1, %struct.request_context** %4, align 8
  %6 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.request_context*, %struct.request_context** %4, align 8
  %11 = getelementptr inbounds %struct.request_context, %struct.request_context* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.request_context*, %struct.request_context** %4, align 8
  %23 = getelementptr inbounds %struct.request_context, %struct.request_context* %22, i32 0, i32 2
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.request_context*, %struct.request_context** %4, align 8
  %26 = getelementptr inbounds %struct.request_context, %struct.request_context* %25, i32 0, i32 1
  %27 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @EZUSB_CTX_QUEUED, align 4
  %35 = load %struct.request_context*, %struct.request_context** %4, align 8
  %36 = getelementptr inbounds %struct.request_context, %struct.request_context* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %38 = call i32 @ezusb_req_queue_run(%struct.ezusb_priv* %37)
  br label %39

39:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ezusb_req_queue_run(%struct.ezusb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
