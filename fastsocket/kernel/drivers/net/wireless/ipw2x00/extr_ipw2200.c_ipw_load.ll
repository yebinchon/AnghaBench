; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.firmware = type { i64 }
%struct.ipw_fw = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ipw2200-ibss.fw\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ipw2200-bss.fw\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to initialize Rx queue\0A\00", align 1
@IPW_INTA_MASK_R = common dso_local global i32 0, align 4
@IPW_INTA_MASK_ALL = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IPW_INTA_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Unable to reset NIC\0A\00", align 1
@IPW_NIC_SRAM_LOWER_BOUND = common dso_local global i64 0, align 8
@IPW_NIC_SRAM_UPPER_BOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to load boot firmware: %d\0A\00", align 1
@IPW_INTA_BIT_FW_INITIALIZATION_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"device failed to boot initial fw image\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"initial device response after %dms\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unable to load ucode: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Unable to load firmware: %d\0A\00", align 1
@IPW_EEPROM_LOAD_DISABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Unable to initialize queues\0A\00", align 1
@IPW_INTA_BIT_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Parity error.  Retrying init.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"TODO: Handle parity error -- schedule restart?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"device failed to start within 500ms\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"device response after %dms\0A\00", align 1
@IPW_RX_READ_INDEX = common dso_local global i32 0, align 4
@fw_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_load(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.ipw_fw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 130, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %19

19:                                               ; preds = %1, %18, %17
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %255

25:                                               ; preds = %19
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @ipw_get_fw(%struct.ipw_priv* %26, %struct.firmware** %4, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %255

32:                                               ; preds = %25
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.ipw_fw*
  store %struct.ipw_fw* %37, %struct.ipw_fw** %5, align 8
  %38 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %39 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** %6, align 8
  %42 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %43 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %46 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %51 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %54 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %58 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = add i64 %56, %60
  %62 = getelementptr inbounds i8, i8* %52, i64 %61
  store i8* %62, i8** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %32
  br label %255

66:                                               ; preds = %32
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %73 = call %struct.TYPE_6__* @ipw_rx_queue_alloc(%struct.ipw_priv* %72)
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %74, i32 0, i32 1
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %78 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = call i32 @ipw_rx_queue_reset(%struct.ipw_priv* %77, %struct.TYPE_6__* %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %255

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %209, %89
  %91 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %92 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %93 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %94 = xor i32 %93, -1
  %95 = call i32 @ipw_write32(%struct.ipw_priv* %91, i32 %92, i32 %94)
  %96 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %99 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %103 = load i32, i32* @IPW_INTA_RW, align 4
  %104 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %105 = call i32 @ipw_write32(%struct.ipw_priv* %102, i32 %103, i32 %104)
  %106 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %107 = call i32 @ipw_stop_nic(%struct.ipw_priv* %106)
  %108 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %109 = call i32 @ipw_reset_nic(%struct.ipw_priv* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %255

114:                                              ; preds = %90
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %116 = load i64, i64* @IPW_NIC_SRAM_LOWER_BOUND, align 8
  %117 = load i64, i64* @IPW_NIC_SRAM_UPPER_BOUND, align 8
  %118 = load i64, i64* @IPW_NIC_SRAM_LOWER_BOUND, align 8
  %119 = sub nsw i64 %117, %118
  %120 = call i32 @ipw_zero_memory(%struct.ipw_priv* %115, i64 %116, i64 %119)
  %121 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %124 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @le32_to_cpu(i32 %125)
  %127 = call i32 @ipw_load_firmware(%struct.ipw_priv* %121, i8* %122, i64 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %114
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %255

133:                                              ; preds = %114
  %134 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %135 = call i32 @ipw_start_nic(%struct.ipw_priv* %134)
  %136 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %137 = load i32, i32* @IPW_INTA_RW, align 4
  %138 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %139 = call i32 @ipw_poll_bit(%struct.ipw_priv* %136, i32 %137, i32 %138, i32 500)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %255

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %148 = load i32, i32* @IPW_INTA_RW, align 4
  %149 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %150 = call i32 @ipw_write32(%struct.ipw_priv* %147, i32 %148, i32 %149)
  %151 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %154 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @le32_to_cpu(i32 %155)
  %157 = call i32 @ipw_load_ucode(%struct.ipw_priv* %151, i8* %152, i64 %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %255

163:                                              ; preds = %144
  %164 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %165 = call i32 @ipw_stop_nic(%struct.ipw_priv* %164)
  %166 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %169 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @le32_to_cpu(i32 %170)
  %172 = call i32 @ipw_load_firmware(%struct.ipw_priv* %166, i8* %167, i64 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %255

178:                                              ; preds = %163
  %179 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %180 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %181 = call i32 @ipw_write32(%struct.ipw_priv* %179, i32 %180, i32 0)
  %182 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %183 = call i32 @ipw_queue_reset(%struct.ipw_priv* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %255

188:                                              ; preds = %178
  %189 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %190 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %191 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %192 = xor i32 %191, -1
  %193 = call i32 @ipw_write32(%struct.ipw_priv* %189, i32 %190, i32 %192)
  %194 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %195 = load i32, i32* @IPW_INTA_RW, align 4
  %196 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %197 = call i32 @ipw_write32(%struct.ipw_priv* %194, i32 %195, i32 %196)
  %198 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %199 = call i32 @ipw_start_nic(%struct.ipw_priv* %198)
  %200 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %201 = load i32, i32* @IPW_INTA_RW, align 4
  %202 = call i32 @ipw_read32(%struct.ipw_priv* %200, i32 %201)
  %203 = load i32, i32* @IPW_INTA_BIT_PARITY_ERROR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %188
  %207 = load i32, i32* %11, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %11, align 4
  br label %90

213:                                              ; preds = %206
  %214 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %215 = load i32, i32* @EIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %10, align 4
  br label %255

217:                                              ; preds = %188
  %218 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %219 = load i32, i32* @IPW_INTA_RW, align 4
  %220 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %221 = call i32 @ipw_poll_bit(%struct.ipw_priv* %218, i32 %219, i32 %220, i32 500)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %255

226:                                              ; preds = %217
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %227)
  %229 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %230 = load i32, i32* @IPW_INTA_RW, align 4
  %231 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %232 = call i32 @ipw_write32(%struct.ipw_priv* %229, i32 %230, i32 %231)
  %233 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %234 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %236 = call i32 @ipw_eeprom_init_sram(%struct.ipw_priv* %235)
  %237 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %238 = call i32 @ipw_enable_interrupts(%struct.ipw_priv* %237)
  %239 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %240 = call i32 @ipw_rx_queue_replenish(%struct.ipw_priv* %239)
  %241 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %242 = load i32, i32* @IPW_RX_READ_INDEX, align 4
  %243 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %244 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %243, i32 0, i32 1
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ipw_write32(%struct.ipw_priv* %241, i32 %242, i32 %247)
  %249 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %250 = load i32, i32* @IPW_INTA_RW, align 4
  %251 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %252 = call i32 @ipw_write32(%struct.ipw_priv* %249, i32 %250, i32 %251)
  %253 = load %struct.firmware*, %struct.firmware** %4, align 8
  %254 = call i32 @release_firmware(%struct.firmware* %253)
  store i32 0, i32* %2, align 4
  br label %274

255:                                              ; preds = %224, %213, %186, %175, %160, %142, %130, %112, %87, %65, %31, %22
  %256 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %257 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = icmp ne %struct.TYPE_6__* %258, null
  br i1 %259, label %260, label %268

260:                                              ; preds = %255
  %261 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %262 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %263 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %262, i32 0, i32 1
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = call i32 @ipw_rx_queue_free(%struct.ipw_priv* %261, %struct.TYPE_6__* %264)
  %266 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %267 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %266, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %267, align 8
  br label %268

268:                                              ; preds = %260, %255
  %269 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %270 = call i32 @ipw_tx_queue_free(%struct.ipw_priv* %269)
  %271 = load %struct.firmware*, %struct.firmware** %4, align 8
  %272 = call i32 @release_firmware(%struct.firmware* %271)
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %268, %226
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @ipw_get_fw(%struct.ipw_priv*, %struct.firmware**, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @ipw_rx_queue_alloc(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_rx_queue_reset(%struct.ipw_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @IPW_ERROR(i8*, ...) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_stop_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_reset_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_zero_memory(%struct.ipw_priv*, i64, i64) #1

declare dso_local i32 @ipw_load_firmware(%struct.ipw_priv*, i8*, i64) #1

declare dso_local i32 @ipw_start_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_poll_bit(%struct.ipw_priv*, i32, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ipw_load_ucode(%struct.ipw_priv*, i8*, i64) #1

declare dso_local i32 @ipw_queue_reset(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_WARNING(i8*) #1

declare dso_local i32 @ipw_eeprom_init_sram(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_enable_interrupts(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_rx_queue_replenish(%struct.ipw_priv*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @ipw_rx_queue_free(%struct.ipw_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @ipw_tx_queue_free(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
