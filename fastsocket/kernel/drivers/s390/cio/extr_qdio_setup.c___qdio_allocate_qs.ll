; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c___qdio_allocate_qs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c___qdio_allocate_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.slib* }
%struct.slib = type { i32 }

@qdio_q_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q**, i32)* @__qdio_allocate_qs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qdio_allocate_qs(%struct.qdio_q** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  store %struct.qdio_q** %0, %struct.qdio_q*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load i32, i32* @qdio_q_cache, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.qdio_q* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.qdio_q* %15, %struct.qdio_q** %6, align 8
  %16 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %17 = icmp ne %struct.qdio_q* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %12
  %22 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %23 = ptrtoint %struct.qdio_q* %22 to i64
  %24 = and i64 %23, 255
  %25 = call i32 @WARN_ON(i64 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64 @__get_free_page(i32 %26)
  %28 = inttoptr i64 %27 to %struct.slib*
  %29 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 0
  store %struct.slib* %28, %struct.slib** %30, align 8
  %31 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 0
  %33 = load %struct.slib*, %struct.slib** %32, align 8
  %34 = icmp ne %struct.slib* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @qdio_q_cache, align 4
  %37 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %38 = call i32 @kmem_cache_free(i32 %36, %struct.qdio_q* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %21
  %42 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %43 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %42, i32 0, i32 0
  %44 = load %struct.slib*, %struct.slib** %43, align 8
  %45 = ptrtoint %struct.slib* %44 to i64
  %46 = and i64 %45, 2047
  %47 = call i32 @WARN_ON(i64 %46)
  %48 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %49 = load %struct.qdio_q**, %struct.qdio_q*** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %49, i64 %51
  store %struct.qdio_q* %48, %struct.qdio_q** %52, align 8
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %8

56:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.qdio_q* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
