; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_set_portinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_set_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i64 }
%struct.ib_device = type { i64 }
%struct.ib_port_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_event = type { i32, %struct.TYPE_2__, %struct.ib_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_ibdev = type { i64, i32, i32, i32, i64, i32, i64, i32, i8*, i32, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i64, i32, i32, i32 }

@IPATH_MULTICAST_LID_BASE = common dso_local global i64 0, align 8
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_SM_CHANGE = common dso_local global i32 0, align 4
@ipath_mtu4096 = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@IPATH_IB_LINKDOWN_ONLY = common dso_local global i64 0, align 8
@IPATH_IB_LINKDOWN_SLEEP = common dso_local global i64 0, align 8
@IPATH_IB_LINKDOWN = common dso_local global i64 0, align 8
@IPATH_IB_LINKDOWN_DISABLE = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IPATH_LINKINIT = common dso_local global i32 0, align 4
@IPATH_LINKARMED = common dso_local global i32 0, align 4
@IPATH_LINKACTIVE = common dso_local global i32 0, align 4
@IPATH_IB_LINKARM = common dso_local global i64 0, align 8
@IPATH_IB_LINKACTIVE = common dso_local global i64 0, align 8
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @recv_subn_set_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_set_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_info*, align 8
  %8 = alloca %struct.ib_event, align 8
  %9 = alloca %struct.ipath_ibdev*, align 8
  %10 = alloca %struct.ipath_devdata*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %22 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ib_port_info*
  store %struct.ib_port_info* %24, %struct.ib_port_info** %7, align 8
  store i8 0, i8* %11, align 1
  %25 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %26 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  %29 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %30 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %401

34:                                               ; preds = %3
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %35)
  store %struct.ipath_ibdev* %36, %struct.ipath_ibdev** %9, align 8
  %37 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %38 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %37, i32 0, i32 11
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %38, align 8
  store %struct.ipath_devdata* %39, %struct.ipath_devdata** %10, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  store %struct.ib_device* %40, %struct.ib_device** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %46 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %49 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %51 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %54 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %56 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @be16_to_cpu(i32 %57)
  %59 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %60 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %62 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @be16_to_cpu(i32 %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %12, align 8
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %67 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %34
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %76 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 7
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %71, %34
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @IPATH_MULTICAST_LID_BASE, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %80
  br label %401

88:                                               ; preds = %83
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %92 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 7
  %95 = call i32 @ipath_set_lid(%struct.ipath_devdata* %89, i64 %90, i32 %94)
  %96 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %97 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %99

99:                                               ; preds = %88, %71
  %100 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %101 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %100, i32 0, i32 13
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @be16_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i64
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %107 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %99
  %111 = load i64, i64* %13, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* @IPATH_MULTICAST_LID_BASE, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %110
  br label %401

118:                                              ; preds = %113
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %121 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @IB_EVENT_SM_CHANGE, align 4
  %123 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %125

125:                                              ; preds = %118, %99
  %126 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %127 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load i32, i32* %14, align 4
  %133 = icmp eq i32 %132, 255
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %136 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  br label %151

138:                                              ; preds = %131
  %139 = load i32, i32* %14, align 4
  %140 = icmp sge i32 %139, 16
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %144 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %142, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141, %138
  br label %401

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %134
  %152 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @set_link_width_enabled(%struct.ipath_devdata* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %125
  %156 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %157 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 15
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %186

162:                                              ; preds = %155
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, 15
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %167 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %15, align 4
  br label %182

169:                                              ; preds = %162
  %170 = load i32, i32* %15, align 4
  %171 = icmp sge i32 %170, 8
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %175 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = xor i32 %176, -1
  %178 = and i32 %173, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172, %169
  br label %401

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %165
  %183 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @set_link_speed_enabled(%struct.ipath_devdata* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %155
  %187 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %188 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 15
  switch i32 %190, label %204 [
    i32 0, label %191
    i32 1, label %192
    i32 2, label %198
  ]

191:                                              ; preds = %186
  br label %205

192:                                              ; preds = %186
  %193 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %194 = call i32 @set_linkdowndefaultstate(%struct.ipath_devdata* %193, i32 1)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %401

197:                                              ; preds = %192
  br label %205

198:                                              ; preds = %186
  %199 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %200 = call i32 @set_linkdowndefaultstate(%struct.ipath_devdata* %199, i32 0)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %401

203:                                              ; preds = %198
  br label %205

204:                                              ; preds = %186
  br label %401

205:                                              ; preds = %203, %197, %191
  %206 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %207 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = ashr i32 %208, 6
  %210 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %211 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %213 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %212, i32 0, i32 12
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %216 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  %217 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %218 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = ashr i32 %219, 4
  %221 = and i32 %220, 15
  switch i32 %221, label %231 [
    i32 134, label %222
    i32 132, label %223
    i32 136, label %224
    i32 135, label %225
    i32 133, label %226
  ]

222:                                              ; preds = %205
  store i32 256, i32* %18, align 4
  br label %232

223:                                              ; preds = %205
  store i32 512, i32* %18, align 4
  br label %232

224:                                              ; preds = %205
  store i32 1024, i32* %18, align 4
  br label %232

225:                                              ; preds = %205
  store i32 2048, i32* %18, align 4
  br label %232

226:                                              ; preds = %205
  %227 = load i32, i32* @ipath_mtu4096, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  br label %401

230:                                              ; preds = %226
  store i32 4096, i32* %18, align 4
  br label %232

231:                                              ; preds = %205
  br label %401

232:                                              ; preds = %230, %225, %224, %223, %222
  %233 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %234 = load i32, i32* %18, align 4
  %235 = call i32 @ipath_set_mtu(%struct.ipath_devdata* %233, i32 %234)
  %236 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %237 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, 15
  %240 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %241 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %243 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = ashr i32 %244, 4
  %246 = and i32 %245, 15
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %249

248:                                              ; preds = %232
  br label %401

249:                                              ; preds = %232
  %250 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %251 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %256 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %255, i32 0, i32 6
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %254, %249
  %258 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %259 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %264 = call i32 @ipath_get_cr_errpkey(%struct.ipath_devdata* %263)
  %265 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %266 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %262, %257
  %268 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %269 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %268, i32 0, i32 8
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %274 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %273, i32 0, i32 4
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %272, %267
  %276 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %277 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %20, align 4
  %279 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %280 = load i32, i32* %20, align 4
  %281 = ashr i32 %280, 4
  %282 = and i32 %281, 15
  %283 = call i64 @set_phyerrthreshold(%struct.ipath_devdata* %279, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  br label %401

286:                                              ; preds = %275
  %287 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %288 = load i32, i32* %20, align 4
  %289 = and i32 %288, 15
  %290 = call i64 @set_overrunthreshold(%struct.ipath_devdata* %287, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  br label %401

293:                                              ; preds = %286
  %294 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %295 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %294, i32 0, i32 10
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, 31
  %298 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %299 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 8
  %300 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %301 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 128
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %293
  store i8 1, i8* %11, align 1
  %306 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %307 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  store i32 %306, i32* %307, align 8
  %308 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %309

309:                                              ; preds = %305, %293
  %310 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %311 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %310, i32 0, i32 11
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 15
  store i32 %313, i32* %16, align 4
  %314 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %315 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = ashr i32 %316, 4
  %318 = and i32 %317, 15
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %17, align 8
  %320 = load i64, i64* %17, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %309
  %323 = load i32, i32* %16, align 4
  %324 = icmp eq i32 %323, 129
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %16, align 4
  %327 = icmp eq i32 %326, 128
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  br label %401

329:                                              ; preds = %325, %322, %309
  %330 = load i32, i32* %16, align 4
  switch i32 %330, label %387 [
    i32 128, label %331
    i32 129, label %336
    i32 130, label %379
    i32 131, label %383
  ]

331:                                              ; preds = %329
  %332 = load i64, i64* %17, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  br label %388

335:                                              ; preds = %331
  br label %336

336:                                              ; preds = %329, %335
  %337 = load i64, i64* %17, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i64, i64* @IPATH_IB_LINKDOWN_ONLY, align 8
  store i64 %340, i64* %17, align 8
  br label %360

341:                                              ; preds = %336
  %342 = load i64, i64* %17, align 8
  %343 = icmp eq i64 %342, 1
  br i1 %343, label %344, label %346

344:                                              ; preds = %341
  %345 = load i64, i64* @IPATH_IB_LINKDOWN_SLEEP, align 8
  store i64 %345, i64* %17, align 8
  br label %359

346:                                              ; preds = %341
  %347 = load i64, i64* %17, align 8
  %348 = icmp eq i64 %347, 2
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i64, i64* @IPATH_IB_LINKDOWN, align 8
  store i64 %350, i64* %17, align 8
  br label %358

351:                                              ; preds = %346
  %352 = load i64, i64* %17, align 8
  %353 = icmp eq i64 %352, 3
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = load i64, i64* @IPATH_IB_LINKDOWN_DISABLE, align 8
  store i64 %355, i64* %17, align 8
  br label %357

356:                                              ; preds = %351
  br label %401

357:                                              ; preds = %354
  br label %358

358:                                              ; preds = %357, %349
  br label %359

359:                                              ; preds = %358, %344
  br label %360

360:                                              ; preds = %359, %339
  %361 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %362 = load i64, i64* %17, align 8
  %363 = call i32 @ipath_set_linkstate(%struct.ipath_devdata* %361, i64 %362)
  %364 = load i64, i64* %17, align 8
  %365 = load i64, i64* @IPATH_IB_LINKDOWN_DISABLE, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %360
  %368 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %369 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %370 = or i32 %368, %369
  store i32 %370, i32* %19, align 4
  br label %411

371:                                              ; preds = %360
  %372 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %373 = load i32, i32* @IPATH_LINKINIT, align 4
  %374 = load i32, i32* @IPATH_LINKARMED, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @IPATH_LINKACTIVE, align 4
  %377 = or i32 %375, %376
  %378 = call i32 @ipath_wait_linkstate(%struct.ipath_devdata* %372, i32 %377, i32 1000)
  br label %388

379:                                              ; preds = %329
  %380 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %381 = load i64, i64* @IPATH_IB_LINKARM, align 8
  %382 = call i32 @ipath_set_linkstate(%struct.ipath_devdata* %380, i64 %381)
  br label %388

383:                                              ; preds = %329
  %384 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %385 = load i64, i64* @IPATH_IB_LINKACTIVE, align 8
  %386 = call i32 @ipath_set_linkstate(%struct.ipath_devdata* %384, i64 %385)
  br label %388

387:                                              ; preds = %329
  br label %401

388:                                              ; preds = %383, %379, %371, %334
  %389 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %390 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %391 = load i32, i32* %6, align 4
  %392 = call i32 @recv_subn_get_portinfo(%struct.ib_smp* %389, %struct.ib_device* %390, i32 %391)
  store i32 %392, i32* %19, align 4
  %393 = load i8, i8* %11, align 1
  %394 = icmp ne i8 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %388
  %396 = load %struct.ib_port_info*, %struct.ib_port_info** %7, align 8
  %397 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %396, i32 0, i32 10
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %398, 128
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %395, %388
  br label %411

401:                                              ; preds = %387, %356, %328, %292, %285, %248, %231, %229, %204, %202, %196, %180, %149, %117, %87, %33
  %402 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %403 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %404 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 8
  %407 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %408 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %409 = load i32, i32* %6, align 4
  %410 = call i32 @recv_subn_get_portinfo(%struct.ib_smp* %407, %struct.ib_device* %408, i32 %409)
  store i32 %410, i32* %19, align 4
  br label %411

411:                                              ; preds = %401, %400, %367
  %412 = load i32, i32* %19, align 4
  ret i32 %412
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @ipath_set_lid(%struct.ipath_devdata*, i64, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @set_link_width_enabled(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @set_link_speed_enabled(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @set_linkdowndefaultstate(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_set_mtu(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_get_cr_errpkey(%struct.ipath_devdata*) #1

declare dso_local i64 @set_phyerrthreshold(%struct.ipath_devdata*, i32) #1

declare dso_local i64 @set_overrunthreshold(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_set_linkstate(%struct.ipath_devdata*, i64) #1

declare dso_local i32 @ipath_wait_linkstate(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @recv_subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
