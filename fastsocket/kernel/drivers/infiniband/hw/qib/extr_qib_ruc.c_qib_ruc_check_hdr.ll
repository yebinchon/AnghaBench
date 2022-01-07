; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_check_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_ruc_check_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32 }
%struct.qib_ib_header = type { i32*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.qib_qp = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_BTH_MIG_REQ = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_BAD_PKEY = common dso_local global i32 0, align 4
@IB_MIG_REARM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_ruc_check_hdr(%struct.qib_ibport* %0, %struct.qib_ib_header* %1, i32 %2, %struct.qib_qp* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca %struct.qib_ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %7, align 8
  store %struct.qib_ib_header* %1, %struct.qib_ib_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.qib_qp* %3, %struct.qib_qp** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %15 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_MIG_ARMED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %160

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %160

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %29 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IB_AH_GRH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %301

36:                                               ; preds = %27
  br label %90

37:                                               ; preds = %24
  %38 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %39 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IB_AH_GRH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %301

46:                                               ; preds = %37
  %47 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %48 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %49 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @get_sguid(%struct.qib_ibport* %47, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %55 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %60 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @gid_ok(i32* %58, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %46
  br label %301

66:                                               ; preds = %46
  %67 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %68 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %73 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %80 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gid_ok(i32* %71, i32 %78, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %66
  br label %301

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %36
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %93 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @qib_get_pkey(%struct.qib_ibport* %92, i32 %95)
  %97 = call i32 @qib_pkey_ok(i32 %91, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %126, label %99

99:                                               ; preds = %90
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %101 = load i32, i32* @IB_NOTICE_TRAP_BAD_PKEY, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %104 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be16_to_cpu(i32 %107)
  %109 = ashr i32 %108, 4
  %110 = and i32 %109, 15
  %111 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %112 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %116 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %121 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @qib_bad_pqkey(%struct.qib_ibport* %100, i32 %101, i32 %102, i32 %110, i32 0, i32 %114, i32 %119, i32 %124)
  br label %301

126:                                              ; preds = %90
  %127 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %128 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be16_to_cpu(i32 %131)
  %133 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %134 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %148, label %138

138:                                              ; preds = %126
  %139 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %140 = call %struct.TYPE_17__* @ppd_from_ibp(%struct.qib_ibport* %139)
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %144 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138, %126
  br label %301

149:                                              ; preds = %138
  %150 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %151 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %150, i32 0, i32 5
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @spin_lock_irqsave(i32* %151, i64 %152)
  %154 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %155 = call i32 @qib_migrate_qp(%struct.qib_qp* %154)
  %156 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %157 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %156, i32 0, i32 5
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  br label %300

160:                                              ; preds = %19, %5
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %165 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IB_AH_GRH, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %301

172:                                              ; preds = %163
  br label %226

173:                                              ; preds = %160
  %174 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %175 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IB_AH_GRH, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %173
  br label %301

182:                                              ; preds = %173
  %183 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %184 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %185 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @get_sguid(%struct.qib_ibport* %183, i32 %188)
  store i32 %189, i32* %12, align 4
  %190 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %191 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %196 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @gid_ok(i32* %194, i32 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %182
  br label %301

202:                                              ; preds = %182
  %203 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %204 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %209 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %216 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @gid_ok(i32* %207, i32 %214, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %202
  br label %301

225:                                              ; preds = %202
  br label %226

226:                                              ; preds = %225, %172
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %229 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %230 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @qib_get_pkey(%struct.qib_ibport* %228, i32 %231)
  %233 = call i32 @qib_pkey_ok(i32 %227, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %262, label %235

235:                                              ; preds = %226
  %236 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %237 = load i32, i32* @IB_NOTICE_TRAP_BAD_PKEY, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %240 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @be16_to_cpu(i32 %243)
  %245 = ashr i32 %244, 4
  %246 = and i32 %245, 15
  %247 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %248 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %252 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %257 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @qib_bad_pqkey(%struct.qib_ibport* %236, i32 %237, i32 %238, i32 %246, i32 0, i32 %250, i32 %255, i32 %260)
  br label %301

262:                                              ; preds = %226
  %263 = load %struct.qib_ib_header*, %struct.qib_ib_header** %8, align 8
  %264 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @be16_to_cpu(i32 %267)
  %269 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %270 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %268, %272
  br i1 %273, label %283, label %274

274:                                              ; preds = %262
  %275 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %276 = call %struct.TYPE_17__* @ppd_from_ibp(%struct.qib_ibport* %275)
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %280 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %274, %262
  br label %301

284:                                              ; preds = %274
  %285 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %286 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @IB_MIG_REARM, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %299

290:                                              ; preds = %284
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %290
  %296 = load i64, i64* @IB_MIG_ARMED, align 8
  %297 = load %struct.qib_qp*, %struct.qib_qp** %10, align 8
  %298 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %295, %290, %284
  br label %300

300:                                              ; preds = %299, %149
  store i32 0, i32* %6, align 4
  br label %302

301:                                              ; preds = %283, %235, %224, %201, %181, %171, %148, %99, %88, %65, %45, %35
  store i32 1, i32* %6, align 4
  br label %302

302:                                              ; preds = %301, %300
  %303 = load i32, i32* %6, align 4
  ret i32 %303
}

declare dso_local i32 @get_sguid(%struct.qib_ibport*, i32) #1

declare dso_local i32 @gid_ok(i32*, i32, i32) #1

declare dso_local i32 @qib_pkey_ok(i32, i32) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i32 @qib_bad_pqkey(%struct.qib_ibport*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.TYPE_17__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_migrate_qp(%struct.qib_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
