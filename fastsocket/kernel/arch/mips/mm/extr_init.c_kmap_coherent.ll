; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_kmap_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_init.c_kmap_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_5__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@FIX_N_COLOURS = common dso_local global i32 0, align 4
@FIX_CMAP_END = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@kmap_coherent_pte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_coherent(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @Page_dcache_dirty(%struct.page* %13)
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 (...) @inc_preempt_count()
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = load i32, i32* @FIX_N_COLOURS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = call i64 (...) @in_interrupt()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @FIX_N_COLOURS, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @FIX_CMAP_END, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub i32 %34, %35
  %37 = call i64 @__fix_to_virt(i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = load i32, i32* @PAGE_KERNEL, align 4
  %40 = call i64 @mk_pte(%struct.page* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = bitcast %struct.TYPE_5__* %10 to i8*
  %43 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pte_val(i64 %45)
  %47 = ashr i32 %46, 6
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ENTER_CRITICAL(i64 %49)
  %51 = call i64 (...) @read_c0_entryhi()
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @PAGE_MASK, align 4
  %54 = shl i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = call i32 @write_c0_entryhi(i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @write_c0_entrylo0(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @write_c0_entrylo1(i64 %60)
  %62 = call i32 (...) @read_c0_wired()
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @write_c0_wired(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @write_c0_index(i32 %66)
  %68 = call i32 (...) @mtc0_tlbw_hazard()
  %69 = call i32 (...) @tlb_write_indexed()
  %70 = call i32 (...) @tlbw_use_hazard()
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @write_c0_entryhi(i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @EXIT_CRITICAL(i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = inttoptr i64 %75 to i8*
  ret i8* %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i32 @inc_preempt_count(...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i64 @mk_pte(%struct.page*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pte_val(i64) #1

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32 @write_c0_entrylo0(i64) #1

declare dso_local i32 @write_c0_entrylo1(i64) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_wired(i32) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
