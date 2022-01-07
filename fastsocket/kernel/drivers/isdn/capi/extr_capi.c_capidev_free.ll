; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capi.c_capidev_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capi.c_capidev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capidev = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@capidev_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capidev*)* @capidev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capidev_free(%struct.capidev* %0) #0 {
  %2 = alloca %struct.capidev*, align 8
  %3 = alloca i64, align 8
  store %struct.capidev* %0, %struct.capidev** %2, align 8
  %4 = load %struct.capidev*, %struct.capidev** %2, align 8
  %5 = getelementptr inbounds %struct.capidev, %struct.capidev* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.capidev*, %struct.capidev** %2, align 8
  %11 = getelementptr inbounds %struct.capidev, %struct.capidev* %10, i32 0, i32 3
  %12 = call i32 @capi20_release(%struct.TYPE_2__* %11)
  %13 = load %struct.capidev*, %struct.capidev** %2, align 8
  %14 = getelementptr inbounds %struct.capidev, %struct.capidev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.capidev*, %struct.capidev** %2, align 8
  %18 = getelementptr inbounds %struct.capidev, %struct.capidev* %17, i32 0, i32 2
  %19 = call i32 @skb_queue_purge(i32* %18)
  %20 = load %struct.capidev*, %struct.capidev** %2, align 8
  %21 = getelementptr inbounds %struct.capidev, %struct.capidev* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.capidev*, %struct.capidev** %2, align 8
  %24 = call i32 @capincci_free(%struct.capidev* %23, i32 -1)
  %25 = load %struct.capidev*, %struct.capidev** %2, align 8
  %26 = getelementptr inbounds %struct.capidev, %struct.capidev* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @write_lock_irqsave(i32* @capidev_list_lock, i64 %28)
  %30 = load %struct.capidev*, %struct.capidev** %2, align 8
  %31 = getelementptr inbounds %struct.capidev, %struct.capidev* %30, i32 0, i32 0
  %32 = call i32 @list_del(i32* %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @write_unlock_irqrestore(i32* @capidev_list_lock, i64 %33)
  %35 = load %struct.capidev*, %struct.capidev** %2, align 8
  %36 = call i32 @kfree(%struct.capidev* %35)
  ret void
}

declare dso_local i32 @capi20_release(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @capincci_free(%struct.capidev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.capidev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
