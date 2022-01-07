; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_fill_mac_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_fill_mac_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.smt_p_mac_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SMT_P_MAC_STATUS = common dso_local global i32 0, align 4
@INDEX_MAC = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@PATH0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_mac_status*)* @smt_fill_mac_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_mac_status(%struct.s_smc* %0, %struct.smt_p_mac_status* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_mac_status*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_mac_status* %1, %struct.smt_p_mac_status** %4, align 8
  %5 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %6 = load i32, i32* @SMT_P_MAC_STATUS, align 4
  %7 = call i32 @SMTSETPARA(%struct.smt_p_mac_status* %5, i32 %6)
  %8 = load i32, i32* @INDEX_MAC, align 4
  %9 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %10 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 4
  %11 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %12 = call i32 @mac_index(%struct.s_smc* %11, i32 1)
  %13 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %14 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %16 = call i32 @mac_update_counter(%struct.s_smc* %15)
  %17 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* @MAC0, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %26 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i64, i64* @MAC0, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %36 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* @MAC0, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %46 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %48 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @MAC0, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %56 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* @MAC0, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %66 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %68 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @PATH0, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %76 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %78 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i64, i64* @MAC0, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %86 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %88 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* @MAC0, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %96 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %98 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i64, i64* @MAC0, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.smt_p_mac_status*, %struct.smt_p_mac_status** %4, align 8
  %106 = getelementptr inbounds %struct.smt_p_mac_status, %struct.smt_p_mac_status* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32 @SMTSETPARA(%struct.smt_p_mac_status*, i32) #1

declare dso_local i32 @mac_index(%struct.s_smc*, i32) #1

declare dso_local i32 @mac_update_counter(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
