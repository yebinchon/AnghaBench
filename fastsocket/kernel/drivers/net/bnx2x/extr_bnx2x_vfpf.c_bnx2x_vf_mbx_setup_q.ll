; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_setup_q.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_setup_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { i32, i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__, %struct.bnx2x_queue_setup_params }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.bnx2x_queue_init_params }
%struct.bnx2x_queue_init_params = type { %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.bnx2x_queue_setup_params = type { i64, %struct.TYPE_23__, %struct.bnx2x_rxq_setup_params, %struct.bnx2x_txq_setup_params }
%struct.TYPE_23__ = type { i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_txq_setup_params = type { i32, i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.vfpf_setup_q_tlv }
%struct.vfpf_setup_q_tlv = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_21__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32 }

@__const.bnx2x_vf_mbx_setup_q.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { i32 0, i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_mbx_resp to i32 (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*) }, align 8
@.str = private unnamed_addr constant [42 x i8] c"vf_qid %d invalid, max queue count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VFPF_RXQ_VALID = common dso_local global i32 0, align 4
@VFPF_TXQ_VALID = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_setup_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_setup_q(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.vfpf_setup_q_tlv*, align 8
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  %9 = alloca %struct.bnx2x_vf_queue*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2x_queue_init_params*, align 8
  %12 = alloca %struct.bnx2x_queue_setup_params*, align 8
  %13 = alloca %struct.bnx2x_txq_setup_params*, align 8
  %14 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %15 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store %struct.vfpf_setup_q_tlv* %19, %struct.vfpf_setup_q_tlv** %7, align 8
  %20 = bitcast %struct.bnx2x_vfop_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vf_mbx_setup_q.cmd to i8*), i64 16, i1 false)
  %21 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %22 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %25 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %24)
  %26 = icmp sge i64 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %29 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %32 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %31)
  %33 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %305

38:                                               ; preds = %3
  %39 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %40 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VFPF_RXQ_VALID, align 4
  %43 = load i32, i32* @VFPF_TXQ_VALID, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %304

47:                                               ; preds = %38
  %48 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %49 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %50 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf* %48, i64 %51)
  store %struct.bnx2x_vf_queue* %52, %struct.bnx2x_vf_queue** %9, align 8
  store i64 0, i64* %10, align 8
  %53 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %54 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = call i32 @memset(%struct.TYPE_14__* %55, i32 0, i32 104)
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %58 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store %struct.bnx2x_queue_setup_params* %60, %struct.bnx2x_queue_setup_params** %12, align 8
  %61 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %62 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store %struct.bnx2x_queue_init_params* %66, %struct.bnx2x_queue_init_params** %11, align 8
  %67 = load i32, i32* @BNX2X_Q_FLG_ACTIVE, align 4
  %68 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %69 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %68, i32 0, i32 0
  %70 = call i32 @__set_bit(i32 %67, i64* %69)
  %71 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %72 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @VFPF_TXQ_VALID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %148

77:                                               ; preds = %47
  %78 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %79 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %78, i32 0, i32 3
  store %struct.bnx2x_txq_setup_params* %79, %struct.bnx2x_txq_setup_params** %13, align 8
  %80 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %81 = call i32 @__set_bit(i32 %80, i64* %10)
  %82 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %83 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %87 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %89 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %93 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %96 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %100 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %103 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %104 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %108 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %102, i32 %106, i64* %109)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %112 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %113 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %117 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %116, i32 0, i32 0
  %118 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %111, i32 %115, i64* %117)
  %119 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %120 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %13, align 8
  %124 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %126 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %13, align 8
  %130 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %132 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %13, align 8
  %136 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %138 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %139 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %140 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %141 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %142 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %145 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @bnx2x_vfop_qctor_dump_tx(%struct.bnx2x* %137, %struct.bnx2x_virtf* %138, %struct.bnx2x_queue_init_params* %139, %struct.bnx2x_queue_setup_params* %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %77, %47
  %149 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %150 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @VFPF_RXQ_VALID, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %281

155:                                              ; preds = %148
  %156 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %157 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %156, i32 0, i32 2
  store %struct.bnx2x_rxq_setup_params* %157, %struct.bnx2x_rxq_setup_params** %14, align 8
  %158 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %159 = call i32 @__set_bit(i32 %158, i64* %10)
  %160 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %161 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %165 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %167 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %171 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 4
  %173 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %174 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %178 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 8
  %180 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %181 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %182 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %186 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %180, i32 %184, i64* %187)
  %189 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %190 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %191 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %195 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %194, i32 0, i32 0
  %196 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %189, i32 %193, i64* %195)
  %197 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %198 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %202 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %205 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %209 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 4
  %210 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %211 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %215 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %214, i32 0, i32 9
  store i32 %213, i32* %215, align 4
  %216 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %217 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %221 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %220, i32 0, i32 8
  store i32 %219, i32* %221, align 4
  %222 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %223 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %227 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 4
  %228 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %229 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %233 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 4
  %234 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %235 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %239 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 4
  %240 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %241 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %245 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  %246 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %247 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %251 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %253 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %257 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  %258 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %259 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %263 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %265 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %14, align 8
  %269 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  %270 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %271 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %272 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %273 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %274 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %275 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %278 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @bnx2x_vfop_qctor_dump_rx(%struct.bnx2x* %270, %struct.bnx2x_virtf* %271, %struct.bnx2x_queue_init_params* %272, %struct.bnx2x_queue_setup_params* %273, i32 %276, i32 %279)
  br label %281

281:                                              ; preds = %155, %148
  %282 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %283 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %284 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %285 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %286 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i64, i64* %10, align 8
  %289 = call i32 @bnx2x_vfop_qctor_prep(%struct.bnx2x* %282, %struct.bnx2x_virtf* %283, %struct.bnx2x_vf_queue* %284, %struct.TYPE_14__* %287, i64 %288)
  %290 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %291 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %292 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %9, align 8
  %293 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @bnx2x_vfop_qsetup_cmd(%struct.bnx2x* %290, %struct.bnx2x_virtf* %291, %struct.bnx2x_vfop_cmd* %8, i32 %294)
  %296 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %297 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %299 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %281
  br label %305

303:                                              ; preds = %281
  br label %309

304:                                              ; preds = %38
  br label %305

305:                                              ; preds = %304, %302, %27
  %306 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %307 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %308 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %306, %struct.bnx2x_virtf* %307)
  br label %309

309:                                              ; preds = %305, %303
  ret void
}

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

declare dso_local %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x*, i32, i64*) #1

declare dso_local i32 @bnx2x_vfop_qctor_dump_tx(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_setup_params*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_qctor_dump_rx(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_setup_params*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_qctor_prep(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @bnx2x_vfop_qsetup_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
