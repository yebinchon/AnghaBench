; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.bio = type { i32 }
%struct.nvme_queue = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @nvme_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  store %struct.nvme_ns* %11, %struct.nvme_ns** %6, align 8
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nvme_queue* @get_nvmeq(i32 %14)
  store %struct.nvme_queue* %15, %struct.nvme_queue** %7, align 8
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %19 = icmp ne %struct.nvme_queue* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = call i32 @put_nvmeq(%struct.nvme_queue* null)
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @bio_endio(%struct.bio* %22, i32 %24)
  store i32 0, i32* %3, align 4
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %28 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %31 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %26
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 1
  %37 = call i64 @bio_list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %41 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = call i32 @nvme_submit_bio_queue(%struct.nvme_queue* %40, %struct.nvme_ns* %41, %struct.bio* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %34, %26
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %50 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %49, i32 0, i32 1
  %51 = call i64 @bio_list_empty(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %55 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %54, i32 0, i32 3
  %56 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %57 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %56, i32 0, i32 2
  %58 = call i32 @add_wait_queue(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %61 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %60, i32 0, i32 1
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i32 @bio_list_add(i32* %61, %struct.bio* %62)
  br label %64

64:                                               ; preds = %59, %44
  %65 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %66 = call i32 @nvme_process_cq(%struct.nvme_queue* %65)
  %67 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %68 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %71 = call i32 @put_nvmeq(%struct.nvme_queue* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.nvme_queue* @get_nvmeq(i32) #1

declare dso_local i32 @put_nvmeq(%struct.nvme_queue*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @bio_list_empty(i32*) #1

declare dso_local i32 @nvme_submit_bio_queue(%struct.nvme_queue*, %struct.nvme_ns*, %struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @nvme_process_cq(%struct.nvme_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
