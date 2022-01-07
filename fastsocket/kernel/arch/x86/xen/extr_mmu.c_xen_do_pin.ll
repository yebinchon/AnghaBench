; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_do_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_do_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.multicall_space = type { i32, %struct.mmuext_op* }

@DOMID_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @xen_do_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_do_pin(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmuext_op*, align 8
  %6 = alloca %struct.multicall_space, align 8
  %7 = alloca %struct.multicall_space, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = call { i32, %struct.mmuext_op* } @__xen_mc_entry(i32 8)
  %9 = bitcast %struct.multicall_space* %7 to { i32, %struct.mmuext_op* }*
  %10 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %9, i32 0, i32 0
  %11 = extractvalue { i32, %struct.mmuext_op* } %8, 0
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %9, i32 0, i32 1
  %13 = extractvalue { i32, %struct.mmuext_op* } %8, 1
  store %struct.mmuext_op* %13, %struct.mmuext_op** %12, align 8
  %14 = bitcast %struct.multicall_space* %6 to i8*
  %15 = bitcast %struct.multicall_space* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 1
  %17 = load %struct.mmuext_op*, %struct.mmuext_op** %16, align 8
  store %struct.mmuext_op* %17, %struct.mmuext_op** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %20 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @pfn_to_mfn(i64 %21)
  %23 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %24 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %29 = load i32, i32* @DOMID_SELF, align 4
  %30 = call i32 @MULTI_mmuext_op(i32 %27, %struct.mmuext_op* %28, i32 1, i32* null, i32 %29)
  ret void
}

declare dso_local { i32, %struct.mmuext_op* } @__xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfn_to_mfn(i64) #1

declare dso_local i32 @MULTI_mmuext_op(i32, %struct.mmuext_op*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
