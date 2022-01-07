; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_hash64.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_hash64.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmu_context_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmu_context_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_CONTEXT = common dso_local global i32 0, align 4
@mmu_virtual_psize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @idr_pre_get(i32* @mmu_context_idr, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %8
  %16 = call i32 @spin_lock(i32* @mmu_context_lock)
  %17 = call i32 @idr_get_new_above(i32* @mmu_context_idr, i32* null, i32 1, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @spin_unlock(i32* @mmu_context_lock)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %8

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_CONTEXT, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = call i32 @spin_lock(i32* @mmu_context_lock)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @idr_remove(i32* @mmu_context_idr, i32 %36)
  %38 = call i32 @spin_unlock(i32* @mmu_context_lock)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %30
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = call i64 @slice_mm_new_context(%struct.mm_struct* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %47 = load i32, i32* @mmu_virtual_psize, align 4
  %48 = call i32 @slice_set_user_psize(%struct.mm_struct* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %34, %27, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i64 @slice_mm_new_context(%struct.mm_struct*) #1

declare dso_local i32 @slice_set_user_psize(%struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
