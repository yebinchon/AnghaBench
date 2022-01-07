; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_req_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_vq.c_vq_req_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_vq_req = type { i32, i32, i32*, i32*, i64, i64, i32 }
%struct.c2_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %0) #0 {
  %2 = alloca %struct.c2_dev*, align 8
  %3 = alloca %struct.c2_vq_req*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.c2_vq_req* @kmalloc(i32 48, i32 %4)
  store %struct.c2_vq_req* %5, %struct.c2_vq_req** %3, align 8
  %6 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %7 = icmp ne %struct.c2_vq_req* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %10 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %9, i32 0, i32 6
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %13 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %15 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %17 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %19 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %21 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %20, i32 0, i32 1
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  %24 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %23, i32 0, i32 0
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  br label %26

26:                                               ; preds = %8, %1
  %27 = load %struct.c2_vq_req*, %struct.c2_vq_req** %3, align 8
  ret %struct.c2_vq_req* %27
}

declare dso_local %struct.c2_vq_req* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
