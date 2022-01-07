; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { i32 }
%struct.multicall_space = type { i32, %struct.mmuext_op* }

@MMUEXT_TLB_FLUSH_LOCAL = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@PARAVIRT_LAZY_MMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_flush_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_flush_tlb() #0 {
  %1 = alloca %struct.mmuext_op*, align 8
  %2 = alloca %struct.multicall_space, align 8
  %3 = alloca %struct.multicall_space, align 8
  %4 = call i32 (...) @preempt_disable()
  %5 = call { i32, %struct.mmuext_op* } @xen_mc_entry(i32 4)
  %6 = bitcast %struct.multicall_space* %3 to { i32, %struct.mmuext_op* }*
  %7 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %6, i32 0, i32 0
  %8 = extractvalue { i32, %struct.mmuext_op* } %5, 0
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %6, i32 0, i32 1
  %10 = extractvalue { i32, %struct.mmuext_op* } %5, 1
  store %struct.mmuext_op* %10, %struct.mmuext_op** %9, align 8
  %11 = bitcast %struct.multicall_space* %2 to i8*
  %12 = bitcast %struct.multicall_space* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %2, i32 0, i32 1
  %14 = load %struct.mmuext_op*, %struct.mmuext_op** %13, align 8
  store %struct.mmuext_op* %14, %struct.mmuext_op** %1, align 8
  %15 = load i32, i32* @MMUEXT_TLB_FLUSH_LOCAL, align 4
  %16 = load %struct.mmuext_op*, %struct.mmuext_op** %1, align 8
  %17 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mmuext_op*, %struct.mmuext_op** %1, align 8
  %21 = load i32, i32* @DOMID_SELF, align 4
  %22 = call i32 @MULTI_mmuext_op(i32 %19, %struct.mmuext_op* %20, i32 1, i32* null, i32 %21)
  %23 = load i32, i32* @PARAVIRT_LAZY_MMU, align 4
  %24 = call i32 @xen_mc_issue(i32 %23)
  %25 = call i32 (...) @preempt_enable()
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
