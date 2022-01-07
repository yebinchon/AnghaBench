; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capi.c_capidev_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capi.c_capidev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capidev = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@capidev_list_lock = common dso_local global i32 0, align 4
@capidev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.capidev* ()* @capidev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.capidev* @capidev_alloc() #0 {
  %1 = alloca %struct.capidev*, align 8
  %2 = alloca %struct.capidev*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.capidev* @kzalloc(i32 16, i32 %4)
  store %struct.capidev* %5, %struct.capidev** %2, align 8
  %6 = load %struct.capidev*, %struct.capidev** %2, align 8
  %7 = icmp ne %struct.capidev* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.capidev* null, %struct.capidev** %1, align 8
  br label %27

9:                                                ; preds = %0
  %10 = load %struct.capidev*, %struct.capidev** %2, align 8
  %11 = getelementptr inbounds %struct.capidev, %struct.capidev* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.capidev*, %struct.capidev** %2, align 8
  %14 = getelementptr inbounds %struct.capidev, %struct.capidev* %13, i32 0, i32 2
  %15 = call i32 @skb_queue_head_init(i32* %14)
  %16 = load %struct.capidev*, %struct.capidev** %2, align 8
  %17 = getelementptr inbounds %struct.capidev, %struct.capidev* %16, i32 0, i32 1
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @write_lock_irqsave(i32* @capidev_list_lock, i64 %19)
  %21 = load %struct.capidev*, %struct.capidev** %2, align 8
  %22 = getelementptr inbounds %struct.capidev, %struct.capidev* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %22, i32* @capidev_list)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @write_unlock_irqrestore(i32* @capidev_list_lock, i64 %24)
  %26 = load %struct.capidev*, %struct.capidev** %2, align 8
  store %struct.capidev* %26, %struct.capidev** %1, align 8
  br label %27

27:                                               ; preds = %9, %8
  %28 = load %struct.capidev*, %struct.capidev** %1, align 8
  ret %struct.capidev* %28
}

declare dso_local %struct.capidev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
