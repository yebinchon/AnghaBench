; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vfpf_acquire_tlv }
%struct.vfpf_acquire_tlv = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"VF[%d] ACQUIRE: vfdev_info- vf_id %d, vf_os %d resources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_acquire(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfpf_acquire_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.vfpf_acquire_tlv* %13, %struct.vfpf_acquire_tlv** %8, align 8
  %14 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %19 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %23 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %27 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %31 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %35 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %39 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %43 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %47 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %53 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %54 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %53, i32 0, i32 1
  %55 = call i32 @bnx2x_vf_acquire(%struct.bnx2x* %51, %struct.bnx2x_virtf* %52, %struct.TYPE_8__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %57 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %62 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %63 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bnx2x_vf_mbx_acquire_resp(%struct.bnx2x* %61, %struct.bnx2x_virtf* %62, %struct.bnx2x_vf_mbx* %63, i32 %64)
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_vf_acquire(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.TYPE_8__*) #1

declare dso_local i32 @bnx2x_vf_mbx_acquire_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
