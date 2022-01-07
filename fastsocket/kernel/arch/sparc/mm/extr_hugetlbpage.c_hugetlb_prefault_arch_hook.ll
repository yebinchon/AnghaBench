; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_prefault_arch_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_prefault_arch_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.tsb_config* }
%struct.tsb_config = type { i32* }

@MM_TSB_HUGE = common dso_local global i64 0, align 8
@tlb_type = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@ctx_alloc_lock = common dso_local global i32 0, align 4
@CTX_PGSZ_MASK = common dso_local global i64 0, align 8
@CTX_PGSZ_BASE = common dso_local global i64 0, align 8
@CTX_PGSZ0_SHIFT = common dso_local global i64 0, align 8
@CTX_PGSZ_HUGE = common dso_local global i64 0, align 8
@CTX_PGSZ1_SHIFT = common dso_local global i64 0, align 8
@context_reload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_prefault_arch_hook(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.tsb_config*, align 8
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.tsb_config*, %struct.tsb_config** %7, align 8
  %9 = load i64, i64* @MM_TSB_HUGE, align 8
  %10 = getelementptr inbounds %struct.tsb_config, %struct.tsb_config* %8, i64 %9
  store %struct.tsb_config* %10, %struct.tsb_config** %3, align 8
  %11 = load %struct.tsb_config*, %struct.tsb_config** %3, align 8
  %12 = getelementptr inbounds %struct.tsb_config, %struct.tsb_config* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = load i64, i64* @MM_TSB_HUGE, align 8
  %22 = call i32 @tsb_grow(%struct.mm_struct* %20, i64 %21, i32 0)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %24 = call i32 @tsb_context_switch(%struct.mm_struct* %23)
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = call i32 @smp_tsb_sync(%struct.mm_struct* %25)
  %27 = load i64, i64* @tlb_type, align 8
  %28 = load i64, i64* @cheetah_plus, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %19
  %31 = call i32 @spin_lock(i32* @ctx_alloc_lock)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* @CTX_PGSZ_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* @CTX_PGSZ_BASE, align 8
  %41 = load i64, i64* @CTX_PGSZ0_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = load i64, i64* %4, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* @CTX_PGSZ_HUGE, align 8
  %46 = load i64, i64* @CTX_PGSZ1_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = load i64, i64* %4, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %30
  %57 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %58 = call i32 @do_flush_tlb_mm(%struct.mm_struct* %57)
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @context_reload, align 4
  %64 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %65 = call i32 @on_each_cpu(i32 %63, %struct.mm_struct* %64, i32 0)
  br label %66

66:                                               ; preds = %56, %30
  %67 = call i32 @spin_unlock(i32* @ctx_alloc_lock)
  br label %68

68:                                               ; preds = %18, %66, %19
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tsb_grow(%struct.mm_struct*, i64, i32) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

declare dso_local i32 @smp_tsb_sync(%struct.mm_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @do_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mm_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
