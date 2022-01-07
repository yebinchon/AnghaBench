; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_fddi_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_init_fddi_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.s_smc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %union.s_fp_descr*, i32, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_7__ }
%union.s_fp_descr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }

@MAX_MBUF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i = %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pt to descr area = %x\00", align 1
@mb_free = common dso_local global i64 0, align 8
@mb_init = common dso_local global i8* null, align 8
@mb_start = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_fddi_driver(%struct.s_smc* %0, i32* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @init_board(%struct.s_smc* %7, i32* %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = call i32 @init_fplus(%struct.s_smc* %10)
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 15
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 15
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_MBUF, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i32 @smt_free_mbuf(%struct.s_smc* %30, %struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 1
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %5, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %40 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 13
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %44 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 14
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %46, align 8
  %47 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %48 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 11
  store i32* null, i32** %50, align 8
  %51 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %52 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 12
  store i32 0, i32* %54, align 8
  %55 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %56 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %60 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 9
  store i64 0, i64* %62, align 8
  %63 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %69 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 7
  store i8* %67, i8** %71, align 8
  %72 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %73 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %77 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i64 0, i64* %79, align 8
  %80 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %81 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %85 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %89 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %94 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 8
  %97 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %98 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %union.s_fp_descr*, %union.s_fp_descr** %100, align 8
  %102 = ptrtoint %union.s_fp_descr* %101 to i64
  %103 = and i64 %102, 15
  %104 = sub nsw i64 16, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 16
  br i1 %107, label %108, label %127

108:                                              ; preds = %38
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @DB_GEN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %111, i32 0, i32 3)
  %113 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %114 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %union.s_fp_descr*, %union.s_fp_descr** %116, align 8
  %118 = bitcast %union.s_fp_descr* %117 to i8*
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = bitcast i8* %121 to %union.s_fp_descr*
  %123 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %124 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store %union.s_fp_descr* %122, %union.s_fp_descr** %126, align 8
  br label %127

127:                                              ; preds = %108, %38
  %128 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %129 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %union.s_fp_descr*, %union.s_fp_descr** %131, align 8
  %133 = bitcast %union.s_fp_descr* %132 to i8*
  %134 = call i32 @DB_GEN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %133, i32 0, i32 3)
  %135 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %136 = call i32 @init_txd_ring(%struct.s_smc* %135)
  %137 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %138 = call i32 @init_rxd_ring(%struct.s_smc* %137)
  %139 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %140 = call i32 @mac_drv_fill_rxd(%struct.s_smc* %139)
  %141 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %142 = call i32 @init_plc(%struct.s_smc* %141)
  ret void
}

declare dso_local i32 @init_board(%struct.s_smc*, i32*) #1

declare dso_local i32 @init_fplus(%struct.s_smc*) #1

declare dso_local i32 @smt_free_mbuf(%struct.s_smc*, %struct.TYPE_10__*) #1

declare dso_local i32 @DB_GEN(i8*, i8*, i32, i32) #1

declare dso_local i32 @init_txd_ring(%struct.s_smc*) #1

declare dso_local i32 @init_rxd_ring(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_fill_rxd(%struct.s_smc*) #1

declare dso_local i32 @init_plc(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
