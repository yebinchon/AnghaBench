; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.bfa_fcport_s = type { i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, i32, i32, %struct.TYPE_19__, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %union.bfi_fcport_i2h_msg_u }
%union.bfi_fcport_i2h_msg_u = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@hal_port_sm_table = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_TRUNK_OFFLINE = common dso_local global i32 0, align 4
@BFA_TRUNK_DISABLED = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_QOS_OFFLINE = common dso_local global i32 0, align 4
@BFA_QOS_DISABLED = common dso_local global i32 0, align 4
@BFA_BBCR_OFFLINE = common dso_local global i8* null, align 8
@BFA_BBCR_DISABLED = common dso_local global i8* null, align 8
@BFA_FCPORT_SM_FWRSP = common dso_local global i32 0, align 4
@BFA_PORT_LINKUP = common dso_local global i32 0, align 4
@BFA_FCPORT_SM_LINKUP = common dso_local global i32 0, align 4
@BFA_PORT_LINKSTATE_RSN_FAA_MISCONFIG = common dso_local global i32 0, align 4
@BFA_FCPORT_SM_FAA_MISCONFIG = common dso_local global i32 0, align 4
@BFA_FCPORT_SM_LINKDOWN = common dso_local global i32 0, align 4
@BFA_STATUS_ETIMER = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_FCPORT_SM_ENABLE = common dso_local global i32 0, align 4
@BFA_FCPORT_SM_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcport_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcport_s*, align 8
  %6 = alloca %union.bfi_fcport_i2h_msg_u, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s* %7)
  store %struct.bfa_fcport_s* %8, %struct.bfa_fcport_s** %5, align 8
  %9 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %10 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %9, %struct.bfi_msg_s** %10, align 8
  %11 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %11, i32 0, i32 12
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = bitcast %union.bfi_fcport_i2h_msg_u* %13 to i8*
  %15 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %17 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(%struct.bfa_s* %16, i32 %20)
  %22 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %23 = load i32, i32* @hal_port_sm_table, align 4
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bfa_sm_to_state(i32 %23, i32 %26)
  %28 = call i32 @bfa_trc(%struct.bfa_s* %22, i32 %27)
  %29 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %285 [
    i32 132, label %33
    i32 134, label %156
    i32 131, label %170
    i32 128, label %225
    i32 129, label %230
    i32 130, label %255
    i32 133, label %277
    i32 135, label %281
  ]

33:                                               ; preds = %2
  %34 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_20__**
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %155

42:                                               ; preds = %33
  %43 = load i32, i32* @BFA_TRUE, align 4
  %44 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %111

50:                                               ; preds = %42
  %51 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %51, i32 0, i32 6
  %53 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_20__**
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_21__* %52 to i8*
  %57 = bitcast %struct.TYPE_21__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 40, i1 false)
  %58 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @cpu_to_be16(i8* %61)
  %63 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 6
  store i8* %62, i8** %65, align 8
  %66 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @cpu_to_be16(i8* %69)
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 5
  store i8* %70, i8** %73, align 8
  %74 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %75 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @cpu_to_be16(i8* %77)
  %79 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %80 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 4
  store i8* %78, i8** %81, align 8
  %82 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %83 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %50
  %88 = load i32, i32* @BFA_TRUNK_OFFLINE, align 4
  %89 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  br label %99

93:                                               ; preds = %50
  %94 = load i32, i32* @BFA_TRUNK_DISABLED, align 4
  %95 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %96 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_20__**
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %106 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @BFA_FALSE, align 4
  %109 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %110 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %99, %42
  %112 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %113 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i32, i32* @BFA_QOS_OFFLINE, align 4
  %119 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %120 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %127

122:                                              ; preds = %111
  %123 = load i32, i32* @BFA_QOS_DISABLED, align 4
  %124 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %125 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_20__**
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %134 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %137 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load i8*, i8** @BFA_BBCR_OFFLINE, align 8
  %143 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %144 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  store i8* %142, i8** %145, align 8
  br label %151

