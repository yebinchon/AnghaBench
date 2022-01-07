; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_multiplex_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_multiplex_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, i32, i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.mlx4_ib_demux_pv_qp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.mlx4_tunnel_mad* }
%struct.mlx4_tunnel_mad = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.ib_wc = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ib_ah_attr = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ib_sa_mad = type { i32 }
%struct.ib_mad = type { i32 }

@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't multiplex bad sqp:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't multiplex bad sqp:%d: belongs to another slave\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"can't multiplex bad sqp:%d: non-master trying to send QP0 packets\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"egress mad has non-null tid msb:%d class:%d slave:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"dropping unsupported egress mad from class:%d for slave:%d\0A\00", align 1
@IB_AH_GRH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"slave:%d accessed invalid sgid_index:%d\0A\00", align 1
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_demux_pv_ctx*, %struct.ib_wc*)* @mlx4_ib_multiplex_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_multiplex_mad(%struct.mlx4_ib_demux_pv_ctx* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_tunnel_mad*, align 8
  %9 = alloca %struct.mlx4_ib_ah, align 4
  %10 = alloca %struct.ib_ah_attr, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %13 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %5, align 8
  %17 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %17, i32 0, i32 3
  %19 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %18, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %21 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @MLX4_TUN_WRID_QPN(i32 %22)
  %24 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %19, i64 %23
  store %struct.mlx4_ib_demux_pv_qp* %24, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %37, align 8
  store %struct.mlx4_tunnel_mad* %38, %struct.mlx4_tunnel_mad** %8, align 8
  %39 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %79, label %49

49:                                               ; preds = %2
  %50 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %60 = mul nsw i32 8, %59
  %61 = add nsw i32 %58, %60
  %62 = icmp sge i32 %52, %61
  br i1 %62, label %79, label %63

63:                                               ; preds = %49
  %64 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 1
  %68 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %75 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73, %63, %49, %2
  %80 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %84 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %320

87:                                               ; preds = %73
  %88 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %89 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -8
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %91, %97
  %99 = sdiv i32 %98, 8
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %87
  %106 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %320

113:                                              ; preds = %87
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @mlx4_master_func_num(%struct.TYPE_14__* %117)
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %122 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %131 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %129, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %320

134:                                              ; preds = %120, %113
  %135 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %6, align 8
  %139 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %147 = call i32 @ib_dma_sync_single_for_cpu(i32 %137, i32 %145, i32 28, i32 %146)
  %148 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %149 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %178 [
    i32 132, label %153
    i32 134, label %153
    i32 133, label %153
    i32 129, label %153
    i32 131, label %153
    i32 130, label %153
    i32 128, label %153
  ]

153:                                              ; preds = %134, %134, %134, %134, %134, %134, %134
  %154 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %155 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  store i32* %157, i32** %11, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %153
  %162 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %168 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %164, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %171, i32 %172)
  br label %320

174:                                              ; preds = %153
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %11, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %134, %177
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %181 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  switch i32 %184, label %231 [
    i32 135, label %185
    i32 137, label %200
    i32 136, label %215
  ]

185:                                              ; preds = %179
  %186 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %194 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %193, i32 0, i32 0
  %195 = bitcast %struct.TYPE_15__* %194 to %struct.ib_sa_mad*
  %196 = call i32 @mlx4_ib_multiplex_sa_handler(i32 %188, i32 %191, i32 %192, %struct.ib_sa_mad* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %320

199:                                              ; preds = %185
  br label %250

200:                                              ; preds = %179
  %201 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %208, i32 0, i32 0
  %210 = bitcast %struct.TYPE_15__* %209 to %struct.ib_mad*
  %211 = call i32 @mlx4_ib_multiplex_cm_handler(i32 %203, i32 %206, i32 %207, %struct.ib_mad* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  br label %320

214:                                              ; preds = %200
  br label %250

215:                                              ; preds = %179
  %216 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %217 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 134
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %224 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 132
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %320

230:                                              ; preds = %222, %215
  br label %250

231:                                              ; preds = %179
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %233, i32 0, i32 0
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = call i32 @mlx4_master_func_num(%struct.TYPE_14__* %235)
  %237 = icmp ne i32 %232, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %231
  %239 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %243 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %241, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %247)
  br label %320

249:                                              ; preds = %231
  br label %250

250:                                              ; preds = %249, %230, %214, %199
  %251 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 1
  %252 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %253 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = call i32 @memcpy(i32* %251, i32* %254, i32 4)
  %256 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 4
  %261 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %9, i32 0, i32 0
  %262 = call i32 @mlx4_ib_query_ah(%struct.TYPE_16__* %261, %struct.ib_ah_attr* %10)
  %263 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @IB_AH_GRH, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %283

268:                                              ; preds = %250
  %269 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %12, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %268
  %275 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, i32, ...) @mlx4_ib_warn(i32 %277, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %278, i32 %281)
  br label %320

283:                                              ; preds = %268, %250
  %284 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %3, align 8
  %287 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %290 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %291 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %12, align 4
  %294 = call i64 @is_proxy_qp0(%struct.mlx4_ib_dev* %289, i32 %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %283
  %297 = load i32, i32* @IB_QPT_SMI, align 4
  br label %300

298:                                              ; preds = %283
  %299 = load i32, i32* @IB_QPT_GSI, align 4
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32 [ %297, %296 ], [ %299, %298 ]
  %302 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %303 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @be16_to_cpu(i32 %305)
  %307 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %308 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @be32_to_cpu(i32 %310)
  %312 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %313 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @be32_to_cpu(i32 %315)
  %317 = load %struct.mlx4_tunnel_mad*, %struct.mlx4_tunnel_mad** %8, align 8
  %318 = getelementptr inbounds %struct.mlx4_tunnel_mad, %struct.mlx4_tunnel_mad* %317, i32 0, i32 0
  %319 = call i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %284, i32 %285, i32 %288, i32 %301, i32 %306, i32 %311, i32 %316, %struct.ib_ah_attr* %10, %struct.TYPE_15__* %318)
  br label %320

320:                                              ; preds = %300, %274, %238, %229, %213, %198, %161, %126, %105, %79
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @MLX4_TUN_WRID_QPN(i32) #1

declare dso_local i32 @mlx4_ib_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_14__*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_ib_multiplex_sa_handler(i32, i32, i32, %struct.ib_sa_mad*) #1

declare dso_local i32 @mlx4_ib_multiplex_cm_handler(i32, i32, i32, %struct.ib_mad*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlx4_ib_query_ah(%struct.TYPE_16__*, %struct.ib_ah_attr*) #1

declare dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev*, i32, i32, i32, i32, i32, i32, %struct.ib_ah_attr*, %struct.TYPE_15__*) #1

declare dso_local i64 @is_proxy_qp0(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
