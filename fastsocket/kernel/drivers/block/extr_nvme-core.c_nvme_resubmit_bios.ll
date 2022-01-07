; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_resubmit_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_resubmit_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32 }
%struct.bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*)* @nvme_resubmit_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_resubmit_bios(%struct.nvme_queue* %0) #0 {
  %2 = alloca %struct.nvme_queue*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %2, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %6, i32 0, i32 0
  %8 = call i64 @bio_list_peek(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %5
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 0
  %13 = call %struct.bio* @bio_list_pop(i32* %12)
  store %struct.bio* %13, %struct.bio** %3, align 8
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %19, align 8
  store %struct.nvme_ns* %20, %struct.nvme_ns** %4, align 8
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 0
  %23 = call i64 @bio_list_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %10
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %26, i32 0, i32 2
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 1
  %30 = call i32 @remove_wait_queue(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %25, %10
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %33 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = call i64 @nvme_submit_bio_queue(%struct.nvme_queue* %32, %struct.nvme_ns* %33, %struct.bio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %38, i32 0, i32 0
  %40 = call i64 @bio_list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %43, i32 0, i32 2
  %45 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %46 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %45, i32 0, i32 1
  %47 = call i32 @add_wait_queue(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %50 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %49, i32 0, i32 0
  %51 = load %struct.bio*, %struct.bio** %3, align 8
  %52 = call i32 @bio_list_add_head(i32* %50, %struct.bio* %51)
  br label %54

53:                                               ; preds = %31
  br label %5

54:                                               ; preds = %48, %5
  ret void
}

declare dso_local i64 @bio_list_peek(i32*) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i64 @bio_list_empty(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @nvme_submit_bio_queue(%struct.nvme_queue*, %struct.nvme_ns*, %struct.bio*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @bio_list_add_head(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
