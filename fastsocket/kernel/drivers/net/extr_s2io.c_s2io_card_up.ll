; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_card_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_card_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, %struct.config_param, i32, i32, i64, i64, i64, i64, i32, %struct.mac_info, i64 }
%struct.config_param = type { i32, i64, i64 }
%struct.mac_info = type { %struct.ring_info* }
%struct.ring_info = type { i32, i32, i32, i64 }
%struct.net_device = type { i32, i32 }

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: H/W initialization failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Out of memory in Open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Buf in ring:%d is %d:\0A\00", align 1
@MSI_X = common dso_local global i64 0, align 8
@lro_max_pkts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Starting NIC failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@s2io_alarm_handle = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@__S2IO_STATE_CARD_UP = common dso_local global i32 0, align 4
@ENA_ALL_INTRS = common dso_local global i32 0, align 4
@ENABLE_INTRS = common dso_local global i32 0, align 4
@INTA = common dso_local global i64 0, align 8
@TX_TRAFFIC_INTR = common dso_local global i32 0, align 4
@TX_PIC_INTR = common dso_local global i32 0, align 4
@RX_TRAFFIC_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @s2io_card_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_card_up(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_param*, align 8
  %7 = alloca %struct.mac_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring_info*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %16 = call i32 @init_nic(%struct.s2io_nic* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @ERR_DBG, align 4
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %31 = call i32 @s2io_reset(%struct.s2io_nic* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %249

34:                                               ; preds = %1
  %35 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %36 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %35, i32 0, i32 1
  store %struct.config_param* %36, %struct.config_param** %6, align 8
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %38 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %37, i32 0, i32 9
  store %struct.mac_info* %38, %struct.mac_info** %7, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %86, %34
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.config_param*, %struct.config_param** %6, align 8
  %42 = getelementptr inbounds %struct.config_param, %struct.config_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %39
  %46 = load %struct.mac_info*, %struct.mac_info** %7, align 8
  %47 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %46, i32 0, i32 0
  %48 = load %struct.ring_info*, %struct.ring_info** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %48, i64 %50
  store %struct.ring_info* %51, %struct.ring_info** %10, align 8
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %56 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %58 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %61 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %63 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %64 = call i32 @fill_rx_buffers(%struct.s2io_nic* %62, %struct.ring_info* %63, i32 1)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %45
  %68 = load i32, i32* @ERR_DBG, align 4
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %74 = call i32 @s2io_reset(%struct.s2io_nic* %73)
  %75 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %76 = call i32 @free_rx_buffers(%struct.s2io_nic* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %249

79:                                               ; preds = %45
  %80 = load i32, i32* @INFO_DBG, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %83 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %39

89:                                               ; preds = %39
  %90 = load %struct.config_param*, %struct.config_param** %6, align 8
  %91 = getelementptr inbounds %struct.config_param, %struct.config_param* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  %95 = load %struct.config_param*, %struct.config_param** %6, align 8
  %96 = getelementptr inbounds %struct.config_param, %struct.config_param* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MSI_X, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %118, %100
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %104 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.config_param, %struct.config_param* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %110 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %110, i32 0, i32 0
  %112 = load %struct.ring_info*, %struct.ring_info** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %112, i64 %114
  %116 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %115, i32 0, i32 1
  %117 = call i32 @napi_enable(i32* %116)
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %101

121:                                              ; preds = %101
  br label %126

122:                                              ; preds = %94
  %123 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %124 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %123, i32 0, i32 8
  %125 = call i32 @napi_enable(i32* %124)
  br label %126

126:                                              ; preds = %122, %121
  br label %127

127:                                              ; preds = %126, %89
  %128 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %129 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %134 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %137 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %142 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %141, i32 0, i32 6
  store i64 0, i64* %142, align 8
  %143 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %144 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %143, i32 0, i32 5
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.net_device*, %struct.net_device** %8, align 8
  %147 = call i32 @s2io_set_multicast(%struct.net_device* %146)
  %148 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %149 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %145
  %153 = load %struct.net_device*, %struct.net_device** %8, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 65535, %155
  %157 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %158 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @lro_max_pkts, align 4
  %160 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %161 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %152
  %165 = load i32, i32* @lro_max_pkts, align 4
  %166 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %167 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %152
  br label %169

169:                                              ; preds = %168, %145
  %170 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %171 = call i64 @start_nic(%struct.s2io_nic* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = load i32, i32* @ERR_DBG, align 4
  %175 = load %struct.net_device*, %struct.net_device** %8, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %180 = call i32 @s2io_reset(%struct.s2io_nic* %179)
  %181 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %182 = call i32 @free_rx_buffers(%struct.s2io_nic* %181)
  %183 = load i32, i32* @ENODEV, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %249

185:                                              ; preds = %169
  %186 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %187 = call i64 @s2io_add_isr(%struct.s2io_nic* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %191 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.config_param, %struct.config_param* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MSI_X, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %198 = call i32 @s2io_rem_isr(%struct.s2io_nic* %197)
  br label %199

199:                                              ; preds = %196, %189
  %200 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %201 = call i32 @s2io_reset(%struct.s2io_nic* %200)
  %202 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %203 = call i32 @free_rx_buffers(%struct.s2io_nic* %202)
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %249

206:                                              ; preds = %185
  %207 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %208 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @s2io_alarm_handle, align 4
  %211 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %212 = load i32, i32* @HZ, align 4
  %213 = sdiv i32 %212, 2
  %214 = call i32 @S2IO_TIMER_CONF(i32 %209, i32 %210, %struct.s2io_nic* %211, i32 %213)
  %215 = load i32, i32* @__S2IO_STATE_CARD_UP, align 4
  %216 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %217 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %216, i32 0, i32 2
  %218 = call i32 @set_bit(i32 %215, i32* %217)
  %219 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %220 = load i32, i32* @ENA_ALL_INTRS, align 4
  %221 = load i32, i32* @ENABLE_INTRS, align 4
  %222 = call i32 @en_dis_err_alarms(%struct.s2io_nic* %219, i32 %220, i32 %221)
  %223 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %224 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.config_param, %struct.config_param* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @INTA, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %206
  %230 = load i32, i32* @TX_TRAFFIC_INTR, align 4
  %231 = load i32, i32* @TX_PIC_INTR, align 4
  %232 = or i32 %230, %231
  store i32 %232, i32* %9, align 4
  %233 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @ENABLE_INTRS, align 4
  %236 = call i32 @en_dis_able_nic_intrs(%struct.s2io_nic* %233, i32 %234, i32 %235)
  br label %248

237:                                              ; preds = %206
  %238 = load i32, i32* @TX_TRAFFIC_INTR, align 4
  %239 = load i32, i32* @RX_TRAFFIC_INTR, align 4
  %240 = or i32 %238, %239
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* @TX_PIC_INTR, align 4
  %242 = load i32, i32* %9, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %9, align 4
  %244 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @ENABLE_INTRS, align 4
  %247 = call i32 @en_dis_able_nic_intrs(%struct.s2io_nic* %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %237, %229
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %199, %173, %67, %32
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @init_nic(%struct.s2io_nic*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @s2io_reset(%struct.s2io_nic*) #1

declare dso_local i32 @fill_rx_buffers(%struct.s2io_nic*, %struct.ring_info*, i32) #1

declare dso_local i32 @free_rx_buffers(%struct.s2io_nic*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @s2io_set_multicast(%struct.net_device*) #1

declare dso_local i64 @start_nic(%struct.s2io_nic*) #1

declare dso_local i64 @s2io_add_isr(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_rem_isr(%struct.s2io_nic*) #1

declare dso_local i32 @S2IO_TIMER_CONF(i32, i32, %struct.s2io_nic*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @en_dis_err_alarms(%struct.s2io_nic*, i32, i32) #1

declare dso_local i32 @en_dis_able_nic_intrs(%struct.s2io_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
