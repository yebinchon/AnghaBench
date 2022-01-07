; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32, i32 }
%struct.list_head = type { i32 }

@QIB_USER_SDMA_DRAIN_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"user sdma lists not empty: forcing!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_user_sdma_queue_drain(%struct.qib_pportdata* %0, %struct.qib_user_sdma_queue* %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_user_sdma_queue*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %4, align 8
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 0
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  store %struct.qib_devdata* %10, %struct.qib_devdata** %5, align 8
  %11 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %12 = icmp ne %struct.qib_user_sdma_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %68

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QIB_USER_SDMA_DRAIN_TIMEOUT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %21 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %24 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %29 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %44

31:                                               ; preds = %19
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = call i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata* %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %35 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %36 = call i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata* %34, %struct.qib_user_sdma_queue* %35)
  %37 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %38 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = call i32 @msleep(i32 10)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %15

44:                                               ; preds = %27, %15
  %45 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %46 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %45, i32 0, i32 1
  %47 = call i64 @list_empty(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %44
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %51 = call i32 @qib_dev_err(%struct.qib_devdata* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %53 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %54 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %57 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %56, i32 0, i32 1
  %58 = call i32 @list_splice_init(i32* %57, %struct.list_head* %7)
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %64 = call i32 @qib_user_sdma_free_pkt_list(i32* %62, %struct.qib_user_sdma_queue* %63, %struct.list_head* %7)
  %65 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %4, align 8
  %66 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %13, %49, %44
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata*, %struct.qib_user_sdma_queue*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i32 @qib_user_sdma_free_pkt_list(i32*, %struct.qib_user_sdma_queue*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
