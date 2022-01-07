; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_smp = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@IB_DEVICE_CHANGE_PHY_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_APM = common dso_local global i32 0, align 4
@IB_DEVICE_AUTO_PATH_MIG = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_UD_AV_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_UD_AV_PORT_ENFORCE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_IPOIB_CSUM = common dso_local global i32 0, align 4
@IB_DEVICE_UD_IP_CSUM = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_BLH = common dso_local global i32 0, align 4
@IB_DEVICE_UD_TSO = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_RESERVED_LKEY = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_LOCAL_INV = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_REMOTE_INV = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_FAST_REG_WR = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_XRC = common dso_local global i32 0, align 4
@IB_DEVICE_XRC = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_WIN_TYPE_2B = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW_TYPE_2B = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW_TYPE_2A = common dso_local global i32 0, align 4
@MLX4_IB_SQ_MAX_SPARE = common dso_local global i64 0, align 8
@MLX4_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_ATOMIC = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*)* @mlx4_ib_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca %struct.ib_smp*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx4_ib_dev* %10, %struct.mlx4_ib_dev** %5, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %6, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_smp* @kzalloc(i32 16, i32 %13)
  store %struct.ib_smp* %14, %struct.ib_smp** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ib_smp* @kmalloc(i32 16, i32 %15)
  store %struct.ib_smp* %16, %struct.ib_smp** %7, align 8
  %17 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %18 = icmp ne %struct.ib_smp* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %21 = icmp ne %struct.ib_smp* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  br label %557

23:                                               ; preds = %19
  %24 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %25 = call i32 @init_query_mad(%struct.ib_smp* %24)
  %26 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %27 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %28 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %30 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %29)
  %31 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  %32 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %33 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %34 = call i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %30, i32 %31, i32 1, i32* null, i32* null, %struct.ib_smp* %32, %struct.ib_smp* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %557

38:                                               ; preds = %23
  %39 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %40 = call i32 @memset(%struct.ib_device_attr* %39, i32 0, i32 168)
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 28
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %48 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %47, i32 0, i32 29
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @IB_DEVICE_CHANGE_PHY_PORT, align 4
  %50 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IB_DEVICE_BLOCK_MULTICAST_LOOPBACK, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %59 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MLX4_DEV_CAP_FLAG_BAD_PKEY_CNTR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %38
  %70 = load i32, i32* @IB_DEVICE_BAD_PKEY_CNTR, align 4
  %71 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %72 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %38
  %76 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MLX4_DEV_CAP_FLAG_BAD_QKEY_CNTR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @IB_DEVICE_BAD_QKEY_CNTR, align 4
  %87 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %88 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %75
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MLX4_DEV_CAP_FLAG_APM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i32, i32* @IB_DEVICE_AUTO_PATH_MIG, align 4
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %91
  %108 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MLX4_DEV_CAP_FLAG_UD_AV_PORT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load i32, i32* @IB_DEVICE_UD_AV_PORT_ENFORCE, align 4
  %119 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %120 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %107
  %124 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MLX4_DEV_CAP_FLAG_IPOIB_CSUM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %123
  %134 = load i32, i32* @IB_DEVICE_UD_IP_CSUM, align 4
  %135 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %136 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %123
  %140 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 27
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %139
  %148 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %149 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MLX4_DEV_CAP_FLAG_BLH, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load i32, i32* @IB_DEVICE_UD_TSO, align 4
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %147, %139
  %164 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %165 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MLX4_BMME_FLAG_RESERVED_LKEY, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %175 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %176 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %163
  %180 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MLX4_BMME_FLAG_LOCAL_INV, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %179
  %190 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %191 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MLX4_BMME_FLAG_REMOTE_INV, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %189
  %200 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %200, i32 0, i32 0
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MLX4_BMME_FLAG_FAST_REG_WR, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %199
  %210 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %211 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %212 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %209, %199, %189, %179
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 0
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MLX4_DEV_CAP_FLAG_XRC, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %215
  %226 = load i32, i32* @IB_DEVICE_XRC, align 4
  %227 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %228 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %215
  %232 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %233 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %231
  %242 = load i32, i32* @IB_DEVICE_MEM_WINDOW, align 4
  %243 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %244 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %231
  %248 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %249 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %248, i32 0, i32 0
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %280

257:                                              ; preds = %247
  %258 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @MLX4_BMME_FLAG_WIN_TYPE_2B, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %257
  %268 = load i32, i32* @IB_DEVICE_MEM_WINDOW_TYPE_2B, align 4
  %269 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %270 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %279

273:                                              ; preds = %257
  %274 = load i32, i32* @IB_DEVICE_MEM_WINDOW_TYPE_2A, align 4
  %275 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %276 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %267
  br label %280

