; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_msg_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.omap_msg_tx_data = type { i8*, i32 }
%struct.request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@omap_msg_tx_end_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_mbox_msg_send(%struct.omap_mbox* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.omap_msg_tx_data*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.request_queue*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %12 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %10, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.omap_msg_tx_data* @kmalloc(i32 16, i32 %16)
  store %struct.omap_msg_tx_data* %17, %struct.omap_msg_tx_data** %8, align 8
  %18 = load %struct.omap_msg_tx_data*, %struct.omap_msg_tx_data** %8, align 8
  %19 = icmp ne %struct.omap_msg_tx_data* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %29 = load i32, i32* @WRITE, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.request* @blk_get_request(%struct.request_queue* %28, i32 %29, i32 %30)
  store %struct.request* %31, %struct.request** %9, align 8
  %32 = load %struct.request*, %struct.request** %9, align 8
  %33 = icmp ne %struct.request* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.omap_msg_tx_data*, %struct.omap_msg_tx_data** %8, align 8
  %40 = call i32 @kfree(%struct.omap_msg_tx_data* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.omap_msg_tx_data*, %struct.omap_msg_tx_data** %8, align 8
  %46 = getelementptr inbounds %struct.omap_msg_tx_data, %struct.omap_msg_tx_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.omap_msg_tx_data*, %struct.omap_msg_tx_data** %8, align 8
  %49 = getelementptr inbounds %struct.omap_msg_tx_data, %struct.omap_msg_tx_data* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @omap_msg_tx_end_io, align 4
  %51 = load %struct.request*, %struct.request** %9, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %54 = load %struct.request*, %struct.request** %9, align 8
  %55 = load %struct.omap_msg_tx_data*, %struct.omap_msg_tx_data** %8, align 8
  %56 = call i32 @blk_insert_request(%struct.request_queue* %53, %struct.request* %54, i32 0, %struct.omap_msg_tx_data* %55)
  %57 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %58 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @schedule_work(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %43, %38, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.omap_msg_tx_data* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @kfree(%struct.omap_msg_tx_data*) #1

declare dso_local i32 @blk_insert_request(%struct.request_queue*, %struct.request*, i32, %struct.omap_msg_tx_data*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
