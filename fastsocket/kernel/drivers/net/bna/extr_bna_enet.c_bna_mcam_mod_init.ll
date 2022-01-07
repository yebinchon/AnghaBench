; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mcam_mod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mcam_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_mcam_mod = type { %struct.bna*, i32, %struct.bna_mcam_handle*, i32, %struct.bna_mac* }
%struct.bna_mcam_handle = type { i32 }
%struct.bna_mac = type { i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_MCMAC_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_mcam_mod*, %struct.bna*, %struct.bna_res_info*)* @bna_mcam_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_mcam_mod_init(%struct.bna_mcam_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_mcam_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bna_mcam_mod* %0, %struct.bna_mcam_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %8 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %9 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %10 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %8, i64 %9
  %11 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bna_mac*
  %19 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %20 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %19, i32 0, i32 4
  store %struct.bna_mac* %18, %struct.bna_mac** %20, align 8
  %21 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %22 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %21, i32 0, i32 3
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %51, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.bna*, %struct.bna** %5, align 8
  %27 = getelementptr inbounds %struct.bna, %struct.bna* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %24
  %33 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %34 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %33, i32 0, i32 4
  %35 = load %struct.bna_mac*, %struct.bna_mac** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %35, i64 %37
  %39 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %38, i32 0, i32 0
  %40 = call i32 @bfa_q_qe_init(i32* %39)
  %41 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %42 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %41, i32 0, i32 4
  %43 = load %struct.bna_mac*, %struct.bna_mac** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %43, i64 %45
  %47 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %46, i32 0, i32 0
  %48 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %49 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %48, i32 0, i32 3
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %24

54:                                               ; preds = %24
  %55 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %56 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %57 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %55, i64 %56
  %58 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.bna_mcam_handle*
  %66 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %67 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %66, i32 0, i32 2
  store %struct.bna_mcam_handle* %65, %struct.bna_mcam_handle** %67, align 8
  %68 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %69 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %68, i32 0, i32 1
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %98, %54
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.bna*, %struct.bna** %5, align 8
  %74 = getelementptr inbounds %struct.bna, %struct.bna* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %81 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %80, i32 0, i32 2
  %82 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %82, i64 %84
  %86 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %85, i32 0, i32 0
  %87 = call i32 @bfa_q_qe_init(i32* %86)
  %88 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %89 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %88, i32 0, i32 2
  %90 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %90, i64 %92
  %94 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %93, i32 0, i32 0
  %95 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %96 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %95, i32 0, i32 1
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  br label %98

98:                                               ; preds = %79
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.bna*, %struct.bna** %5, align 8
  %103 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %4, align 8
  %104 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %103, i32 0, i32 0
  store %struct.bna* %102, %struct.bna** %104, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