146:                                              ; preds = %127
  %147 = load i8*, i8** @BFA_BBCR_DISABLED, align 8
  %148 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %149 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %153 = load i32, i32* @BFA_FCPORT_SM_FWRSP, align 4
  %154 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %33
  br label %287

156:                                              ; preds = %2
  %157 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %158 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_20__**
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %159, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %167 = load i32, i32* @BFA_FCPORT_SM_FWRSP, align 4
  %168 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %156
  br label %287

170:                                              ; preds = %2
  %171 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %172 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i8*, i8** @BFA_BBCR_OFFLINE, align 8
  %178 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %179 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  store i8* %177, i8** %180, align 8
  br label %186

181:                                              ; preds = %170
  %182 = load i8*, i8** @BFA_BBCR_DISABLED, align 8
  %183 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %184 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  br label %186

186:                                              ; preds = %181, %176
  %187 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_14__**
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @BFA_PORT_LINKUP, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %196 = load i32, i32* @BFA_FCPORT_SM_LINKUP, align 4
  %197 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %195, i32 %196)
  br label %215

198:                                              ; preds = %186
  %199 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_14__**
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @BFA_PORT_LINKSTATE_RSN_FAA_MISCONFIG, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %198
  %207 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %208 = load i32, i32* @BFA_FCPORT_SM_FAA_MISCONFIG, align 4
  %209 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %207, i32 %208)
  br label %214

210:                                              ; preds = %198
  %211 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %212 = load i32, i32* @BFA_FCPORT_SM_LINKDOWN, align 4
  %213 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %206
  br label %215

215:                                              ; preds = %214, %194
  %216 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_14__**
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %223 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  br label %287

225:                                              ; preds = %2
  %226 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %227 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @bfa_trunk_scn(%struct.bfa_fcport_s* %226, i32 %228)
  br label %287

230:                                              ; preds = %2
  %231 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %232 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %231, i32 0, i32 3
  %233 = call i32 @list_empty(i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %237 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @BFA_STATUS_ETIMER, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %235, %230
  br label %287

242:                                              ; preds = %235
  %243 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %244 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %243, i32 0, i32 1
  %245 = call i32 @bfa_timer_stop(i32* %244)
  %246 = bitcast %union.bfi_fcport_i2h_msg_u* %6 to %struct.TYPE_15__**
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %251 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %253 = load i32, i32* @BFA_TRUE, align 4
  %254 = call i32 @__bfa_cb_fcport_stats_get(%struct.bfa_fcport_s* %252, i32 %253)
  br label %287

255:                                              ; preds = %2
  %256 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %257 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %256, i32 0, i32 2
  %258 = call i32 @list_empty(i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %255
  %261 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %262 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @BFA_STATUS_ETIMER, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %260, %255
  br label %287

267:                                              ; preds = %260
  %268 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %269 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %268, i32 0, i32 1
  %270 = call i32 @bfa_timer_stop(i32* %269)
  %271 = load i32, i32* @BFA_STATUS_OK, align 4
  %272 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %273 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %275 = load i32, i32* @BFA_TRUE, align 4
  %276 = call i32 @__bfa_cb_fcport_stats_clr(%struct.bfa_fcport_s* %274, i32 %275)
  br label %287

277:                                              ; preds = %2
  %278 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %279 = load i32, i32* @BFA_FCPORT_SM_ENABLE, align 4
  %280 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %278, i32 %279)
  br label %287

281:                                              ; preds = %2
  %282 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %283 = load i32, i32* @BFA_FCPORT_SM_DISABLE, align 4
  %284 = call i32 @bfa_sm_send_event(%struct.bfa_fcport_s* %282, i32 %283)
  br label %287

285:                                              ; preds = %2
  %286 = call i32 @WARN_ON(i32 1)
  br label %287

287:                                              ; preds = %285, %281, %277, %267, %266, %242, %241, %225, %215, %169, %155
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_sm_to_state(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i8*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @bfa_trunk_scn(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @__bfa_cb_fcport_stats_get(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @__bfa_cb_fcport_stats_clr(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
