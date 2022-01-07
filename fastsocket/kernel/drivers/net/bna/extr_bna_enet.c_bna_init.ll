; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { i32, i32, i32, %struct.bfa_pcidev, %struct.TYPE_8__, %struct.bnad* }
%struct.bfa_pcidev = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.bfi_enet_stats* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bfi_enet_stats = type { i32 }
%struct.bnad = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@BNA_RES_MEM_T_STATS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_init(%struct.bna* %0, %struct.bnad* %1, %struct.bfa_pcidev* %2, %struct.bna_res_info* %3) #0 {
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bfa_pcidev*, align 8
  %8 = alloca %struct.bna_res_info*, align 8
  store %struct.bna* %0, %struct.bna** %5, align 8
  store %struct.bnad* %1, %struct.bnad** %6, align 8
  store %struct.bfa_pcidev* %2, %struct.bfa_pcidev** %7, align 8
  store %struct.bna_res_info* %3, %struct.bna_res_info** %8, align 8
  %9 = load %struct.bnad*, %struct.bnad** %6, align 8
  %10 = load %struct.bna*, %struct.bna** %5, align 8
  %11 = getelementptr inbounds %struct.bna, %struct.bna* %10, i32 0, i32 5
  store %struct.bnad* %9, %struct.bnad** %11, align 8
  %12 = load %struct.bna*, %struct.bna** %5, align 8
  %13 = getelementptr inbounds %struct.bna, %struct.bna* %12, i32 0, i32 3
  %14 = load %struct.bfa_pcidev*, %struct.bfa_pcidev** %7, align 8
  %15 = bitcast %struct.bfa_pcidev* %13 to i8*
  %16 = bitcast %struct.bfa_pcidev* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %18 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %19 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %17, i64 %18
  %20 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.bfi_enet_stats*
  %28 = load %struct.bna*, %struct.bna** %5, align 8
  %29 = getelementptr inbounds %struct.bna, %struct.bna* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store %struct.bfi_enet_stats* %27, %struct.bfi_enet_stats** %30, align 8
  %31 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %32 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %33 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %31, i64 %32
  %34 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bna*, %struct.bna** %5, align 8
  %43 = getelementptr inbounds %struct.bna, %struct.bna* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %47 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %48 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %46, i64 %47
  %49 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bna*, %struct.bna** %5, align 8
  %58 = getelementptr inbounds %struct.bna, %struct.bna* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.bna*, %struct.bna** %5, align 8
  %62 = load %struct.bna*, %struct.bna** %5, align 8
  %63 = getelementptr inbounds %struct.bna, %struct.bna* %62, i32 0, i32 3
  %64 = call i32 @bna_reg_addr_init(%struct.bna* %61, %struct.bfa_pcidev* %63)
  %65 = load %struct.bna*, %struct.bna** %5, align 8
  %66 = getelementptr inbounds %struct.bna, %struct.bna* %65, i32 0, i32 2
  %67 = load %struct.bna*, %struct.bna** %5, align 8
  %68 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %69 = call i32 @bna_ioceth_init(i32* %66, %struct.bna* %67, %struct.bna_res_info* %68)
  %70 = load %struct.bna*, %struct.bna** %5, align 8
  %71 = getelementptr inbounds %struct.bna, %struct.bna* %70, i32 0, i32 1
  %72 = load %struct.bna*, %struct.bna** %5, align 8
  %73 = call i32 @bna_enet_init(i32* %71, %struct.bna* %72)
  %74 = load %struct.bna*, %struct.bna** %5, align 8
  %75 = getelementptr inbounds %struct.bna, %struct.bna* %74, i32 0, i32 0
  %76 = load %struct.bna*, %struct.bna** %5, align 8
  %77 = call i32 @bna_ethport_init(i32* %75, %struct.bna* %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bna_reg_addr_init(%struct.bna*, %struct.bfa_pcidev*) #2

declare dso_local i32 @bna_ioceth_init(i32*, %struct.bna*, %struct.bna_res_info*) #2

declare dso_local i32 @bna_enet_init(i32*, %struct.bna*) #2

declare dso_local i32 @bna_ethport_init(i32*, %struct.bna*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
