; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_portinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i32, i64 }
%struct.ib_device = type { i32 }
%struct.ib_port_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_event = type { i32, %struct.TYPE_4__, %struct.ib_device* }
%struct.TYPE_4__ = type { i32 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32, i32)*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qib_ibport }
%struct.qib_ibport = type { i64, i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_5__*, i8*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@QIB_MULTICAST_LID_BASE = common dso_local global i64 0, align 8
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@_QIB_EVENT_LID_CHANGE_BIT = common dso_local global i32 0, align 4
@_QIB_EVENT_LMC_CHANGE_BIT = common dso_local global i32 0, align 4
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_SM_CHANGE = common dso_local global i32 0, align 4
@QIB_IB_CFG_LINKDEFAULT = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_HIGH_LIMIT = common dso_local global i32 0, align 4
@QIB_IB_CFG_OP_VLS = common dso_local global i32 0, align 4
@QIB_IB_LINKDOWN_ONLY = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN_SLEEP = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN = common dso_local global i64 0, align 8
@QIB_IB_LINKDOWN_DISABLE = common dso_local global i64 0, align 8
@QIBL_LINKV = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@QIB_IB_LINKARM = common dso_local global i64 0, align 8
@QIB_IB_LINKACTIVE = common dso_local global i64 0, align 8
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_info*, align 8
  %8 = alloca %struct.ib_event, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca %struct.qib_ibport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ib_port_info*
  store %struct.ib_port_info* %29, %struct.ib_port_info** %7, align 8
  %30 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %31 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 128
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %35 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %25, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %25, align 4
  br label %55

42:                                               ; preds = %3
  %43 = load i32, i32* %25, align 4
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %625

49:                                               ; preds = %42
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %631

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %57 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %56)
  store %struct.qib_devdata* %57, %struct.qib_devdata** %9, align 8
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 1
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %59, align 8
  %61 = load i32, i32* %25, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i64 %63
  store %struct.qib_pportdata* %64, %struct.qib_pportdata** %10, align 8
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 9
  store %struct.qib_ibport* %66, %struct.qib_ibport** %11, align 8
  %67 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %68 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  store %struct.ib_device* %67, %struct.ib_device** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %73 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %76 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %78 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %77, i32 0, i32 16
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %81 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %83 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @be16_to_cpu(i32 %84)
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %87 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %89 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @be16_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %55
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @QIB_MULTICAST_LID_BASE, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95, %55
  %100 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %101 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %102 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %155

105:                                              ; preds = %95
  %106 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %107 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %105
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %113 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %116 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 7
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %154