280:                                              ; preds = %279, %247
  %281 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %282 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, 36
  %285 = inttoptr i64 %284 to i32*
  %286 = call i32 @be32_to_cpup(i32* %285)
  %287 = and i32 %286, 16777215
  %288 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %289 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %290, i32 0, i32 0
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %298 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %297, i32 0, i32 28
  store i32 %296, i32* %298, align 8
  %299 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %300 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, 32
  %303 = inttoptr i64 %302 to i32*
  %304 = call i32 @be32_to_cpup(i32* %303)
  %305 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %306 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 8
  %307 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %308 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %307, i32 0, i32 27
  %309 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %310 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, 4
  %313 = call i32 @memcpy(i32* %308, i64 %312, i32 8)
  %314 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %315 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %314, i32 0, i32 3
  store i64 -1, i64* %315, align 8
  %316 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %317 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %316, i32 0, i32 0
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 26
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %323 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %322, i32 0, i32 26
  store i32 %321, i32* %323, align 8
  %324 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %325 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %324, i32 0, i32 0
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %331 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %330, i32 0, i32 0
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 %329, %335
  %337 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %338 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 8
  %339 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %340 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %339, i32 0, i32 0
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 25
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @MLX4_IB_SQ_MAX_SPARE, align 8
  %346 = sub nsw i64 %344, %345
  %347 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %348 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %347, i32 0, i32 25
  store i64 %346, i64* %348, align 8
  %349 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %350 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %349, i32 0, i32 0
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 24
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %356 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %355, i32 0, i32 0
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 23
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @min(i32 %354, i32 %360)
  %362 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %363 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %362, i32 0, i32 24
  store i32 %361, i32* %363, align 8
  %364 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %365 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %364, i32 0, i32 0
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 22
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %371 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %370, i32 0, i32 0
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 21
  %375 = load i64, i64* %374, align 8
  %376 = sub nsw i64 %369, %375
  %377 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %378 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %377, i32 0, i32 23
  store i64 %376, i64* %378, align 8
  %379 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %380 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %379, i32 0, i32 0
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 20
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %386 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %385, i32 0, i32 22
  store i32 %384, i32* %386, align 8
  %387 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %388 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %387, i32 0, i32 0
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 19
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %394 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %393, i32 0, i32 0
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 18
  %398 = load i64, i64* %397, align 8
  %399 = sub nsw i64 %392, %398
  %400 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %401 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %400, i32 0, i32 21
  store i64 %399, i64* %401, align 8
  %402 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %403 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %402, i32 0, i32 0
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 17
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %409 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %408, i32 0, i32 0
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 16
  %413 = load i64, i64* %412, align 8
  %414 = sub nsw i64 %407, %413
  %415 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %416 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %415, i32 0, i32 20
  store i64 %414, i64* %416, align 8
  %417 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %418 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %417, i32 0, i32 0
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %424 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %423, i32 0, i32 5
  store i32 %422, i32* %424, align 4
  %425 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %426 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %425, i32 0, i32 0
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 15
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %432 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %431, i32 0, i32 19
  store i32 %430, i32* %432, align 8
  %433 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %434 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %437 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 8
  %439 = mul nsw i32 %435, %438
  %440 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %441 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %440, i32 0, i32 6
  store i32 %439, i32* %441, align 8
  %442 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %443 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %442, i32 0, i32 0
  %444 = load %struct.TYPE_5__*, %struct.TYPE_5__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 14
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %449 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %448, i32 0, i32 0
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 13
  %453 = load i64, i64* %452, align 8
  %454 = sub nsw i64 %447, %453
  %455 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %456 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %455, i32 0, i32 18
  store i64 %454, i64* %456, align 8
  %457 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %458 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %457, i32 0, i32 0
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 12
  %462 = load i64, i64* %461, align 8
  %463 = sub nsw i64 %462, 1
  %464 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %465 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %464, i32 0, i32 17
  store i64 %463, i64* %465, align 8
  %466 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %467 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %466, i32 0, i32 0
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 11
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %473 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %472, i32 0, i32 16
  store i32 %471, i32* %473, align 8
  %474 = load i32, i32* @MLX4_MAX_FAST_REG_PAGES, align 4
  %475 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %476 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %475, i32 0, i32 15
  store i32 %474, i32* %476, align 4
  %477 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %478 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %477, i32 0, i32 0
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 10
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %484 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %483, i32 0, i32 14
  store i32 %482, i32* %484, align 8
  %485 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %486 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %485, i32 0, i32 0
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @MLX4_DEV_CAP_FLAG_ATOMIC, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %280
  %495 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %498

496:                                              ; preds = %280
  %497 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %498

498:                                              ; preds = %496, %494
  %499 = phi i32 [ %495, %494 ], [ %497, %496 ]
  %500 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %501 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %500, i32 0, i32 12
  store i32 %499, i32* %501, align 8
  %502 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %503 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %502, i32 0, i32 12
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %506 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %505, i32 0, i32 13
  store i32 %504, i32* %506, align 4
  %507 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %508 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %507, i32 0, i32 0
  %509 = load %struct.TYPE_5__*, %struct.TYPE_5__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 9
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 1
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %516 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %515, i32 0, i32 11
  store i32 %514, i32* %516, align 4
  %517 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %518 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %517, i32 0, i32 0
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 5
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %524 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %523, i32 0, i32 0
  %525 = load %struct.TYPE_5__*, %struct.TYPE_5__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 8
  %529 = add nsw i32 %522, %528
  %530 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %531 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %530, i32 0, i32 7
  store i32 %529, i32* %531, align 4
  %532 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %533 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %532, i32 0, i32 0
  %534 = load %struct.TYPE_5__*, %struct.TYPE_5__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %539 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %538, i32 0, i32 8
  store i32 %537, i32* %539, align 8
  %540 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %541 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %540, i32 0, i32 8
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %544 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %543, i32 0, i32 7
  %545 = load i32, i32* %544, align 4
  %546 = mul nsw i32 %542, %545
  %547 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %548 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %547, i32 0, i32 9
  store i32 %546, i32* %548, align 4
  %549 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %550 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %549, i32 0, i32 0
  %551 = load %struct.TYPE_5__*, %struct.TYPE_5__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %552, i32 0, i32 8
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %556 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %555, i32 0, i32 10
  store i32 %554, i32* %556, align 8
  br label %557

557:                                              ; preds = %498, %37, %22
  %558 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %559 = call i32 @kfree(%struct.ib_smp* %558)
  %560 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %561 = call i32 @kfree(%struct.ib_smp* %560)
  %562 = load i32, i32* %8, align 4
  ret i32 %562
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
