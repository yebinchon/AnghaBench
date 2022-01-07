; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.ips_driver = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i32, i32, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IPS not supported on this CPU\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't enable PCI device, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TBAR not assigned, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ips thermal sensor\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"thermal resource busy, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to map thermal regs, aborting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THM_TSE = common dso_local global i32 0, align 4
@TSE_EN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"thermal device not enabled (0x%02x), aborting\0A\00", align 1
@THM_TRC = common dso_local global i32 0, align 4
@TRC_CORE1_EN = common dso_local global i32 0, align 4
@TRC_CORE_PWR = common dso_local global i32 0, align 4
@TRC_MCH_EN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"thermal reporting for required devices not enabled, aborting\0A\00", align 1
@TRC_CORE2_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"max cpu power clamp: %dW\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"max core power clamp: %dW\0A\00", align 1
@THM_PSC = common dso_local global i32 0, align 4
@PSP_PBRT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"failed to get i915 symbols, graphics turbo disabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"graphics turbo enabled\0A\00", align 1
@PLATFORM_INFO = common dso_local global i32 0, align 4
@PLATFORM_TDP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"platform indicates TDP override unavailable, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ips_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"request irq failed, aborting\0A\00", align 1
@THM_TSPIEN = common dso_local global i32 0, align 4
@TSPIEN_AUX2_LOHI = common dso_local global i32 0, align 4
@TSPIEN_CRIT_LOHI = common dso_local global i32 0, align 4
@TSPIEN_HOT_LOHI = common dso_local global i32 0, align 4
@TSPIEN_AUX_LOHI = common dso_local global i32 0, align 4
@THM_TEN = common dso_local global i32 0, align 4
@TEN_UPDATE_EN = common dso_local global i32 0, align 4
@THM_CTA = common dso_local global i32 0, align 4
@THM_PTA = common dso_local global i32 0, align 4
@THM_MGTA = common dso_local global i32 0, align 4
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@ips_adjust = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"ips-adjust\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"failed to create thermal adjust thread, aborting\0A\00", align 1
@ips_monitor = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"ips-monitor\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"failed to create thermal monitor thread, aborting\0A\00", align 1
@HTS_PCPL_SHIFT = common dso_local global i32 0, align 4
@HTS_PTL_SHIFT = common dso_local global i32 0, align 4
@HTS_NVV = common dso_local global i32 0, align 4
@HTS2_PRST_RUNNING = common dso_local global i32 0, align 4
@HTS2_PRST_SHIFT = common dso_local global i32 0, align 4
@THM_HTSHI = common dso_local global i32 0, align 4
@THM_HTS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [43 x i8] c"IPS driver initialized, MCP temp limit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ips_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ips_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ips_driver* @kzalloc(i32 88, i32 %14)
  store %struct.ips_driver* %15, %struct.ips_driver** %7, align 8
  %16 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %17 = icmp ne %struct.ips_driver* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %327

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %24 = call i32 @pci_set_drvdata(%struct.pci_dev* %22, %struct.ips_driver* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %27 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %26, i32 0, i32 9
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %29 = call i32 @ips_detect_cpu(%struct.ips_driver* %28)
  %30 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 16
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %33 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = call i32 (i32*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %323

42:                                               ; preds = %21
  %43 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %44 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %43, i32 0, i32 15
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @pci_enable_device(%struct.pci_dev* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %323

54:                                               ; preds = %42
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_resource_start(%struct.pci_dev* %55, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %323

64:                                               ; preds = %54
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_request_regions(%struct.pci_dev* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %323

73:                                               ; preds = %64
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = call i32 @pci_resource_start(%struct.pci_dev* %74, i32 0)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i32 @pci_resource_len(%struct.pci_dev* %76, i32 0)
  %78 = call i32 @ioremap(i32 %75, i32 %77)
  %79 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %80 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %82 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %320

91:                                               ; preds = %73
  %92 = load i32, i32* @THM_TSE, align 4
  %93 = call i64 @thm_readb(i32 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @TSE_EN, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = load i64, i64* %13, align 8
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* @ENXIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %315

104:                                              ; preds = %91
  %105 = load i32, i32* @THM_TRC, align 4
  %106 = call i8* @thm_readw(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @TRC_CORE1_EN, align 4
  %109 = load i32, i32* @TRC_CORE_PWR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @TRC_MCH_EN, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %104
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 1
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  br label %315

124:                                              ; preds = %104
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @TRC_CORE2_EN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %131 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %124
  %133 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %134 = call i32 @update_turbo_limits(%struct.ips_driver* %133)
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 1
  %137 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %138 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 10
  %141 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 1
  %144 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %145 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %146, 10
  %148 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @THM_PSC, align 4
  %150 = call i32 @thm_readl(i32 %149)
  %151 = load i32, i32* @PSP_PBRT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %132
  %155 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %156 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %155, i32 0, i32 3
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %132
  %158 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %159 = call i32 @ips_get_i915_syms(%struct.ips_driver* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 1
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %165 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %166 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %165, i32 0, i32 4
  store i32 0, i32* %166, align 8
  br label %173

167:                                              ; preds = %157
  %168 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 1
  %170 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %171 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %172 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %171, i32 0, i32 4
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %167, %161
  %174 = load i32, i32* @PLATFORM_INFO, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @rdmsrl(i32 %174, i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @PLATFORM_TDP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %173
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 1
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %183, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %185 = load i32, i32* @ENODEV, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %9, align 4
  br label %315

187:                                              ; preds = %173
  %188 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %189 = call i32 @pci_disable_msi(%struct.pci_dev* %188)
  %190 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %191 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ips_irq_handler, align 4
  %194 = load i32, i32* @IRQF_SHARED, align 4
  %195 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %196 = call i32 @request_irq(i32 %192, i32 %193, i32 %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %struct.ips_driver* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %187
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %200, i32 0, i32 1
  %202 = call i32 (i32*, i8*, ...) @dev_err(i32* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %315

203:                                              ; preds = %187
  %204 = load i32, i32* @THM_TSPIEN, align 4
  %205 = load i32, i32* @TSPIEN_AUX2_LOHI, align 4
  %206 = load i32, i32* @TSPIEN_CRIT_LOHI, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @TSPIEN_HOT_LOHI, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @TSPIEN_AUX_LOHI, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @thm_writeb(i32 %204, i32 %211)
  %213 = load i32, i32* @THM_TEN, align 4
  %214 = load i32, i32* @TEN_UPDATE_EN, align 4
  %215 = call i32 @thm_writeb(i32 %213, i32 %214)
  %216 = load i32, i32* @THM_CTA, align 4
  %217 = call i8* @thm_readw(i32 %216)
  %218 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %219 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %218, i32 0, i32 14
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* @THM_PTA, align 4
  %221 = call i8* @thm_readw(i32 %220)
  %222 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %223 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %222, i32 0, i32 13
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @THM_MGTA, align 4
  %225 = call i8* @thm_readw(i32 %224)
  %226 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %227 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %226, i32 0, i32 12
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %229 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %230 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rdmsrl(i32 %228, i32 %231)
  %233 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %234 = call i32 @ips_disable_cpu_turbo(%struct.ips_driver* %233)
  %235 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %236 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %235, i32 0, i32 6
  store i32 0, i32* %236, align 8
  %237 = load i32, i32* @ips_adjust, align 4
  %238 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %239 = call i32 @kthread_create(i32 %237, %struct.ips_driver* %238, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %240 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %241 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %240, i32 0, i32 10
  store i32 %239, i32* %241, align 8
  %242 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %243 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @IS_ERR(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %203
  %248 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %249 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %248, i32 0, i32 1
  %250 = call i32 (i32*, i8*, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %9, align 4
  br label %307

253:                                              ; preds = %203
  %254 = load i32, i32* @ips_monitor, align 4
  %255 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %256 = call i32 @kthread_run(i32 %254, %struct.ips_driver* %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %257 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %258 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %257, i32 0, i32 11
  store i32 %256, i32* %258, align 4
  %259 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %260 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @IS_ERR(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %253
  %265 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %266 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %265, i32 0, i32 1
  %267 = call i32 (i32*, i8*, ...) @dev_err(i32* %266, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0))
  %268 = load i32, i32* @ENOMEM, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %9, align 4
  br label %302

270:                                              ; preds = %253
  %271 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %272 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @HTS_PCPL_SHIFT, align 4
  %275 = shl i32 %273, %274
  %276 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %277 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @HTS_PTL_SHIFT, align 4
  %280 = shl i32 %278, %279
  %281 = or i32 %275, %280
  %282 = load i32, i32* @HTS_NVV, align 4
  %283 = or i32 %281, %282
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* @HTS2_PRST_RUNNING, align 4
  %285 = load i32, i32* @HTS2_PRST_SHIFT, align 4
  %286 = shl i32 %284, %285
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* @THM_HTSHI, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @thm_writew(i32 %287, i32 %288)
  %290 = load i32, i32* @THM_HTS, align 4
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @thm_writel(i32 %290, i32 %291)
  %293 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %294 = call i32 @ips_debugfs_init(%struct.ips_driver* %293)
  %295 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %296 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %295, i32 0, i32 1
  %297 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %298 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32*, i8*, ...) @dev_info(i32* %296, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %9, align 4
  store i32 %301, i32* %3, align 4
  br label %327

302:                                              ; preds = %264
  %303 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %304 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @kthread_stop(i32 %305)
  br label %307

307:                                              ; preds = %302, %247
  %308 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %309 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %308, i32 0, i32 9
  %310 = load %struct.pci_dev*, %struct.pci_dev** %309, align 8
  %311 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %314 = call i32 @free_irq(i32 %312, %struct.ips_driver* %313)
  br label %315

315:                                              ; preds = %307, %199, %181, %118, %97
  %316 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %317 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %316, i32 0, i32 8
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @iounmap(i32 %318)
  br label %320

320:                                              ; preds = %315, %85
  %321 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %322 = call i32 @pci_release_regions(%struct.pci_dev* %321)
  br label %323

323:                                              ; preds = %320, %69, %58, %50, %36
  %324 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %325 = call i32 @kfree(%struct.ips_driver* %324)
  %326 = load i32, i32* %9, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %323, %270, %18
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.ips_driver* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ips_driver*) #1

declare dso_local i32 @ips_detect_cpu(%struct.ips_driver*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @thm_readb(i32) #1

declare dso_local i8* @thm_readw(i32) #1

declare dso_local i32 @update_turbo_limits(%struct.ips_driver*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @thm_readl(i32) #1

declare dso_local i32 @ips_get_i915_syms(%struct.ips_driver*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ips_driver*) #1

declare dso_local i32 @thm_writeb(i32, i32) #1

declare dso_local i32 @ips_disable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @kthread_create(i32, %struct.ips_driver*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.ips_driver*, i8*) #1

declare dso_local i32 @thm_writew(i32, i32) #1

declare dso_local i32 @thm_writel(i32, i32) #1

declare dso_local i32 @ips_debugfs_init(%struct.ips_driver*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ips_driver*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ips_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
