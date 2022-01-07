; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_teardown_q.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_teardown_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { i32, i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__const.bnx2x_vf_mbx_teardown_q.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { i32 0, i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_mbx_resp to i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*) }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VF[%d] Q_TEARDOWN: vf_qid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_teardown_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_teardown_q(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = bitcast %struct.bnx2x_vfop_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vf_mbx_teardown_q.cmd to i8*), i64 16, i1 false)
  %17 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %18 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %19 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DP(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @bnx2x_vfop_qdown_cmd(%struct.bnx2x* %23, %struct.bnx2x_virtf* %24, %struct.bnx2x_vfop_cmd* %8, i32 %25)
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %36 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %34, %struct.bnx2x_virtf* %35)
  br label %37

37:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_qdown_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
