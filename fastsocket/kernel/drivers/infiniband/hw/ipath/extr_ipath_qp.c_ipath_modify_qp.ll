; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_modify_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.ib_qp_attr = type { i32, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ipath_ibdev = type { i32, i32 }
%struct.ipath_qp = type { i32, i32, i64, i64, i32, i32, i32, i64, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.ib_event*, i32)*, i32, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IPATH_MULTICAST_LID_BASE = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_MTU_2048 = common dso_local global i64 0, align 8
@ipath_mtu4096 = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i64 0, align 8
@IB_MIG_REARM = common dso_local global i64 0, align 8
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IPATH_MAX_RDMA_ATOMIC = common dso_local global i64 0, align 8
@IPATH_S_ANY_WAIT = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.ipath_ibdev*, align 8
  %10 = alloca %struct.ipath_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_event.0, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call %struct.ipath_ibdev* @to_idev(%struct.TYPE_10__* %18)
  store %struct.ipath_ibdev* %19, %struct.ipath_ibdev** %9, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = call %struct.ipath_qp* @to_iqp(%struct.ib_qp* %20)
  store %struct.ipath_qp* %21, %struct.ipath_qp** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %23 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %22, i32 0, i32 8
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %37

33:                                               ; preds = %4
  %34 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %35 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IB_QP_STATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %46, %43 ], [ %48, %47 ]
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %54 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ib_modify_qp_is_ok(i32 %51, i32 %52, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %512

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IB_QP_AV, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %66, i32 0, i32 13
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPATH_MULTICAST_LID_BASE, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %65
  br label %512

79:                                               ; preds = %71
  %80 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %80, i32 0, i32 13
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IB_AH_GRH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %88, i32 0, i32 13
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %512

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %60
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %106 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ipath_get_npkeys(i32 %107)
  %109 = icmp sge i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %512

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 31
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %512

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %112
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @IB_QP_PORT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %129
  %135 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %139 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %137, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134, %129
  br label %512

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %124
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @ib_mtu_enum_to_int(i64 %154)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %166, label %157

157:                                              ; preds = %151
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IB_MTU_2048, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, i32* @ipath_mtu4096, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163, %151
  br label %512

167:                                              ; preds = %163, %157, %146
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IB_MIG_MIGRATED, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %180 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IB_MIG_REARM, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %512

185:                                              ; preds = %178, %172
  br label %186

186:                                              ; preds = %185, %167
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IPATH_MAX_RDMA_ATOMIC, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %512

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %186
  %200 = load i32, i32* %12, align 4
  switch i32 %200, label %294 [
    i32 130, label %201
    i32 129, label %264
    i32 128, label %278
    i32 131, label %290
  ]

201:                                              ; preds = %199
  %202 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %203 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 130
  br i1 %205, label %206, label %258

206:                                              ; preds = %201
  %207 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %208 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %207, i32 0, i32 0
  store i32 130, i32* %208, align 8
  %209 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %210 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %209, i32 0, i32 0
  %211 = call i32 @spin_lock(i32* %210)
  %212 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %213 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %212, i32 0, i32 30
  %214 = call i32 @list_empty(i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %206
  %217 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %218 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %217, i32 0, i32 30
  %219 = call i32 @list_del_init(i32* %218)
  br label %220

220:                                              ; preds = %216, %206
  %221 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %222 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %221, i32 0, i32 29
  %223 = call i32 @list_empty(i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %227 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %226, i32 0, i32 29
  %228 = call i32 @list_del_init(i32* %227)
  br label %229

229:                                              ; preds = %225, %220
  %230 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %231 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %230, i32 0, i32 0
  %232 = call i32 @spin_unlock(i32* %231)
  %233 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %236 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %235, i32 0, i32 28
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %240 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %239, i32 0, i32 8
  %241 = call i32 @spin_unlock_irq(i32* %240)
  %242 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %243 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %242, i32 0, i32 27
  %244 = call i32 @tasklet_kill(i32* %243)
  %245 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %246 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %245, i32 0, i32 26
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %249 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %248, i32 0, i32 25
  %250 = call i32 @atomic_read(i32* %249)
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @wait_event(i32 %247, i32 %253)
  %255 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %256 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %255, i32 0, i32 8
  %257 = call i32 @spin_lock_irq(i32* %256)
  br label %258

258:                                              ; preds = %229, %201
  %259 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %260 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %261 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @ipath_reset_qp(%struct.ipath_qp* %259, i32 %262)
  br label %298

264:                                              ; preds = %199
  %265 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %266 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %265, i32 0, i32 24
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %269 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %268, i32 0, i32 23
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %267, %270
  %272 = zext i1 %271 to i32
  %273 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %274 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %277 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  br label %298

278:                                              ; preds = %199
  %279 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %280 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IB_QPT_RC, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %278
  br label %512

286:                                              ; preds = %278
  %287 = load i32, i32* %12, align 4
  %288 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %289 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  br label %298

290:                                              ; preds = %199
  %291 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %292 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %293 = call i32 @ipath_error_qp(%struct.ipath_qp* %291, i32 %292)
  store i32 %293, i32* %13, align 4
  br label %298

294:                                              ; preds = %199
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %297 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %294, %290, %286, %264, %258
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %305 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %308 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %307, i32 0, i32 2
  store i64 %306, i64* %308, align 8
  br label %309

309:                                              ; preds = %303, %298
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %316 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %315, i32 0, i32 17
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %319 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %318, i32 0, i32 22
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %314, %309
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %339

325:                                              ; preds = %320
  %326 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %327 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %326, i32 0, i32 16
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %330 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %329, i32 0, i32 19
  store i64 %328, i64* %330, align 8
  %331 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %332 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %331, i32 0, i32 21
  store i64 %328, i64* %332, align 8
  %333 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %334 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %333, i32 0, i32 19
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %335, 1
  %337 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %338 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %337, i32 0, i32 20
  store i64 %336, i64* %338, align 8
  br label %339

339:                                              ; preds = %325, %320
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %339
  %345 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %346 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %345, i32 0, i32 15
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %349 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %348, i32 0, i32 18
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %344, %339
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %357 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %356, i32 0, i32 14
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %360 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %359, i32 0, i32 17
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %355, %350
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* @IB_QP_AV, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %380

366:                                              ; preds = %361
  %367 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %368 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %367, i32 0, i32 16
  %369 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %370 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %369, i32 0, i32 13
  %371 = bitcast %struct.TYPE_9__* %368 to i8*
  %372 = bitcast %struct.TYPE_9__* %370 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %371, i8* align 8 %372, i64 24, i1 false)
  %373 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %374 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %373, i32 0, i32 13
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @ipath_ib_rate_to_mult(i32 %376)
  %378 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %379 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %378, i32 0, i32 15
  store i32 %377, i32* %379, align 4
  br label %380

380:                                              ; preds = %366, %361
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %387 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %390 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %389, i32 0, i32 3
  store i64 %388, i64* %390, align 8
  br label %391

391:                                              ; preds = %385, %380
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %398 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %397, i32 0, i32 12
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %401 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %400, i32 0, i32 13
  store i32 %399, i32* %401, align 4
  %402 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %403 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %402, i32 0, i32 14
  store i32 %399, i32* %403, align 8
  br label %404

404:                                              ; preds = %396, %391
  %405 = load i32, i32* %7, align 4
  %406 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %428

409:                                              ; preds = %404
  %410 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %411 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %410, i32 0, i32 8
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %414 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %413, i32 0, i32 4
  store i32 %412, i32* %414, align 8
  %415 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %416 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = icmp sgt i32 %417, 7
  br i1 %418, label %419, label %422

419:                                              ; preds = %409
  %420 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %421 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %420, i32 0, i32 4
  store i32 7, i32* %421, align 8
  br label %422

422:                                              ; preds = %419, %409
  %423 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %424 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %427 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %426, i32 0, i32 5
  store i32 %425, i32* %427, align 4
  br label %428

428:                                              ; preds = %422, %404
  %429 = load i32, i32* %7, align 4
  %430 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %428
  %434 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %435 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %438 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %437, i32 0, i32 6
  store i32 %436, i32* %438, align 8
  br label %439

439:                                              ; preds = %433, %428
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %446 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %445, i32 0, i32 11
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %449 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %448, i32 0, i32 12
  store i32 %447, i32* %449, align 8
  br label %450

450:                                              ; preds = %444, %439
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* @IB_QP_QKEY, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %457 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %456, i32 0, i32 10
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %460 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %459, i32 0, i32 11
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %455, %450
  %462 = load i32, i32* %7, align 4
  %463 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %461
  %467 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %468 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %467, i32 0, i32 7
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %471 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %470, i32 0, i32 7
  store i64 %469, i64* %471, align 8
  br label %472

472:                                              ; preds = %466, %461
  %473 = load i32, i32* %7, align 4
  %474 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %483

477:                                              ; preds = %472
  %478 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %479 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %478, i32 0, i32 9
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %482 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %481, i32 0, i32 10
  store i32 %480, i32* %482, align 8
  br label %483

483:                                              ; preds = %477, %472
  %484 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %485 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %484, i32 0, i32 8
  %486 = call i32 @spin_unlock_irq(i32* %485)
  %487 = load i32, i32* %13, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %511

489:                                              ; preds = %483
  %490 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %491 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %490, i32 0, i32 9
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %15, i32 0, i32 2
  store i32 %493, i32* %494, align 8
  %495 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %496 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %495, i32 0, i32 9
  %497 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %15, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 0
  store %struct.TYPE_8__* %496, %struct.TYPE_8__** %498, align 8
  %499 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %500 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %15, i32 0, i32 0
  store i32 %499, i32* %500, align 8
  %501 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %502 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %501, i32 0, i32 9
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 1
  %504 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %503, align 8
  %505 = bitcast %struct.ib_event.0* %15 to %struct.ib_event*
  %506 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %507 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %506, i32 0, i32 9
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call i32 %504(%struct.ib_event* %505, i32 %509)
  br label %511

511:                                              ; preds = %489, %483
  store i32 0, i32* %14, align 4
  br label %518

512:                                              ; preds = %285, %197, %184, %166, %144, %122, %110, %94, %78, %59
  %513 = load %struct.ipath_qp*, %struct.ipath_qp** %10, align 8
  %514 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %513, i32 0, i32 8
  %515 = call i32 @spin_unlock_irq(i32* %514)
  %516 = load i32, i32* @EINVAL, align 4
  %517 = sub nsw i32 0, %516
  store i32 %517, i32* %14, align 4
  br label %518

518:                                              ; preds = %512, %511
  %519 = load i32, i32* %14, align 4
  ret i32 %519
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.TYPE_10__*) #1

declare dso_local %struct.ipath_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i64 @ipath_get_npkeys(i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ipath_reset_qp(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_error_qp(%struct.ipath_qp*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipath_ib_rate_to_mult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
