; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_umem.c_ib_umem_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_umem.c_ib_umem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ib_umem = type { i64, i32, %struct.mm_struct*, i64, i64, %struct.ib_ucontext* }
%struct.mm_struct = type { i32 }
%struct.ib_ucontext = type { i64, i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ib_umem_account = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_umem_release(%struct.ib_umem* %0) #0 {
  %2 = alloca %struct.ib_umem*, align 8
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.ib_umem* %0, %struct.ib_umem** %2, align 8
  %6 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %7 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %6, i32 0, i32 5
  %8 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  store %struct.ib_ucontext* %8, %struct.ib_ucontext** %3, align 8
  %9 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %10 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %9, i32 0, i32 5
  %11 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %12 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %15 = call i32 @__ib_umem_release(i32 %13, %struct.ib_umem* %14, i32 1)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %17 = call %struct.mm_struct* @get_task_mm(%struct.TYPE_5__* %16)
  store %struct.mm_struct* %17, %struct.mm_struct** %4, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = icmp ne %struct.mm_struct* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %22 = call i32 @kfree(%struct.ib_umem* %21)
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %25 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %28 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i64 @PAGE_ALIGN(i64 %30)
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %5, align 8
  %34 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %35 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %23
  %39 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = call i32 @down_write_trylock(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %45 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %44, i32 0, i32 1
  %46 = load i32, i32* @ib_umem_account, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %49 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %50 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %49, i32 0, i32 2
  store %struct.mm_struct* %48, %struct.mm_struct** %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %53 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @ib_wq, align 4
  %55 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %56 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %55, i32 0, i32 1
  %57 = call i32 @queue_work(i32 %54, i32* %56)
  br label %78

58:                                               ; preds = %38
  br label %63

59:                                               ; preds = %23
  %60 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = call i32 @down_write(i32* %61)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, %64
  store i64 %70, i64* %68, align 8
  %71 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %72 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %71, i32 0, i32 0
  %73 = call i32 @up_write(i32* %72)
  %74 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %75 = call i32 @mmput(%struct.mm_struct* %74)
  %76 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %77 = call i32 @kfree(%struct.ib_umem* %76)
  br label %78

78:                                               ; preds = %63, %43, %20
  ret void
}

declare dso_local i32 @__ib_umem_release(i32, %struct.ib_umem*, i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ib_umem*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
