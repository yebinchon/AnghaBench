; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_rq_bio_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_rq_bio_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i32, %struct.bio*, %struct.bio*, i32, i32, i32 }
%struct.bio = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REQ_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_rq_bio_prep(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @REQ_WRITE, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i64 @bio_has_data(%struct.bio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = call i32 @bio_phys_segments(%struct.request_queue* %20, %struct.bio* %21)
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @bio_data(%struct.bio* %25)
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 2
  store %struct.bio* %35, %struct.bio** %37, align 8
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 3
  store %struct.bio* %35, %struct.bio** %39, align 8
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %29
  ret void
}

declare dso_local i64 @bio_has_data(%struct.bio*) #1

declare dso_local i32 @bio_phys_segments(%struct.request_queue*, %struct.bio*) #1

declare dso_local i32 @bio_data(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
