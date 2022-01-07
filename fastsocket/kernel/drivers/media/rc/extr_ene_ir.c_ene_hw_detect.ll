; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_hw_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_hw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i64, i32, i32, i32, i32 }

@ENE_ECSTS = common dso_local global i32 0, align 4
@ENE_ECSTS_RSRVD = common dso_local global i32 0, align 4
@ENE_ECVER_MAJOR = common dso_local global i32 0, align 4
@ENE_ECVER_MINOR = common dso_local global i32 0, align 4
@ENE_ECHV = common dso_local global i32 0, align 4
@ENE_HW_VER_OLD = common dso_local global i32 0, align 4
@ENE_PLLFRH = common dso_local global i32 0, align 4
@ENE_PLLFRL = common dso_local global i32 0, align 4
@sample_period = common dso_local global i64 0, align 8
@ENE_DEFAULT_SAMPLE_PERIOD = common dso_local global i64 0, align 8
@ENE_DEFAULT_PLL_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device seems to be disabled\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"send a mail to lirc-list@lists.sourceforge.net\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"please attach output of acpidump and dmidecode\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"chip is 0x%02x%02x - kbver = 0x%02x, rev = 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PLL freq = %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"chips 0x33xx aren't supported\00", align 1
@ENE_HW_C = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"KB3926C detected\00", align 1
@ENE_HW_B = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"KB3926B detected\00", align 1
@ENE_HW_D = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"KB3926D or higher detected\00", align 1
@ENE_FW1 = common dso_local global i32 0, align 4
@ENE_FW2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Firmware regs: %02x %02x\00", align 1
@ENE_FW2_GP0A = common dso_local global i32 0, align 4
@ENE_FW2_LEARNING = common dso_local global i32 0, align 4
@ENE_FW1_HAS_EXTRA_BUF = common dso_local global i32 0, align 4
@ENE_FW2_FAN_INPUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Hardware features:\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"* Supports transmitting & learning mode\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"   This feature is rare and therefore,\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"   you are welcome to test it,\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"   and/or contact the author via:\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"   lirc-list@lists.sourceforge.net\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   or maximlevitsky@gmail.com\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"* Uses GPIO %s for IR raw input\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"* Uses unused fan feedback input as source of demodulated IR data\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"* Uses GPIO %s for IR demodulated input\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"* Uses new style input buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ene_device*)* @ene_hw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_hw_detect(%struct.ene_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ene_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %3, align 8
  %10 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %11 = load i32, i32* @ENE_ECSTS, align 4
  %12 = load i32, i32* @ENE_ECSTS_RSRVD, align 4
  %13 = call i32 @ene_clear_reg_mask(%struct.ene_device* %10, i32 %11, i32 %12)
  %14 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %15 = load i32, i32* @ENE_ECVER_MAJOR, align 4
  %16 = call i32 @ene_read_reg(%struct.ene_device* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %18 = load i32, i32* @ENE_ECVER_MINOR, align 4
  %19 = call i32 @ene_read_reg(%struct.ene_device* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %21 = load i32, i32* @ENE_ECSTS, align 4
  %22 = load i32, i32* @ENE_ECSTS_RSRVD, align 4
  %23 = call i32 @ene_set_reg_mask(%struct.ene_device* %20, i32 %21, i32 %22)
  %24 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %25 = load i32, i32* @ENE_ECHV, align 4
  %26 = call i32 @ene_read_reg(%struct.ene_device* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %28 = load i32, i32* @ENE_HW_VER_OLD, align 4
  %29 = call i32 @ene_read_reg(%struct.ene_device* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %31 = load i32, i32* @ENE_PLLFRH, align 4
  %32 = call i32 @ene_read_reg(%struct.ene_device* %30, i32 %31)
  %33 = shl i32 %32, 4
  %34 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %35 = load i32, i32* @ENE_PLLFRL, align 4
  %36 = call i32 @ene_read_reg(%struct.ene_device* %34, i32 %35)
  %37 = ashr i32 %36, 4
  %38 = add nsw i32 %33, %37
  %39 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %40 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @sample_period, align 8
  %42 = load i64, i64* @ENE_DEFAULT_SAMPLE_PERIOD, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %46 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ENE_DEFAULT_PLL_FREQ, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 4
  %52 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %53 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %1
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = call i32 @ene_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @ene_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ene_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %216

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %70 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 51
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = call i32 @ene_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %216

79:                                               ; preds = %63
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 57
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 38
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 192
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i64, i64* @ENE_HW_C, align 8
  %90 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %91 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %110

93:                                               ; preds = %85, %82, %79
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 36
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 192
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* @ENE_HW_B, align 8
  %101 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %102 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %109

104:                                              ; preds = %96, %93
  %105 = load i64, i64* @ENE_HW_D, align 8
  %106 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %107 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %88
  %111 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %112 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ENE_HW_C, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %216

117:                                              ; preds = %110
  %118 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %119 = load i32, i32* @ENE_FW1, align 4
  %120 = call i32 @ene_read_reg(%struct.ene_device* %118, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %122 = load i32, i32* @ENE_FW2, align 4
  %123 = call i32 @ene_read_reg(%struct.ene_device* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @ENE_FW2_GP0A, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %135 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @ENE_FW2_LEARNING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %144 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @ENE_FW1_HAS_EXTRA_BUF, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %153 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 8
  %154 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %155 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %117
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @ENE_FW2_FAN_INPUT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %167 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %158, %117
  %169 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %170 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %171 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %176 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %177 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %180 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %181 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %182 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %187 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %186)
  %188 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %189 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %174
  %193 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %174
  br label %195

195:                                              ; preds = %194, %168
  %196 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %197 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %195
  %201 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %202 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  %207 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %200, %195
  %209 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %210 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = call i32 (i8*, ...) @ene_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %208
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %116, %75, %57
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @ene_clear_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_set_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ene_warn(i8*) #1

declare dso_local i32 @ene_notice(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
