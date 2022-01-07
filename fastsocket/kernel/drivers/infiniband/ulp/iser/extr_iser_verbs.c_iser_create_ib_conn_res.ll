; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_ib_conn_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_create_ib_conn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iser_conn = type { i32, i32, i32, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_5__*, i8*, i8*, %struct.iser_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.iser_device = type { i32, i64*, i32, i32*, i32*, i32 }
%struct.ib_qp_init_attr = type { i32, i32, %struct.TYPE_6__, i32, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ib_fmr_pool_param = type { i32, i32, i32, i32, i32*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ISCSI_ISER_SG_TABLESIZE = common dso_local global i32 0, align 4
@SHIFT_4K = common dso_local global i32 0, align 4
@ISCSI_DEF_XMIT_CMDS_MAX = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"FMRs are not supported, using unaligned mode\0A\00", align 1
@ig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cq index %d used for ib_conn %p\0A\00", align 1
@iser_qp_event_callback = common dso_local global i32 0, align 4
@ISER_QP_MAX_REQ_DTOS = common dso_local global i32 0, align 4
@ISER_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"setting conn %p cma_id %p: fmr_pool %p qp %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unable to alloc mem or create resource, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_conn*)* @iser_create_ib_conn_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_create_ib_conn_res(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca %struct.ib_qp_init_attr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_fmr_pool_param, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 9
  %16 = load %struct.iser_device*, %struct.iser_device** %15, align 8
  %17 = icmp eq %struct.iser_device* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 9
  %22 = load %struct.iser_device*, %struct.iser_device** %21, align 8
  store %struct.iser_device* %22, %struct.iser_device** %4, align 8
  %23 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %24 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %32 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %300

36:                                               ; preds = %1
  %37 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %38 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %41 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %43 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %48 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %50 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %49, i32 0, i32 9
  %51 = load %struct.iser_device*, %struct.iser_device** %50, align 8
  %52 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %55 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i8* @ib_dma_map_single(i32 %53, i8* %58, i32 %59, i32 %60)
  %62 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %63 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %65 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %64, i32 0, i32 9
  %66 = load %struct.iser_device*, %struct.iser_device** %65, align 8
  %67 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %70 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = call i8* @ib_dma_map_single(i32 %68, i8* %73, i32 %74, i32 %75)
  %77 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %78 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %80 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @ib_dma_mapping_error(i32 %81, i8* %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %87 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %90 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %89, i32 0, i32 7
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @ib_dma_mapping_error(i32 %88, i8* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %36
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95, %36
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %103 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %102, i32 0, i32 8
  store i8* null, i8** %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %109 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %108, i32 0, i32 7
  store i8* null, i8** %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %300

111:                                              ; preds = %95
  %112 = load i32, i32* @ISCSI_ISER_SG_TABLESIZE, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = add i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @kmalloc(i32 %117, i32 %118)
  %120 = bitcast i8* %119 to %struct.TYPE_5__*
  %121 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %122 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %121, i32 0, i32 6
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %122, align 8
  %123 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %124 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %123, i32 0, i32 6
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = icmp ne %struct.TYPE_5__* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %111
  br label %300

128:                                              ; preds = %111
  %129 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %130 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %129, i32 0, i32 6
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 1
  %133 = bitcast %struct.TYPE_5__* %132 to i32*
  %134 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %135 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %134, i32 0, i32 6
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32* %133, i32** %137, align 8
  %138 = load i32, i32* @SHIFT_4K, align 4
  %139 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 6
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* @ISCSI_ISER_SG_TABLESIZE, align 4
  %141 = add nsw i32 %140, 1
  %142 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 0
  store i32 %141, i32* %142, align 8
  %143 = load i32, i32* @ISCSI_DEF_XMIT_CMDS_MAX, align 4
  %144 = mul nsw i32 %143, 2
  %145 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @ISCSI_DEF_XMIT_CMDS_MAX, align 4
  %147 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 2
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 4
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %151 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %154 = or i32 %152, %153
  %155 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %9, i32 0, i32 3
  store i32 %154, i32* %155, align 4
  %156 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %157 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32* @ib_create_fmr_pool(i32 %158, %struct.ib_fmr_pool_param* %9)
  %160 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %161 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %160, i32 0, i32 4
  store i32* %159, i32** %161, align 8
  %162 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %163 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @PTR_ERR(i32* %164)
  store i32 %165, i32* %8, align 4
  %166 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %167 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = call i64 @IS_ERR(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %128
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @ENOSYS, align 4
  %174 = sub nsw i32 0, %173
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %178 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %177, i32 0, i32 4
  store i32* null, i32** %178, align 8
  br label %300

179:                                              ; preds = %171, %128
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @ENOSYS, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %186 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %185, i32 0, i32 4
  store i32* null, i32** %186, align 8
  %187 = call i32 @iser_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188
  %190 = call i32 @memset(%struct.ib_qp_init_attr* %5, i32 0, i32 48)
  %191 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ig, i32 0, i32 0))
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %217, %189
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %195 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %220

198:                                              ; preds = %192
  %199 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %200 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %207 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %205, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %198
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %214, %198
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %192

220:                                              ; preds = %192
  %221 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %222 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %221, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  %229 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ig, i32 0, i32 0))
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %232 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %230, %struct.iser_conn* %231)
  %233 = load i32, i32* @iser_qp_event_callback, align 4
  %234 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 6
  store i32 %233, i32* %234, align 8
  %235 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %236 = bitcast %struct.iser_conn* %235 to i8*
  %237 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 5
  store i8* %236, i8** %237, align 8
  %238 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %239 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 4
  store i32 %244, i32* %245, align 4
  %246 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %247 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 3
  store i32 %252, i32* %253, align 8
  %254 = load i32, i32* @ISER_QP_MAX_REQ_DTOS, align 4
  %255 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %258 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  store i32 2, i32* %261, align 8
  %262 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 4
  %264 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %265 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 1
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* @IB_QPT_RC, align 4
  %267 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 0
  store i32 %266, i32* %267, align 8
  %268 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %269 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %268, i32 0, i32 3
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %272 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @rdma_create_qp(%struct.TYPE_7__* %270, i32 %273, %struct.ib_qp_init_attr* %5)
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %220
  br label %300

278:                                              ; preds = %220
  %279 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %280 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %279, i32 0, i32 3
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %285 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 8
  %286 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %287 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %288 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %287, i32 0, i32 3
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %291 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %294 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %293, i32 0, i32 3
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.iser_conn* %286, %struct.TYPE_7__* %289, i32* %292, i32 %297)
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %2, align 4
  br label %304

300:                                              ; preds = %277, %176, %127, %110, %35
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @iser_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* %8, align 4
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %300, %278
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32* @ib_create_fmr_pool(i32, %struct.ib_fmr_pool_param*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @iser_warn(i8*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_info(i8*, ...) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_7__*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
