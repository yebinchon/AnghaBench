; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_job_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_job_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.request* }
%struct.request = type { i32, i32, i32, %struct.request* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsg_job_done(%struct.bsg_job* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 1
  %12 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %12, %struct.request** %7, align 8
  %13 = load %struct.request*, %struct.request** %7, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 3
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 1
  %19 = load %struct.request*, %struct.request** %18, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  store i32 %16, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %25 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %24, i32 0, i32 1
  %26 = load %struct.request*, %struct.request** %25, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %30 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 1
  %34 = load %struct.request*, %struct.request** %33, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.request*, %struct.request** %8, align 8
  %40 = icmp ne %struct.request* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.request*, %struct.request** %8, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ugt i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.request*, %struct.request** %8, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @min(i32 %49, i32 %52)
  %54 = load %struct.request*, %struct.request** %8, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = zext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  br label %60

60:                                               ; preds = %41, %36
  %61 = load %struct.request*, %struct.request** %7, align 8
  %62 = call i32 @blk_complete_request(%struct.request* %61)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @blk_complete_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
