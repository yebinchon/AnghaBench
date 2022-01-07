; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_send_to_wire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_send_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64*** }
%struct.TYPE_14__ = type { %struct.mlx4_ib_demux_pv_ctx** }
%struct.mlx4_ib_demux_pv_ctx = type { i64, %struct.TYPE_21__*, i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.TYPE_21__ = type { i32 }
%struct.mlx4_ib_demux_pv_qp = type { i32, i32, %struct.TYPE_20__*, i32, %struct.ib_qp* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.ib_ah* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.ib_ah = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ib_ah_attr = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_send_wr = type { i32, i32, i32, i32, %struct.ib_sge*, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64, i8*, i8*, %struct.ib_ah* }
%struct.mlx4_mad_snd_buf = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@DEMUX_PV_STATE_ACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5, i8* %6, %struct.ib_ah_attr* %7, %struct.ib_mad* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ib_ah_attr*, align 8
  %19 = alloca %struct.ib_mad*, align 8
  %20 = alloca %struct.ib_sge, align 4
  %21 = alloca %struct.ib_send_wr, align 8
  %22 = alloca %struct.ib_send_wr*, align 8
  %23 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %24 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %25 = alloca %struct.mlx4_mad_snd_buf*, align 8
  %26 = alloca %struct.ib_ah*, align 8
  %27 = alloca %struct.ib_qp*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.ib_ah_attr* %7, %struct.ib_ah_attr** %18, align 8
  store %struct.ib_mad* %8, %struct.ib_mad** %19, align 8
  store %struct.ib_qp* null, %struct.ib_qp** %27, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.mlx4_ib_demux_pv_ctx**, %struct.mlx4_ib_demux_pv_ctx*** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %36, i64 %39
  %41 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %40, align 8
  store %struct.mlx4_ib_demux_pv_ctx* %41, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %42 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %43 = icmp ne %struct.mlx4_ib_demux_pv_ctx* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %9
  %45 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DEMUX_PV_STATE_ACTIVE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %9
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %312

53:                                               ; preds = %44
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @IB_QPT_SMI, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mlx4_master_func_num(i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %312

67:                                               ; preds = %57, %53
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IB_QPT_SMI, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  store i32 0, i32* %31, align 4
  %72 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %72, i32 0, i32 3
  %74 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %73, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %74, i64 0
  store %struct.mlx4_ib_demux_pv_qp* %75, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %76 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64***, i64**** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64**, i64*** %79, i64 %81
  %83 = load i64**, i64*** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %83, i64 %86
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %30, align 8
  br label %112

91:                                               ; preds = %67
  store i32 1, i32* %31, align 4
  %92 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %92, i32 0, i32 3
  %94 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %93, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %94, i64 1
  store %struct.mlx4_ib_demux_pv_qp* %95, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %96 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64***, i64**** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64**, i64*** %99, i64 %101
  %103 = load i64**, i64*** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %103, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %30, align 8
  br label %112

112:                                              ; preds = %91, %71
  %113 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %113, i32 0, i32 4
  %115 = load %struct.ib_qp*, %struct.ib_qp** %114, align 8
  store %struct.ib_qp* %115, %struct.ib_qp** %27, align 8
  %116 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %18, align 8
  %117 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %32, align 4
  %120 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %18, align 8
  %121 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %18, align 8
  %127 = call %struct.ib_ah* @ib_create_ah(i32 %125, %struct.ib_ah_attr* %126)
  store %struct.ib_ah* %127, %struct.ib_ah** %26, align 8
  %128 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %129 = call i64 @IS_ERR(%struct.ib_ah* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %112
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %312

134:                                              ; preds = %112
  %135 = load i32, i32* %32, align 4
  %136 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %18, align 8
  %137 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %32, align 4
  %140 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %141 = call %struct.TYPE_13__* @to_mah(%struct.ib_ah* %140)
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = call i32 @cpu_to_be32(i32 2147483647)
  %146 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %147 = call %struct.TYPE_13__* @to_mah(%struct.ib_ah* %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %145
  store i32 %152, i32* %150, align 4
  %153 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %154 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %153, i32 0, i32 3
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  %163 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp sge i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %134
  %167 = load i32, i32* @EAGAIN, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %29, align 4
  br label %177

169:                                              ; preds = %134
  %170 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %171 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %175 = sub nsw i32 %174, 1
  %176 = and i32 %173, %175
  store i32 %176, i32* %28, align 4
  br label %177

177:                                              ; preds = %169, %166
  %178 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %178, i32 0, i32 3
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load i32, i32* %29, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %304

184:                                              ; preds = %177
  %185 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %185, i32 0, i32 2
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = load i32, i32* %28, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to %struct.mlx4_mad_snd_buf*
  store %struct.mlx4_mad_snd_buf* %194, %struct.mlx4_mad_snd_buf** %25, align 8
  %195 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %195, i32 0, i32 2
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load i32, i32* %28, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load %struct.ib_ah*, %struct.ib_ah** %201, align 8
  %203 = icmp ne %struct.ib_ah* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %184
  %205 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %205, i32 0, i32 2
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = load i32, i32* %28, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  %212 = load %struct.ib_ah*, %struct.ib_ah** %211, align 8
  %213 = call i32 @ib_destroy_ah(%struct.ib_ah* %212)
  br label %214

214:                                              ; preds = %204, %184
  %215 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %216 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %216, i32 0, i32 2
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = load i32, i32* %28, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  store %struct.ib_ah* %215, %struct.ib_ah** %222, align 8
  %223 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %223, i32 0, i32 0
  %225 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %225, i32 0, i32 2
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = load i32, i32* %28, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @DMA_TO_DEVICE, align 4
  %235 = call i32 @ib_dma_sync_single_for_cpu(i32* %224, i32 %233, i32 4, i32 %234)
  %236 = load %struct.mlx4_mad_snd_buf*, %struct.mlx4_mad_snd_buf** %25, align 8
  %237 = getelementptr inbounds %struct.mlx4_mad_snd_buf, %struct.mlx4_mad_snd_buf* %236, i32 0, i32 0
  %238 = load %struct.ib_mad*, %struct.ib_mad** %19, align 8
  %239 = call i32 @memcpy(i32* %237, %struct.ib_mad* %238, i32 4)
  %240 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %241 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %240, i32 0, i32 0
  %242 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %243 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %242, i32 0, i32 2
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = load i32, i32* %28, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @DMA_TO_DEVICE, align 4
  %252 = call i32 @ib_dma_sync_single_for_device(i32* %241, i32 %250, i32 4, i32 %251)
  %253 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %24, align 8
  %254 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %253, i32 0, i32 2
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = load i32, i32* %28, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %20, i32 0, i32 2
  store i32 %261, i32* %262, align 4
  %263 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %20, i32 0, i32 0
  store i32 4, i32* %263, align 4
  %264 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %23, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %264, i32 0, i32 1
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %20, i32 0, i32 1
  store i32 %268, i32* %269, align 4
  %270 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %271 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 4
  store %struct.ib_ah* %270, %struct.ib_ah** %273, align 8
  %274 = load i32, i32* %13, align 4
  %275 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load i64, i64* %30, align 8
  %279 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 6
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 1
  store i64 %278, i64* %281, align 8
  %282 = load i8*, i8** %17, align 8
  %283 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 3
  store i8* %282, i8** %285, align 8
  %286 = load i8*, i8** %16, align 8
  %287 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 6
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 2
  store i8* %286, i8** %289, align 8
  %290 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 5
  store i32* null, i32** %290, align 8
  %291 = load i32, i32* %28, align 4
  %292 = load i32, i32* %31, align 4
  %293 = call i32 @MLX4_TUN_SET_WRID_QPN(i32 %292)
  %294 = or i32 %291, %293
  %295 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 0
  store i32 %294, i32* %295, align 8
  %296 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 4
  store %struct.ib_sge* %20, %struct.ib_sge** %296, align 8
  %297 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 1
  store i32 1, i32* %297, align 4
  %298 = load i32, i32* @IB_WR_SEND, align 4
  %299 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 3
  store i32 %298, i32* %299, align 4
  %300 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %301 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 2
  store i32 %300, i32* %301, align 8
  %302 = load %struct.ib_qp*, %struct.ib_qp** %27, align 8
  %303 = call i32 @ib_post_send(%struct.ib_qp* %302, %struct.ib_send_wr* %21, %struct.ib_send_wr** %22)
  store i32 %303, i32* %29, align 4
  br label %304

304:                                              ; preds = %214, %183
  %305 = load i32, i32* %29, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.ib_ah*, %struct.ib_ah** %26, align 8
  %309 = call i32 @ib_destroy_ah(%struct.ib_ah* %308)
  br label %310

310:                                              ; preds = %307, %304
  %311 = load i32, i32* %29, align 4
  store i32 %311, i32* %10, align 4
  br label %312

312:                                              ; preds = %310, %131, %64, %50
  %313 = load i32, i32* %10, align 4
  ret i32 %313
}

declare dso_local i32 @mlx4_master_func_num(i32) #1

declare dso_local %struct.ib_ah* @ib_create_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local %struct.TYPE_13__* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ib_destroy_ah(%struct.ib_ah*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ib_mad*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @MLX4_TUN_SET_WRID_QPN(i32) #1

declare dso_local i32 @ib_post_send(%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
