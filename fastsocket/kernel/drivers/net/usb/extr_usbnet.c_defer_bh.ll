; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_defer_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_defer_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.skb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*, %struct.sk_buff_head*, i32)* @defer_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defer_bh(%struct.usbnet* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2, i32 %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.skb_data*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.skb_data*
  store %struct.skb_data* %15, %struct.skb_data** %11, align 8
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.skb_data*, %struct.skb_data** %11, align 8
  %21 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.skb_data*, %struct.skb_data** %11, align 8
  %25 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = call i32 @__skb_unlink(%struct.sk_buff* %26, %struct.sk_buff_head* %27)
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %37, %struct.sk_buff* %38)
  %40 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %4
  %46 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 1
  %48 = call i32 @tasklet_schedule(i32* %47)
  br label %49

49:                                               ; preds = %45, %4
  %50 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
