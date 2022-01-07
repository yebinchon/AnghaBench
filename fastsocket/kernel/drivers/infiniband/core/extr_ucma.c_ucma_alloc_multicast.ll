; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_alloc_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_alloc_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_multicast = type { i32, %struct.ucma_context*, i32 }
%struct.ucma_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@multicast_idr = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_multicast* (%struct.ucma_context*)* @ucma_alloc_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_multicast* @ucma_alloc_multicast(%struct.ucma_context* %0) #0 {
  %2 = alloca %struct.ucma_multicast*, align 8
  %3 = alloca %struct.ucma_context*, align 8
  %4 = alloca %struct.ucma_multicast*, align 8
  %5 = alloca i32, align 4
  store %struct.ucma_context* %0, %struct.ucma_context** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ucma_multicast* @kzalloc(i32 24, i32 %6)
  store %struct.ucma_multicast* %7, %struct.ucma_multicast** %4, align 8
  %8 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %9 = icmp ne %struct.ucma_multicast* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %47

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @idr_pre_get(i32* @multicast_idr, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %44

18:                                               ; preds = %12
  %19 = call i32 @mutex_lock(i32* @mut)
  %20 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %21 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %22 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %21, i32 0, i32 2
  %23 = call i32 @idr_get_new(i32* @multicast_idr, %struct.ucma_multicast* %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = call i32 @mutex_unlock(i32* @mut)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %12, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %44

34:                                               ; preds = %30
  %35 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %36 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %37 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %36, i32 0, i32 1
  store %struct.ucma_context* %35, %struct.ucma_context** %37, align 8
  %38 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %39 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %38, i32 0, i32 0
  %40 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %41 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  store %struct.ucma_multicast* %43, %struct.ucma_multicast** %2, align 8
  br label %47

44:                                               ; preds = %33, %17
  %45 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %46 = call i32 @kfree(%struct.ucma_multicast* %45)
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %47

47:                                               ; preds = %44, %34, %10
  %48 = load %struct.ucma_multicast*, %struct.ucma_multicast** %2, align 8
  ret %struct.ucma_multicast* %48
}

declare dso_local %struct.ucma_multicast* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.ucma_multicast*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_multicast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
