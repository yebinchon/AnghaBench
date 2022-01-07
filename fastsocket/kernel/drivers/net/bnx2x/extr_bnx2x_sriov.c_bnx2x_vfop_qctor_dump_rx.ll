; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_dump_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_dump_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_queue_init_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bnx2x_queue_setup_params = type { i32, %struct.TYPE_4__, %struct.bnx2x_rxq_setup_params }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [170 x i8] c"VF[%d] Q_SETUP: rxq[%d]-- vfsb=%d, sb-index=%d, hc-rate=%d, mtu=%d, buf-size=%d\0Asge-size=%d, max_sge_pkt=%d, tpa-agg-size=%d, flags=0x%lx, drop-flags=0x%x, cache-log=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vfop_qctor_dump_rx(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_queue_init_params* %2, %struct.bnx2x_queue_setup_params* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca %struct.bnx2x_queue_init_params*, align 8
  %10 = alloca %struct.bnx2x_queue_setup_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store %struct.bnx2x_queue_init_params* %2, %struct.bnx2x_queue_init_params** %9, align 8
  store %struct.bnx2x_queue_setup_params* %3, %struct.bnx2x_queue_setup_params** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %10, align 8
  %15 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %14, i32 0, i32 2
  store %struct.bnx2x_rxq_setup_params* %15, %struct.bnx2x_rxq_setup_params** %13, align 8
  %16 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %18 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %9, align 8
  %27 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %10, align 8
  %31 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %35 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %38 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %41 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %44 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %10, align 8
  %47 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %50 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %53 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DP(i32 %16, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %25, i32 %29, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
