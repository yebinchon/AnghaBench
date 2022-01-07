; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_extend_mmu_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_xen_extend_mmu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_update = type { i32 }
%struct.multicall_space = type { %struct.mmu_update*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@__HYPERVISOR_mmu_update = common dso_local global i32 0, align 4
@mmu_update_extended = common dso_local global i32 0, align 4
@mmu_update_histo = common dso_local global i32* null, align 8
@MMU_UPDATE_HISTO = common dso_local global i64 0, align 8
@mmu_update = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_update*)* @xen_extend_mmu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_extend_mmu_update(%struct.mmu_update* %0) #0 {
  %2 = alloca %struct.mmu_update*, align 8
  %3 = alloca %struct.multicall_space, align 8
  %4 = alloca %struct.mmu_update*, align 8
  %5 = alloca %struct.multicall_space, align 8
  %6 = alloca %struct.multicall_space, align 8
  store %struct.mmu_update* %0, %struct.mmu_update** %2, align 8
  %7 = load i32, i32* @__HYPERVISOR_mmu_update, align 4
  %8 = call { %struct.mmu_update*, %struct.TYPE_2__* } @xen_mc_extend_args(i32 %7, i32 4)
  %9 = bitcast %struct.multicall_space* %5 to { %struct.mmu_update*, %struct.TYPE_2__* }*
  %10 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %9, i32 0, i32 0
  %11 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %8, 0
  store %struct.mmu_update* %11, %struct.mmu_update** %10, align 8
  %12 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %9, i32 0, i32 1
  %13 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %8, 1
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %12, align 8
  %14 = bitcast %struct.multicall_space* %3 to i8*
  %15 = bitcast %struct.multicall_space* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %1
  %20 = load i32, i32* @mmu_update_extended, align 4
  %21 = call i32 @ADD_STATS(i32 %20, i32 1)
  %22 = load i32*, i32** @mmu_update_histo, align 8
  %23 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ADD_STATS(i32 %30, i32 -1)
  %32 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMU_UPDATE_HISTO, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %19
  %48 = load i32*, i32** @mmu_update_histo, align 8
  %49 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ADD_STATS(i32 %56, i32 1)
  br label %63

58:                                               ; preds = %19
  %59 = load i32*, i32** @mmu_update_histo, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ADD_STATS(i32 %61, i32 1)
  br label %63

63:                                               ; preds = %58, %47
  br label %85

64:                                               ; preds = %1
  %65 = load i32, i32* @mmu_update, align 4
  %66 = call i32 @ADD_STATS(i32 %65, i32 1)
  %67 = call { %struct.mmu_update*, %struct.TYPE_2__* } @__xen_mc_entry(i32 4)
  %68 = bitcast %struct.multicall_space* %6 to { %struct.mmu_update*, %struct.TYPE_2__* }*
  %69 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %68, i32 0, i32 0
  %70 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %67, 0
  store %struct.mmu_update* %70, %struct.mmu_update** %69, align 8
  %71 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %68, i32 0, i32 1
  %72 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %67, 1
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %71, align 8
  %73 = bitcast %struct.multicall_space* %3 to i8*
  %74 = bitcast %struct.multicall_space* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %78 = load %struct.mmu_update*, %struct.mmu_update** %77, align 8
  %79 = load i32, i32* @DOMID_SELF, align 4
  %80 = call i32 @MULTI_mmu_update(%struct.TYPE_2__* %76, %struct.mmu_update* %78, i32 1, i32* null, i32 %79)
  %81 = load i32*, i32** @mmu_update_histo, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ADD_STATS(i32 %83, i32 1)
  br label %85

85:                                               ; preds = %64, %63
  %86 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %87 = load %struct.mmu_update*, %struct.mmu_update** %86, align 8
  store %struct.mmu_update* %87, %struct.mmu_update** %4, align 8
  %88 = load %struct.mmu_update*, %struct.mmu_update** %4, align 8
  %89 = load %struct.mmu_update*, %struct.mmu_update** %2, align 8
  %90 = bitcast %struct.mmu_update* %88 to i8*
  %91 = bitcast %struct.mmu_update* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  ret void
}

declare dso_local { %struct.mmu_update*, %struct.TYPE_2__* } @xen_mc_extend_args(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ADD_STATS(i32, i32) #1

declare dso_local { %struct.mmu_update*, %struct.TYPE_2__* } @__xen_mc_entry(i32) #1

declare dso_local i32 @MULTI_mmu_update(%struct.TYPE_2__*, %struct.mmu_update*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
