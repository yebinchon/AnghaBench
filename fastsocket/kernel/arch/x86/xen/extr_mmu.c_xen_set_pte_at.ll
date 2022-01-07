; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_set_pte_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_set_pte_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.multicall_space = type { i32 }

@set_pte_at = common dso_local global i32 0, align 4
@set_pte_at_current = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@set_pte_at_kernel = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@PARAVIRT_LAZY_MMU = common dso_local global i64 0, align 8
@set_pte_at_batched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_set_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.multicall_space, align 4
  %10 = alloca %struct.multicall_space, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @set_pte_at, align 4
  %12 = call i32 @ADD_STATS(i32 %11, i32 1)
  %13 = load i32, i32* @set_pte_at_current, align 4
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %18 = icmp eq %struct.mm_struct* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ADD_STATS(i32 %13, i32 %19)
  %21 = load i32, i32* @set_pte_at_kernel, align 4
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = icmp eq %struct.mm_struct* %22, @init_mm
  %24 = zext i1 %23 to i32
  %25 = call i32 @ADD_STATS(i32 %21, i32 %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.mm_struct*, %struct.mm_struct** %28, align 8
  %30 = icmp eq %struct.mm_struct* %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %33 = icmp eq %struct.mm_struct* %32, @init_mm
  br i1 %33, label %34, label %60

34:                                               ; preds = %31, %4
  %35 = call i64 (...) @paravirt_get_lazy_mode()
  %36 = load i64, i64* @PARAVIRT_LAZY_MMU, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = call i32 @xen_mc_entry(i32 0)
  %40 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.multicall_space* %9 to i8*
  %42 = bitcast %struct.multicall_space* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @MULTI_update_va_mapping(i32 %44, i64 %45, i32 %46, i32 0)
  %48 = load i32, i32* @set_pte_at_batched, align 4
  %49 = call i32 @ADD_STATS(i32 %48, i32 1)
  %50 = load i64, i64* @PARAVIRT_LAZY_MMU, align 8
  %51 = call i32 @xen_mc_issue(i64 %50)
  br label %64

52:                                               ; preds = %34
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @HYPERVISOR_update_va_mapping(i64 %53, i32 %54, i32 0)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %64

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @xen_set_pte(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57, %38
  ret void
}

declare dso_local i32 @ADD_STATS(i32, i32) #1

declare dso_local i64 @paravirt_get_lazy_mode(...) #1

declare dso_local i32 @xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MULTI_update_va_mapping(i32, i64, i32, i32) #1

declare dso_local i32 @xen_mc_issue(i64) #1

declare dso_local i64 @HYPERVISOR_update_va_mapping(i64, i32, i32) #1

declare dso_local i32 @xen_set_pte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
