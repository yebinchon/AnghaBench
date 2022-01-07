; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_flush_tlb_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_flush_tlb_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.multicall_space = type { i32, %struct.mmuext_op* }

@MMUEXT_INVLPG_LOCAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@DOMID_SELF = common dso_local global i32 0, align 4
@PARAVIRT_LAZY_MMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xen_flush_tlb_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_flush_tlb_single(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mmuext_op*, align 8
  %4 = alloca %struct.multicall_space, align 8
  %5 = alloca %struct.multicall_space, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call { i32, %struct.mmuext_op* } @xen_mc_entry(i32 16)
  %8 = bitcast %struct.multicall_space* %5 to { i32, %struct.mmuext_op* }*
  %9 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %8, i32 0, i32 0
  %10 = extractvalue { i32, %struct.mmuext_op* } %7, 0
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %8, i32 0, i32 1
  %12 = extractvalue { i32, %struct.mmuext_op* } %7, 1
  store %struct.mmuext_op* %12, %struct.mmuext_op** %11, align 8
  %13 = bitcast %struct.multicall_space* %4 to i8*
  %14 = bitcast %struct.multicall_space* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %4, i32 0, i32 1
  %16 = load %struct.mmuext_op*, %struct.mmuext_op** %15, align 8
  store %struct.mmuext_op* %16, %struct.mmuext_op** %3, align 8
  %17 = load i32, i32* @MMUEXT_INVLPG_LOCAL, align 4
  %18 = load %struct.mmuext_op*, %struct.mmuext_op** %3, align 8
  %19 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @PAGE_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load %struct.mmuext_op*, %struct.mmuext_op** %3, align 8
  %24 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mmuext_op*, %struct.mmuext_op** %3, align 8
  %29 = load i32, i32* @DOMID_SELF, align 4
  %30 = call i32 @MULTI_mmuext_op(i32 %27, %struct.mmuext_op* %28, i32 1, i32* null, i32 %29)
  %31 = load i32, i32* @PARAVIRT_LAZY_MMU, align 4
  %32 = call i32 @xen_mc_issue(i32 %31)
  %33 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local { i32, %struct.mmuext_op* } @xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MULTI_mmuext_op(i32, %struct.mmuext_op*, i32, i32*, i32) #1

declare dso_local i32 @xen_mc_issue(i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
