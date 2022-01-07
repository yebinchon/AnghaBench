; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 (...)* }
%struct.TYPE_4__ = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.request = type { i32 }

@IRQ_RX = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mbox: Illegal seq bit!(%08x)\0A\00", align 1
@OMAP_MBOX_TYPE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*)* @__mbox_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mbox_rx_interrupt(%struct.omap_mbox* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %2, align 8
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %7 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %5, align 8
  %11 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %12 = load i32, i32* @IRQ_RX, align 4
  %13 = call i32 @disable_mbox_irq(%struct.omap_mbox* %11, i32 %12)
  br label %14

14:                                               ; preds = %66, %1
  %15 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %16 = call i32 @mbox_fifo_empty(%struct.omap_mbox* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %67

19:                                               ; preds = %14
  %20 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %21 = load i32, i32* @WRITE, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.request* @blk_get_request(%struct.request_queue* %20, i32 %21, i32 %22)
  store %struct.request* %23, %struct.request** %3, align 8
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = icmp ne %struct.request* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %74

31:                                               ; preds = %19
  %32 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %33 = call i64 @mbox_fifo_read(%struct.omap_mbox* %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @mbox_seq_test(%struct.omap_mbox* %34, i64 %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %43 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %42, i32 0, i32 2
  %44 = load i32 (...)*, i32 (...)** %43, align 8
  %45 = icmp ne i32 (...)* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %48 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %47, i32 0, i32 2
  %49 = load i32 (...)*, i32 (...)** %48, align 8
  %50 = call i32 (...) %49()
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @blk_insert_request(%struct.request_queue* %53, %struct.request* %54, i32 0, i8* %56)
  %58 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %59 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OMAP_MBOX_TYPE1, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %67

66:                                               ; preds = %52
  br label %14

67:                                               ; preds = %65, %14
  %68 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %69 = load i32, i32* @IRQ_RX, align 4
  %70 = call i32 @ack_mbox_irq(%struct.omap_mbox* %68, i32 %69)
  %71 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %72 = load i32, i32* @IRQ_RX, align 4
  %73 = call i32 @enable_mbox_irq(%struct.omap_mbox* %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %30
  %75 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %76 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @schedule_work(i32* %78)
  ret void
}

declare dso_local i32 @disable_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @mbox_fifo_empty(%struct.omap_mbox*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mbox_fifo_read(%struct.omap_mbox*) #1

declare dso_local i32 @mbox_seq_test(%struct.omap_mbox*, i64) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @blk_insert_request(%struct.request_queue*, %struct.request*, i32, i8*) #1

declare dso_local i32 @ack_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @enable_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
