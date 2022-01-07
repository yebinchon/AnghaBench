; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_create_pv_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_demux_pv_ctx = type { i64, i64, i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32, %struct.ib_device*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@DEMUX_PV_STATE_DOWN = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@DEMUX_PV_STATE_STARTING = common dso_local global i64 0, align 8
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed allocating qp0 tunnel bufs (%d)\0A\00", align 1
@IB_QPT_GSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed allocating qp1 tunnel bufs (%d)\0A\00", align 1
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@mlx4_ib_tunnel_comp_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't create tunnel CQ (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't create tunnel PD (%d)\0A\00", align 1
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Couldn't get tunnel DMA MR (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't create %s QP0 (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tunnel for\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Couldn't create %s QP1 (%d)\0A\00", align 1
@mlx4_ib_tunnel_comp_worker = common dso_local global i32 0, align 4
@mlx4_ib_sqp_comp_worker = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Couldn't arm tunnel cq (%d)\0A\00", align 1
@DEMUX_PV_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, i32, %struct.mlx4_ib_demux_pv_ctx*)* @create_pv_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pv_resources(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3, %struct.mlx4_ib_demux_pv_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %4, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %14 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %296

22:                                               ; preds = %5
  %23 = load i64, i64* @DEMUX_PV_STATE_STARTING, align 8
  %24 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %29, i32 0, i32 9
  %31 = load %struct.ib_device*, %struct.ib_device** %30, align 8
  %32 = call %struct.TYPE_8__* @to_mdev(%struct.ib_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @mlx4_master_func_num(i32 %34)
  %36 = icmp eq i64 %28, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %39 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %38, i32 %41)
  %43 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %37, %22
  %49 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %55 = load i32, i32* @IB_QPT_SMI, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx* %54, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %291

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %66 = load i32, i32* @IB_QPT_GSI, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx* %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %280

74:                                               ; preds = %64
  %75 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %13, align 4
  %77 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %82, 2
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %85, i32 0, i32 9
  %87 = load %struct.ib_device*, %struct.ib_device** %86, align 8
  %88 = load i32, i32* @mlx4_ib_tunnel_comp_handler, align 4
  %89 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32* @ib_create_cq(%struct.ib_device* %87, i32 %88, i32* null, %struct.mlx4_ib_demux_pv_ctx* %89, i32 %90, i32 0)
  %92 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @IS_ERR(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %84
  %100 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @PTR_ERR(i32* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %275

106:                                              ; preds = %84
  %107 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %107, i32 0, i32 9
  %109 = load %struct.ib_device*, %struct.ib_device** %108, align 8
  %110 = call i32* @ib_alloc_pd(%struct.ib_device* %109)
  %111 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %111, i32 0, i32 4
  store i32* %110, i32** %112, align 8
  %113 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @IS_ERR(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %106
  %119 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @PTR_ERR(i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %268

125:                                              ; preds = %106
  %126 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %130 = call i32* @ib_get_dma_mr(i32* %128, i32 %129)
  %131 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %131, i32 0, i32 5
  store i32* %130, i32** %132, align 8
  %133 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @IS_ERR(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %125
  %139 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @PTR_ERR(i32* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %261

145:                                              ; preds = %125
  %146 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %152 = load i32, i32* @IB_QPT_SMI, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %151, i32 %152, i32 %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %162 = load i32, i32* %12, align 4
  %163 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %161, i32 %162)
  br label %254

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %145
  %166 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %167 = load i32, i32* @IB_QPT_GSI, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %166, i32 %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %177 = load i32, i32* %12, align 4
  %178 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %176, i32 %177)
  br label %235

179:                                              ; preds = %165
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %184 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %183, i32 0, i32 8
  %185 = load i32, i32* @mlx4_ib_tunnel_comp_worker, align 4
  %186 = call i32 @INIT_WORK(i32* %184, i32 %185)
  br label %192

187:                                              ; preds = %179
  %188 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %189 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %188, i32 0, i32 8
  %190 = load i32, i32* @mlx4_ib_sqp_comp_worker, align 4
  %191 = call i32 @INIT_WORK(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %194 = call %struct.TYPE_8__* @to_mdev(%struct.ib_device* %193)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %204, i32 0, i32 7
  store i32* %203, i32** %205, align 8
  %206 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %210 = call i32 @ib_req_notify_cq(i32* %208, i32 %209)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %192
  %214 = load i32, i32* %12, align 4
  %215 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %214)
  br label %220

216:                                              ; preds = %192
  %217 = load i64, i64* @DEMUX_PV_STATE_ACTIVE, align 8
  %218 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %219 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  store i32 0, i32* %6, align 4
  br label %296

220:                                              ; preds = %213
  %221 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %221, i32 0, i32 7
  store i32* null, i32** %222, align 8
  %223 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %223, i32 0, i32 6
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 1
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @ib_destroy_qp(i32* %228)
  %230 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %230, i32 0, i32 6
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  store i32* null, i32** %234, align 8
  br label %235

235:                                              ; preds = %220, %172
  %236 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %242 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %241, i32 0, i32 6
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @ib_destroy_qp(i32* %246)
  br label %248

248:                                              ; preds = %240, %235
  %249 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %250 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %249, i32 0, i32 6
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  store i32* null, i32** %253, align 8
  br label %254

254:                                              ; preds = %248, %157
  %255 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %256 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @ib_dereg_mr(i32* %257)
  %259 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %260 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %259, i32 0, i32 5
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %254, %138
  %262 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %263 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @ib_dealloc_pd(i32* %264)
  %266 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %267 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %266, i32 0, i32 4
  store i32* null, i32** %267, align 8
  br label %268

268:                                              ; preds = %261, %118
  %269 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %270 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @ib_destroy_cq(i32* %271)
  %273 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %274 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %273, i32 0, i32 3
  store i32* null, i32** %274, align 8
  br label %275

275:                                              ; preds = %268, %99
  %276 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %277 = load i32, i32* @IB_QPT_GSI, align 4
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %275, %71
  %281 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %282 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %287 = load i32, i32* @IB_QPT_SMI, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %285, %280
  br label %291

291:                                              ; preds = %290, %60
  %292 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %293 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load i32, i32* %12, align 4
  store i32 %295, i32* %6, align 4
  br label %296

296:                                              ; preds = %291, %216, %19
  %297 = load i32, i32* %6, align 4
  ret i32 %297
}

declare dso_local i64 @mlx4_master_func_num(i32) #1

declare dso_local %struct.TYPE_8__* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @mlx4_ib_alloc_pv_bufs(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32* @ib_create_cq(%struct.ib_device*, i32, i32*, %struct.mlx4_ib_demux_pv_ctx*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @ib_alloc_pd(%struct.ib_device*) #1

declare dso_local i32* @ib_get_dma_mr(i32*, i32) #1

declare dso_local i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ib_req_notify_cq(i32*, i32) #1

declare dso_local i32 @ib_destroy_qp(i32*) #1

declare dso_local i32 @ib_dereg_mr(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @ib_destroy_cq(i32*) #1

declare dso_local i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
