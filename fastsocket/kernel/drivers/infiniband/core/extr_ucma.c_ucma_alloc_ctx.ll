; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32, i32, %struct.ucma_file*, i32, i32, i32 }
%struct.ucma_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ctx_idr = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_context* (%struct.ucma_file*)* @ucma_alloc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_context* @ucma_alloc_ctx(%struct.ucma_file* %0) #0 {
  %2 = alloca %struct.ucma_context*, align 8
  %3 = alloca %struct.ucma_file*, align 8
  %4 = alloca %struct.ucma_context*, align 8
  %5 = alloca i32, align 4
  store %struct.ucma_file* %0, %struct.ucma_file** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ucma_context* @kzalloc(i32 32, i32 %6)
  store %struct.ucma_context* %7, %struct.ucma_context** %4, align 8
  %8 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %9 = icmp ne %struct.ucma_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ucma_context* null, %struct.ucma_context** %2, align 8
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %13 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %12, i32 0, i32 5
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %16 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %15, i32 0, i32 4
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %19 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %22 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %23 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %22, i32 0, i32 2
  store %struct.ucma_file* %21, %struct.ucma_file** %23, align 8
  br label %24

24:                                               ; preds = %37, %11
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @idr_pre_get(i32* @ctx_idr, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %53

30:                                               ; preds = %24
  %31 = call i32 @mutex_lock(i32* @mut)
  %32 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %33 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %34 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %33, i32 0, i32 1
  %35 = call i32 @idr_get_new(i32* @ctx_idr, %struct.ucma_context* %32, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = call i32 @mutex_unlock(i32* @mut)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %24, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %53

46:                                               ; preds = %42
  %47 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %48 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %47, i32 0, i32 0
  %49 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %50 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  store %struct.ucma_context* %52, %struct.ucma_context** %2, align 8
  br label %56

53:                                               ; preds = %45, %29
  %54 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %55 = call i32 @kfree(%struct.ucma_context* %54)
  store %struct.ucma_context* null, %struct.ucma_context** %2, align 8
  br label %56

56:                                               ; preds = %53, %46, %10
  %57 = load %struct.ucma_context*, %struct.ucma_context** %2, align 8
  ret %struct.ucma_context* %57
}

declare dso_local %struct.ucma_context* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.ucma_context*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