120:                                              ; preds = %111, %105
  %121 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %122 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %128 = load i32, i32* @_QIB_EVENT_LID_CHANGE_BIT, align 4
  %129 = call i32 @qib_set_uevent_bits(%struct.qib_pportdata* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %120
  %131 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %132 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %135 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 7
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %141 = load i32, i32* @_QIB_EVENT_LMC_CHANGE_BIT, align 4
  %142 = call i32 @qib_set_uevent_bits(%struct.qib_pportdata* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %130
  %144 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %147 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 7
  %150 = call i32 @qib_set_lid(%struct.qib_pportdata* %144, i64 %145, i32 %149)
  %151 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %152 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %151, i32* %152, align 8
  %153 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %154

154:                                              ; preds = %143, %111
  br label %155

155:                                              ; preds = %154, %99
  %156 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %157 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @be16_to_cpu(i32 %158)
  %160 = ptrtoint i8* %159 to i64
  store i64 %160, i64* %15, align 8
  %161 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %162 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 15
  store i32 %164, i32* %20, align 4
  %165 = load i64, i64* %15, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %155
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* @QIB_MULTICAST_LID_BASE, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167, %155
  %172 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %173 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %174 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %254

177:                                              ; preds = %167
  %178 = load i64, i64* %15, align 8
  %179 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %180 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %186 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %184, %187
  br i1 %188, label %189, label %253

189:                                              ; preds = %183, %177
  %190 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %191 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %190, i32 0, i32 8
  %192 = load i64, i64* %13, align 8
  %193 = call i32 @spin_lock_irqsave(i32* %191, i64 %192)
  %194 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %195 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %194, i32 0, i32 9
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = icmp ne %struct.TYPE_5__* %196, null
  br i1 %197, label %198, label %225

198:                                              ; preds = %189
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %201 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  %205 = load i64, i64* %15, align 8
  %206 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %207 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %206, i32 0, i32 9
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  store i64 %205, i64* %210, align 8
  br label %211

211:                                              ; preds = %204, %198
  %212 = load i32, i32* %20, align 4
  %213 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %214 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %212, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load i32, i32* %20, align 4
  %219 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %220 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %219, i32 0, i32 9
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 %218, i32* %223, align 8
  br label %224

224:                                              ; preds = %217, %211
  br label %225

225:                                              ; preds = %224, %189
  %226 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %227 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %226, i32 0, i32 8
  %228 = load i64, i64* %13, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %232 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = load i64, i64* %15, align 8
  %237 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %238 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %225
  %240 = load i32, i32* %20, align 4
  %241 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %242 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %240, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i32, i32* %20, align 4
  %247 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %248 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %239
  %250 = load i32, i32* @IB_EVENT_SM_CHANGE, align 4
  %251 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %250, i32* %251, align 8
  %252 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %253

253:                                              ; preds = %249, %183
  br label %254

254:                                              ; preds = %253, %171
  %255 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %256 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %16, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %299

260:                                              ; preds = %254
  %261 = load i32, i32* %16, align 4
  %262 = icmp eq i32 %261, 255
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %265 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %266 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @set_link_width_enabled(%struct.qib_pportdata* %264, i32 %267)
  br label %298

269:                                              ; preds = %260
  %270 = load i32, i32* %16, align 4
  %271 = icmp sge i32 %270, 16
  br i1 %271, label %280, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %16, align 4
  %274 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %275 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = xor i32 %276, -1
  %278 = and i32 %273, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %272, %269
  %281 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %282 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %283 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %297

286:                                              ; preds = %272
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %289 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %287, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %294 = load i32, i32* %16, align 4
  %295 = call i32 @set_link_width_enabled(%struct.qib_pportdata* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %286
  br label %297

297:                                              ; preds = %296, %280
  br label %298

298:                                              ; preds = %297, %263
  br label %299

299:                                              ; preds = %298, %254
  %300 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %301 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %302, 15
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %17, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %345

306:                                              ; preds = %299
  %307 = load i32, i32* %17, align 4
  %308 = icmp eq i32 %307, 15
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %311 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %312 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @set_link_speed_enabled(%struct.qib_pportdata* %310, i32 %313)
  br label %344

315:                                              ; preds = %306
  %316 = load i32, i32* %17, align 4
  %317 = icmp sge i32 %316, 8
  br i1 %317, label %326, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %17, align 4
  %320 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %321 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %319, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %318, %315
  %327 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %328 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %329 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  br label %343

332:                                              ; preds = %318
  %333 = load i32, i32* %17, align 4
  %334 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %335 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %333, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %332
  %339 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %340 = load i32, i32* %17, align 4
  %341 = call i32 @set_link_speed_enabled(%struct.qib_pportdata* %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %332
  br label %343

343:                                              ; preds = %342, %326
  br label %344

344:                                              ; preds = %343, %309
  br label %345

345:                                              ; preds = %344, %299
  %346 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %347 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, 15
  switch i32 %349, label %367 [
    i32 0, label %350
    i32 1, label %351
    i32 2, label %359
  ]

350:                                              ; preds = %345
  br label %373

351:                                              ; preds = %345
  %352 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %353 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %352, i32 0, i32 0
  %354 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %353, align 8
  %355 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %356 = load i32, i32* @QIB_IB_CFG_LINKDEFAULT, align 4
  %357 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  %358 = call i32 %354(%struct.qib_pportdata* %355, i32 %356, i32 %357)
  br label %373

359:                                              ; preds = %345
  %360 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %361 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %360, i32 0, i32 0
  %362 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %361, align 8
  %363 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %364 = load i32, i32* @QIB_IB_CFG_LINKDEFAULT, align 4
  %365 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  %366 = call i32 %362(%struct.qib_pportdata* %363, i32 %364, i32 %365)
  br label %373

367:                                              ; preds = %345
  %368 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %369 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %370 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %367, %359, %351, %350
  %374 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %375 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = ashr i32 %376, 6
  %378 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %379 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 4
  %380 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %381 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %384 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %383, i32 0, i32 3
  store i32 %382, i32* %384, align 8
  %385 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %386 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %385, i32 0, i32 0
  %387 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %386, align 8
  %388 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %389 = load i32, i32* @QIB_IB_CFG_VL_HIGH_LIMIT, align 4
  %390 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %391 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = call i32 %387(%struct.qib_pportdata* %388, i32 %389, i32 %392)
  %394 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %395 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = ashr i32 %396, 4
  %398 = and i32 %397, 15
  %399 = call i32 @ib_mtu_enum_to_int(i32 %398)
  store i32 %399, i32* %24, align 4
  %400 = load i32, i32* %24, align 4
  %401 = icmp eq i32 %400, -1
  br i1 %401, label %402, label %408

402:                                              ; preds = %373
  %403 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %404 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %405 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %412

408:                                              ; preds = %373
  %409 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %410 = load i32, i32* %24, align 4
  %411 = call i32 @qib_set_mtu(%struct.qib_pportdata* %409, i32 %410)
  br label %412

412:                                              ; preds = %408, %402
  %413 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %414 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 4
  %416 = ashr i32 %415, 4
  %417 = and i32 %416, 15
  store i32 %417, i32* %19, align 4
  %418 = load i32, i32* %19, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %441

420:                                              ; preds = %412
  %421 = load i32, i32* %19, align 4
  %422 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %423 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %421, %424
  br i1 %425, label %426, label %432

426:                                              ; preds = %420
  %427 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %428 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %429 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 8
  br label %440

432:                                              ; preds = %420
  %433 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %434 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %433, i32 0, i32 0
  %435 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %434, align 8
  %436 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %437 = load i32, i32* @QIB_IB_CFG_OP_VLS, align 4
  %438 = load i32, i32* %19, align 4
  %439 = call i32 %435(%struct.qib_pportdata* %436, i32 %437, i32 %438)
  br label %440

440:                                              ; preds = %432, %426
  br label %441

441:                                              ; preds = %440, %412
  %442 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %443 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %442, i32 0, i32 8
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %448 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %447, i32 0, i32 7
  store i64 0, i64* %448, align 8
  br label %449

449:                                              ; preds = %446, %441
  %450 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %451 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %450, i32 0, i32 9
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %449
  %455 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %456 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %455, i32 0, i32 6
  store i64 0, i64* %456, align 8
  br label %457

457:                                              ; preds = %454, %449
  %458 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %459 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %458, i32 0, i32 10
  %460 = load i64, i64* %459, align 8
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %464 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %463, i32 0, i32 5
  store i64 0, i64* %464, align 8
  br label %465

465:                                              ; preds = %462, %457
  %466 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %467 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %466, i32 0, i32 11
  %468 = load i32, i32* %467, align 8
  store i32 %468, i32* %23, align 4
  %469 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %470 = load i32, i32* %23, align 4
  %471 = ashr i32 %470, 4
  %472 = and i32 %471, 15
  %473 = call i64 @set_phyerrthreshold(%struct.qib_pportdata* %469, i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %465
  %476 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %477 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %478 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = or i32 %479, %476
  store i32 %480, i32* %478, align 8
  br label %481

481:                                              ; preds = %475, %465
  %482 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %483 = load i32, i32* %23, align 4
  %484 = and i32 %483, 15
  %485 = call i64 @set_overrunthreshold(%struct.qib_pportdata* %482, i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %481
  %488 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %489 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %490 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = or i32 %491, %488
  store i32 %492, i32* %490, align 8
  br label %493

493:                                              ; preds = %487, %481
  %494 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %495 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = and i32 %496, 31
  %498 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %499 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %498, i32 0, i32 4
  store i32 %497, i32* %499, align 4
  %500 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %501 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %500, i32 0, i32 12
  %502 = load i32, i32* %501, align 4
  %503 = and i32 %502, 15
  store i32 %503, i32* %18, align 4
  %504 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %505 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 4
  %507 = ashr i32 %506, 4
  %508 = and i32 %507, 15
  %509 = sext i32 %508 to i64
  store i64 %509, i64* %21, align 8
  %510 = load i64, i64* %21, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %524

512:                                              ; preds = %493
  %513 = load i32, i32* %18, align 4
  %514 = icmp eq i32 %513, 129
  br i1 %514, label %524, label %515

515:                                              ; preds = %512
  %516 = load i32, i32* %18, align 4
  %517 = icmp eq i32 %516, 128
  br i1 %517, label %524, label %518

518:                                              ; preds = %515
  %519 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %520 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %521 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 8
  br label %524

524:                                              ; preds = %518, %515, %512, %493
  %525 = load i32, i32* %18, align 4
  switch i32 %525, label %602 [
    i32 128, label %526
    i32 129, label %531
    i32 130, label %594
    i32 131, label %598
  ]

526:                                              ; preds = %524
  %527 = load i64, i64* %21, align 8
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %526
  br label %608

530:                                              ; preds = %526
  br label %531

531:                                              ; preds = %524, %530
  %532 = load i64, i64* %21, align 8
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = load i64, i64* @QIB_IB_LINKDOWN_ONLY, align 8
  store i64 %535, i64* %21, align 8
  br label %560

536:                                              ; preds = %531
  %537 = load i64, i64* %21, align 8
  %538 = icmp eq i64 %537, 1
  br i1 %538, label %539, label %541

539:                                              ; preds = %536
  %540 = load i64, i64* @QIB_IB_LINKDOWN_SLEEP, align 8
  store i64 %540, i64* %21, align 8
  br label %559

541:                                              ; preds = %536
  %542 = load i64, i64* %21, align 8
  %543 = icmp eq i64 %542, 2
  br i1 %543, label %544, label %546

544:                                              ; preds = %541
  %545 = load i64, i64* @QIB_IB_LINKDOWN, align 8
  store i64 %545, i64* %21, align 8
  br label %558

546:                                              ; preds = %541
  %547 = load i64, i64* %21, align 8
  %548 = icmp eq i64 %547, 3
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = load i64, i64* @QIB_IB_LINKDOWN_DISABLE, align 8
  store i64 %550, i64* %21, align 8
  br label %557

551:                                              ; preds = %546
  %552 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %553 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %554 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %552
  store i32 %556, i32* %554, align 8
  br label %608

557:                                              ; preds = %549
  br label %558

558:                                              ; preds = %557, %544
  br label %559

559:                                              ; preds = %558, %539
  br label %560

560:                                              ; preds = %559, %534
  %561 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %562 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %561, i32 0, i32 7
  %563 = load i64, i64* %13, align 8
  %564 = call i32 @spin_lock_irqsave(i32* %562, i64 %563)
  %565 = load i32, i32* @QIBL_LINKV, align 4
  %566 = xor i32 %565, -1
  %567 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %568 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %567, i32 0, i32 8
  %569 = load i32, i32* %568, align 4
  %570 = and i32 %569, %566
  store i32 %570, i32* %568, align 4
  %571 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %572 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %571, i32 0, i32 7
  %573 = load i64, i64* %13, align 8
  %574 = call i32 @spin_unlock_irqrestore(i32* %572, i64 %573)
  %575 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %576 = load i64, i64* %21, align 8
  %577 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %575, i64 %576)
  %578 = load i64, i64* %21, align 8
  %579 = load i64, i64* @QIB_IB_LINKDOWN_DISABLE, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %590

581:                                              ; preds = %560
  %582 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %583 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %581
  %587 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %588 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %589 = or i32 %587, %588
  store i32 %589, i32* %22, align 4
  br label %636

590:                                              ; preds = %581, %560
  %591 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %592 = load i32, i32* @QIBL_LINKV, align 4
  %593 = call i32 @qib_wait_linkstate(%struct.qib_pportdata* %591, i32 %592, i32 10)
  br label %608

594:                                              ; preds = %524
  %595 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %596 = load i64, i64* @QIB_IB_LINKARM, align 8
  %597 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %595, i64 %596)
  br label %608

598:                                              ; preds = %524
  %599 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %600 = load i64, i64* @QIB_IB_LINKACTIVE, align 8
  %601 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %599, i64 %600)
  br label %608

602:                                              ; preds = %524
  %603 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %604 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %605 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = or i32 %606, %603
  store i32 %607, i32* %605, align 8
  br label %608

608:                                              ; preds = %602, %598, %594, %590, %551, %529
  %609 = load i32, i32* %12, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %615

611:                                              ; preds = %608
  %612 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %613 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %612, i32* %613, align 8
  %614 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %615

615:                                              ; preds = %611, %608
  %616 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %617 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %618 = load i32, i32* %6, align 4
  %619 = call i32 @subn_get_portinfo(%struct.ib_smp* %616, %struct.ib_device* %617, i32 %618)
  store i32 %619, i32* %22, align 4
  %620 = load i32, i32* %12, align 4
  %621 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %622 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 8
  br label %631

625:                                              ; preds = %48
  %626 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %627 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %628 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = or i32 %629, %626
  store i32 %630, i32* %628, align 8
  br label %631

631:                                              ; preds = %625, %615, %53
  %632 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %633 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %634 = load i32, i32* %6, align 4
  %635 = call i32 @subn_get_portinfo(%struct.ib_smp* %632, %struct.ib_device* %633, i32 %634)
  store i32 %635, i32* %22, align 4
  br label %636

636:                                              ; preds = %631, %586
  %637 = load i32, i32* %22, align 4
  ret i32 %637
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @qib_set_uevent_bits(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_set_lid(%struct.qib_pportdata*, i64, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_link_width_enabled(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @set_link_speed_enabled(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @qib_set_mtu(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @set_phyerrthreshold(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @set_overrunthreshold(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_set_linkstate(%struct.qib_pportdata*, i64) #1

declare dso_local i32 @qib_wait_linkstate(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
