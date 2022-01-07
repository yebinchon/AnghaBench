; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_split_and_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_split_and_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.nvme_queue = type { i32, i32, i32 }
%struct.nvme_bio_pair = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, %struct.nvme_queue*, i32, i32, i32)* @nvme_split_and_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_split_and_submit(%struct.bio* %0, %struct.nvme_queue* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.nvme_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_bio_pair*, align 8
  store %struct.bio* %0, %struct.bio** %7, align 8
  store %struct.nvme_queue* %1, %struct.nvme_queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.nvme_bio_pair* @nvme_bio_split(%struct.bio* %13, i32 %14, i32 %15, i32 %16)
  store %struct.nvme_bio_pair* %17, %struct.nvme_bio_pair** %12, align 8
  %18 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %12, align 8
  %19 = icmp ne %struct.nvme_bio_pair* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %25 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %24, i32 0, i32 0
  %26 = call i64 @bio_list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %30 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %29, i32 0, i32 2
  %31 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %32 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %31, i32 0, i32 1
  %33 = call i32 @add_wait_queue(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 0
  %37 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %12, align 8
  %38 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %37, i32 0, i32 1
  %39 = call i32 @bio_list_add(i32* %36, i32* %38)
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %8, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 0
  %42 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %12, align 8
  %43 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %42, i32 0, i32 0
  %44 = call i32 @bio_list_add(i32* %41, i32* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %34, %20
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.nvme_bio_pair* @nvme_bio_split(%struct.bio*, i32, i32, i32) #1

declare dso_local i64 @bio_list_empty(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @bio_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
