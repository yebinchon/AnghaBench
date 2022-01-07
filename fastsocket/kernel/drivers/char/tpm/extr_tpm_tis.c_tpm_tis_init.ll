; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_3__, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@tpm_tis = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIS_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@TIS_LONG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"1.2 TPM (device-id 0x%X, rev-id %d)\0A\00", align 1
@itpm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Intel iTPM workaround enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"TPM interface capabilities (0x%x):\0A\00", align 1
@TPM_INTF_BURST_COUNT_STATIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"\09Burst Count Static\0A\00", align 1
@TPM_INTF_CMD_READY_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"\09Command Ready Int Support\0A\00", align 1
@TPM_INTF_INT_EDGE_FALLING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"\09Interrupt Edge Falling\0A\00", align 1
@TPM_INTF_INT_EDGE_RISING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"\09Interrupt Edge Rising\0A\00", align 1
@TPM_INTF_INT_LEVEL_LOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"\09Interrupt Level Low\0A\00", align 1
@TPM_INTF_INT_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\09Interrupt Level High\0A\00", align 1
@TPM_INTF_LOCALITY_CHANGE_INT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\09Locality Change Int Support\0A\00", align 1
@TPM_INTF_STS_VALID_INT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"\09Sts Valid Int Support\0A\00", align 1
@TPM_INTF_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"\09Data Avail Int Support\0A\00", align 1
@interrupts = common dso_local global i64 0, align 8
@tis_int_probe = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Unable to request irq: %d for probe\0A\00", align 1
@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@tis_int_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"Unable to request irq: %d for use\0A\00", align 1
@tis_lock = common dso_local global i32 0, align 4
@tis_chips = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @tpm_tis_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_init(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.tpm_chip* @tpm_register_hardware(%struct.device* %16, i32* @tpm_tis)
  store %struct.tpm_chip* %17, %struct.tpm_chip** %15, align 8
  %18 = icmp ne %struct.tpm_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %466

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @ioremap(i32 %23, i32 %24)
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %30 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %448

37:                                               ; preds = %22
  %38 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %39 = call i8* @msecs_to_jiffies(i32 %38)
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %41 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 10
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @TIS_LONG_TIMEOUT, align 4
  %44 = call i8* @msecs_to_jiffies(i32 %43)
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %46 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 9
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %49 = call i8* @msecs_to_jiffies(i32 %48)
  %50 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %51 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %54 = call i8* @msecs_to_jiffies(i32 %53)
  %55 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %56 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  store i8* %54, i8** %57, align 8
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %59 = call i64 @request_locality(%struct.tpm_chip* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %37
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %448

64:                                               ; preds = %37
  %65 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %66 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @TPM_DID_VID(i32 0)
  %70 = add nsw i64 %68, %69
  %71 = call i32 @ioread32(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = ptrtoint %struct.device* %72 to i32
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 16
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %77 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @TPM_RID(i32 0)
  %81 = add nsw i64 %79, %80
  %82 = call i32 @ioread8(i64 %81)
  %83 = call i32 (i32, i8*, ...) @dev_info(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %82)
  %84 = load i64, i64* @itpm, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %64
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = ptrtoint %struct.device* %87 to i32
  %89 = call i32 (i32, i8*, ...) @dev_info(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %64
  %91 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %92 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %96 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @TPM_INTF_CAPS(i32 %98)
  %100 = add nsw i64 %94, %99
  %101 = call i32 @ioread32(i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @TPM_INTF_BURST_COUNT_STATIC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %90
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %90
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @TPM_INTF_CMD_READY_INT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @TPM_INTF_INT_EDGE_FALLING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @TPM_INTF_INT_EDGE_RISING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @TPM_INTF_INT_LEVEL_LOW, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TPM_INTF_INT_LEVEL_HIGH, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.device*, %struct.device** %6, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %178 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 6
  %180 = call i32 @init_waitqueue_head(i32* %179)
  %181 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %182 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  %184 = call i32 @init_waitqueue_head(i32* %183)
  %185 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %186 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %190 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @TPM_INT_ENABLE(i32 %192)
  %194 = add nsw i64 %188, %193
  %195 = call i32 @ioread32(i64 %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* @TPM_INTF_CMD_READY_INT, align 4
  %197 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %12, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %207 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %211 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @TPM_INT_ENABLE(i32 %213)
  %215 = add nsw i64 %209, %214
  %216 = call i32 @iowrite32(i32 %205, i64 %215)
  %217 = load i64, i64* @interrupts, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %176
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %222 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  br label %224

224:                                              ; preds = %219, %176
  %225 = load i64, i64* @interrupts, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %347

227:                                              ; preds = %224
  %228 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %229 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %347, label %233

233:                                              ; preds = %227
  %234 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %235 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %239 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @TPM_INT_VECTOR(i32 %241)
  %243 = add nsw i64 %237, %242
  %244 = call i32 @ioread8(i64 %243)
  %245 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %246 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  store i32 3, i32* %14, align 4
  br label %248

248:                                              ; preds = %343, %233
  %249 = load i32, i32* %14, align 4
  %250 = icmp slt i32 %249, 16
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %253 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 0
  br label %257

257:                                              ; preds = %251, %248
  %258 = phi i1 [ false, %248 ], [ %256, %251 ]
  br i1 %258, label %259, label %346

259:                                              ; preds = %257
  %260 = load i32, i32* %14, align 4
  %261 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %262 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %266 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i64 @TPM_INT_VECTOR(i32 %268)
  %270 = add nsw i64 %264, %269
  %271 = call i32 @iowrite8(i32 %260, i64 %270)
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* @tis_int_probe, align 4
  %274 = load i32, i32* @IRQF_SHARED, align 4
  %275 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %276 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %281 = call i64 @request_irq(i32 %272, i32 %273, i32 %274, i32 %279, %struct.tpm_chip* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %259
  %284 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %285 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = call i32 (i32, i8*, ...) @dev_info(i32 %286, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %287)
  br label %343

289:                                              ; preds = %259
  %290 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %291 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %295 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @TPM_INT_STATUS(i32 %297)
  %299 = add nsw i64 %293, %298
  %300 = call i32 @ioread32(i64 %299)
  %301 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %302 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %306 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = call i64 @TPM_INT_STATUS(i32 %308)
  %310 = add nsw i64 %304, %309
  %311 = call i32 @iowrite32(i32 %300, i64 %310)
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %314 = or i32 %312, %313
  %315 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %316 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %320 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = call i64 @TPM_INT_ENABLE(i32 %322)
  %324 = add nsw i64 %318, %323
  %325 = call i32 @iowrite32(i32 %314, i64 %324)
  %326 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %327 = call i32 @tpm_gen_interrupt(%struct.tpm_chip* %326)
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %330 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %334 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @TPM_INT_ENABLE(i32 %336)
  %338 = add nsw i64 %332, %337
  %339 = call i32 @iowrite32(i32 %328, i64 %338)
  %340 = load i32, i32* %14, align 4
  %341 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %342 = call i32 @free_irq(i32 %340, %struct.tpm_chip* %341)
  br label %343

343:                                              ; preds = %289, %283
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %248

346:                                              ; preds = %257
  br label %347

347:                                              ; preds = %346, %227, %224
  %348 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %349 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %433

353:                                              ; preds = %347
  %354 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %355 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %359 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %363 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = call i64 @TPM_INT_VECTOR(i32 %365)
  %367 = add nsw i64 %361, %366
  %368 = call i32 @iowrite8(i32 %357, i64 %367)
  %369 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %370 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @tis_int_handler, align 4
  %374 = load i32, i32* @IRQF_SHARED, align 4
  %375 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %376 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %381 = call i64 @request_irq(i32 %372, i32 %373, i32 %374, i32 %379, %struct.tpm_chip* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %395

383:                                              ; preds = %353
  %384 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %385 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %388 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 (i32, i8*, ...) @dev_info(i32 %386, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %390)
  %392 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %393 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  store i32 0, i32* %394, align 8
  br label %432

395:                                              ; preds = %353
  %396 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %397 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %401 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = call i64 @TPM_INT_STATUS(i32 %403)
  %405 = add nsw i64 %399, %404
  %406 = call i32 @ioread32(i64 %405)
  %407 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %408 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %412 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = call i64 @TPM_INT_STATUS(i32 %414)
  %416 = add nsw i64 %410, %415
  %417 = call i32 @iowrite32(i32 %406, i64 %416)
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %420 = or i32 %418, %419
  %421 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %422 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %426 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = call i64 @TPM_INT_ENABLE(i32 %428)
  %430 = add nsw i64 %424, %429
  %431 = call i32 @iowrite32(i32 %420, i64 %430)
  br label %432

432:                                              ; preds = %395, %383
  br label %433

433:                                              ; preds = %432, %347
  %434 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %435 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 2
  %437 = call i32 @INIT_LIST_HEAD(i32* %436)
  %438 = call i32 @spin_lock(i32* @tis_lock)
  %439 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %440 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 2
  %442 = call i32 @list_add(i32* %441, i32* @tis_chips)
  %443 = call i32 @spin_unlock(i32* @tis_lock)
  %444 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %445 = call i32 @tpm_get_timeouts(%struct.tpm_chip* %444)
  %446 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %447 = call i32 @tpm_continue_selftest(%struct.tpm_chip* %446)
  store i32 0, i32* %5, align 4
  br label %466

448:                                              ; preds = %61, %34
  %449 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %450 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %448
  %455 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %456 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @iounmap(i64 %458)
  br label %460

460:                                              ; preds = %454, %448
  %461 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %462 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @tpm_remove_hardware(i32 %463)
  %465 = load i32, i32* %13, align 4
  store i32 %465, i32* %5, align 4
  br label %466

466:                                              ; preds = %460, %433, %19
  %467 = load i32, i32* %5, align 4
  ret i32 %467
}

declare dso_local %struct.tpm_chip* @tpm_register_hardware(%struct.device*, i32*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i64 @request_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TPM_DID_VID(i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @TPM_RID(i32) #1

declare dso_local i64 @TPM_INTF_CAPS(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @TPM_INT_ENABLE(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TPM_INT_VECTOR(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.tpm_chip*) #1

declare dso_local i64 @TPM_INT_STATUS(i32) #1

declare dso_local i32 @tpm_gen_interrupt(%struct.tpm_chip*) #1

declare dso_local i32 @free_irq(i32, %struct.tpm_chip*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tpm_get_timeouts(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_continue_selftest(%struct.tpm_chip*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @tpm_remove_hardware(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
