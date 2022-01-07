; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.expander_device }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32, i64, i32, i32 }

@SAS_SATA_SPINUP_HOLD = common dso_local global i64 0, align 8
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@TABLE_ROUTING = common dso_local global i64 0, align 8
@NO_DEVICE = common dso_local global i32 0, align 4
@DIRECT_ROUTING = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"unknown device type(0x%x) attached to ex %016llx phy 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"configure routing for dev %016llx reported 0x%x. Forgotten\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Attaching ex phy%d to wide port %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"second fanout expander %016llx phy 0x%x attached to ex %016llx phy 0x%x\0A\00", align 1
@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@PHY_DEVICE_DISCOVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_ex_discover_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_discover_dev(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expander_device*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 3
  store %struct.expander_device* %12, %struct.expander_device** %6, align 8
  %13 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %14 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %13, i32 0, i32 1
  %15 = load %struct.ex_phy*, %struct.ex_phy** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %15, i64 %17
  store %struct.ex_phy* %18, %struct.ex_phy** %7, align 8
  store %struct.domain_device* null, %struct.domain_device** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %20 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SAS_SATA_SPINUP_HOLD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  %28 = call i32 @sas_smp_phy_control(%struct.domain_device* %25, i32 %26, i32 %27, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @sas_ex_phy_discover(%struct.domain_device* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %341

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %47 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SAS_ADDR(i32 %48)
  %50 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %51 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SAS_ADDR(i32 %54)
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sas_add_parent_port(%struct.domain_device* %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %341

61:                                               ; preds = %45, %40
  %62 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %63 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %68 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @SAS_ADDR(i32 %69)
  %71 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SAS_ADDR(i32 %75)
  %77 = icmp eq i32 %70, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %66
  %79 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @sas_add_parent_port(%struct.domain_device* %79, i32 %80)
  %82 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %83 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TABLE_ROUTING, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %91 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sas_configure_phy(%struct.domain_device* %88, i32 %89, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %87, %78
  store i32 0, i32* %3, align 4
  br label %341

97:                                               ; preds = %66, %61
  %98 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %99 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %102 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @sas_dev_present_in_domain(%struct.TYPE_6__* %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %108 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %109 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @sas_ex_disable_port(%struct.domain_device* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %114 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NO_DEVICE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %112
  %119 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %120 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DIRECT_ROUTING, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %126 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %129 = call i32 @memset(i32 %127, i32 0, i32 %128)
  %130 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %131 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %132 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @sas_configure_routing(%struct.domain_device* %130, i32 %133)
  br label %135

135:                                              ; preds = %124, %118
  store i32 0, i32* %3, align 4
  br label %341

136:                                              ; preds = %112
  %137 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %138 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %341

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %146 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 129
  br i1 %148, label %149, label %174

149:                                              ; preds = %144
  %150 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %151 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 130
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %156 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 131
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %161 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 128
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %166 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %169 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @SAS_ADDR(i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %171, i32 %172)
  store i32 0, i32* %3, align 4
  br label %341

174:                                              ; preds = %159, %154, %149, %144
  %175 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %176 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %177 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @sas_configure_routing(%struct.domain_device* %175, i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %174
  %183 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %184 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @SAS_ADDR(i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %190 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %191 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @sas_disable_routing(%struct.domain_device* %189, i32 %192)
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %3, align 4
  br label %341

195:                                              ; preds = %174
  %196 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i64 @sas_ex_join_wide_port(%struct.domain_device* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %203 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @SAS_ADDR(i32 %204)
  %206 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %201, i32 %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %341

208:                                              ; preds = %195
  %209 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %210 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %259 [
    i32 129, label %212
    i32 128, label %212
    i32 130, label %216
    i32 131, label %255
  ]

212:                                              ; preds = %208, %208
  %213 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call %struct.domain_device* @sas_ex_discover_end_dev(%struct.domain_device* %213, i32 %214)
  store %struct.domain_device* %215, %struct.domain_device** %8, align 8
  br label %260

216:                                              ; preds = %208
  %217 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %218 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @SAS_ADDR(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %242

225:                                              ; preds = %216
  %226 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %227 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @SAS_ADDR(i32 %228)
  %230 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %231 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %234 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @SAS_ADDR(i32 %235)
  %237 = load i32, i32* %5, align 4
  %238 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %229, i32 %232, i32 %236, i32 %237)
  %239 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @sas_ex_disable_phy(%struct.domain_device* %239, i32 %240)
  br label %260

242:                                              ; preds = %216
  %243 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %244 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %243, i32 0, i32 1
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %250 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %253 = call i32 @memcpy(i32 %248, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %242
  br label %255

255:                                              ; preds = %208, %254
  %256 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %257 = load i32, i32* %5, align 4
  %258 = call %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device* %256, i32 %257)
  store %struct.domain_device* %258, %struct.domain_device** %8, align 8
  br label %260

259:                                              ; preds = %208
  br label %260

260:                                              ; preds = %259, %255, %225, %212
  %261 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %262 = icmp ne %struct.domain_device* %261, null
  br i1 %262, label %263, label %339

263:                                              ; preds = %260
  store i32 0, i32* %10, align 4
  br label %264

264:                                              ; preds = %335, %263
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %267 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %338

270:                                              ; preds = %264
  %271 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %272 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %271, i32 0, i32 1
  %273 = load %struct.ex_phy*, %struct.ex_phy** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %273, i64 %275
  %277 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @PHY_VACANT, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %292, label %281

281:                                              ; preds = %270
  %282 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %283 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %282, i32 0, i32 1
  %284 = load %struct.ex_phy*, %struct.ex_phy** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %284, i64 %286
  %288 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %281, %270
  br label %335

293:                                              ; preds = %281
  %294 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %295 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %294, i32 0, i32 1
  %296 = load %struct.ex_phy*, %struct.ex_phy** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %296, i64 %298
  %300 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @SAS_ADDR(i32 %301)
  %303 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %304 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @SAS_ADDR(i32 %305)
  %307 = icmp eq i32 %302, %306
  br i1 %307, label %308, label %334

308:                                              ; preds = %293
  %309 = load i64, i64* @PHY_DEVICE_DISCOVERED, align 8
  %310 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %311 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %310, i32 0, i32 1
  %312 = load %struct.ex_phy*, %struct.ex_phy** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %312, i64 %314
  %316 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %315, i32 0, i32 3
  store i64 %309, i64* %316, align 8
  %317 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %318 = load i32, i32* %10, align 4
  %319 = call i64 @sas_ex_join_wide_port(%struct.domain_device* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %308
  %322 = load i32, i32* %10, align 4
  %323 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %324 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %323, i32 0, i32 1
  %325 = load %struct.ex_phy*, %struct.ex_phy** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %325, i64 %327
  %329 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @SAS_ADDR(i32 %330)
  %332 = call i32 (i8*, i32, i32, ...) @SAS_DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %322, i32 %331)
  br label %333

333:                                              ; preds = %321, %308
  br label %334

334:                                              ; preds = %333, %293
  br label %335

335:                                              ; preds = %334, %292
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %10, align 4
  br label %264

338:                                              ; preds = %264
  br label %339

339:                                              ; preds = %338, %260
  %340 = load i32, i32* %9, align 4
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %339, %200, %182, %164, %142, %135, %96, %57, %37
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i32, i32, i32*) #1

declare dso_local i32 @sas_ex_phy_discover(%struct.domain_device*, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_add_parent_port(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_configure_phy(%struct.domain_device*, i32, i32, i32) #1

declare dso_local i64 @sas_dev_present_in_domain(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sas_ex_disable_port(%struct.domain_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sas_configure_routing(%struct.domain_device*, i32) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @sas_disable_routing(%struct.domain_device*, i32) #1

declare dso_local i64 @sas_ex_join_wide_port(%struct.domain_device*, i32) #1

declare dso_local %struct.domain_device* @sas_ex_discover_end_dev(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_ex_disable_phy(%struct.domain_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
