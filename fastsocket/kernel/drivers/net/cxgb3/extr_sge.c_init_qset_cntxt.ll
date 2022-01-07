; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_init_qset_cntxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_init_qset_cntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FW_TUNNEL_SGEEC_START = common dso_local global i64 0, align 8
@TXQ_ETH = common dso_local global i64 0, align 8
@FW_TUNNEL_TID_START = common dso_local global i64 0, align 8
@FW_OFLD_SGEEC_START = common dso_local global i64 0, align 8
@TXQ_OFLD = common dso_local global i64 0, align 8
@FW_CTRL_SGEEC_START = common dso_local global i64 0, align 8
@TXQ_CTRL = common dso_local global i64 0, align 8
@FW_CTRL_TID_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_qset*, i32)* @init_qset_cntxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_qset_cntxt(%struct.sge_qset* %0, i32 %1) #0 {
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca i32, align 4
  store %struct.sge_qset* %0, %struct.sge_qset** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %7 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = mul i32 2, %9
  %11 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %12 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = mul i32 2, %16
  %18 = add i32 %17, 1
  %19 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %20 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load i64, i64* @FW_TUNNEL_SGEEC_START, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %29 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* @TXQ_ETH, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64 %27, i64* %33, align 8
  %34 = load i64, i64* @FW_TUNNEL_TID_START, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %39 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* @TXQ_ETH, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %37, i64* %43, align 8
  %44 = load i64, i64* @FW_OFLD_SGEEC_START, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %49 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* @TXQ_OFLD, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 %47, i64* %53, align 8
  %54 = load i64, i64* @FW_CTRL_SGEEC_START, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %59 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* @TXQ_CTRL, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 %57, i64* %63, align 8
  %64 = load i64, i64* @FW_CTRL_TID_START, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %69 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @TXQ_CTRL, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %67, i64* %73, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
