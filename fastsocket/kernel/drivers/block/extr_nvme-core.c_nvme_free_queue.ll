; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_free_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i8*, i32, i32, i32, i32, i64, i32, i32 }
%struct.bio = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*)* @nvme_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_free_queue(%struct.nvme_queue* %0) #0 {
  %2 = alloca %struct.nvme_queue*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %2, align 8
  %4 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %4, i32 0, i32 6
  %6 = call i32 @spin_lock_irq(i32* %5)
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %8, i32 0, i32 7
  %10 = call i64 @bio_list_peek(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 7
  %15 = call %struct.bio* @bio_list_pop(i32* %14)
  store %struct.bio* %15, %struct.bio** %3, align 8
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @bio_endio(%struct.bio* %16, i32 %18)
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 6
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %25 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %28 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CQ_SIZE(i32 %29)
  %31 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %32 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dma_free_coherent(i32 %26, i32 %30, i8* %34, i32 %37)
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %40 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %43 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SQ_SIZE(i32 %44)
  %46 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %50 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(i32 %41, i32 %45, i8* %48, i32 %51)
  %53 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %54 = call i32 @kfree(%struct.nvme_queue* %53)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @bio_list_peek(i32*) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @CQ_SIZE(i32) #1

declare dso_local i32 @SQ_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.nvme_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
