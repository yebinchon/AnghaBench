; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hba_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hba_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@lpfc_sli_mode = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"1824 NPIV enabled: Override lpfc_sli_mode parameter (%d) to auto (0).\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"1819 Unrecognized lpfc_sli_mode parameter: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"1820 Unable to select SLI-3.  Not supported by adapter.\0A\00", align 1
@HBA_AER_ENABLED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"2709 This device supports Advanced Error Reporting (AER)\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"2708 This device does not support Advanced Error Reporting (AER): %d\0A\00", align 1
@SLI3_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI3_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"0444 Firmware in SLI %x mode. Max_vpi %d\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"0445 Firmware initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_hba_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 3, i32* %5, align 4
  %8 = load i32, i32* @lpfc_sli_mode, align 4
  switch i32 %8, label %24 [
    i32 2, label %9
    i32 0, label %23
    i32 3, label %23
  ]

9:                                                ; preds = %1
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load i32, i32* @LOG_INIT, align 4
  %18 = load i32, i32* @LOG_VPORT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @lpfc_sli_mode, align 4
  %21 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %32

22:                                               ; preds = %9
  store i32 2, i32* %5, align 4
  br label %32

23:                                               ; preds = %1, %1
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* @LOG_INIT, align 4
  %28 = load i32, i32* @LOG_VPORT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @lpfc_sli_mode, align 4
  %31 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %23, %22, %14
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32, i32* @lpfc_sli_mode, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i32, i32* @LOG_INIT, align 4
  %45 = load i32, i32* @LOG_VPORT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %41, %38, %32
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %55, i32 2)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %260

61:                                               ; preds = %57
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HBA_AER_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %66
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_enable_pcie_error_reporting(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %73
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load i32, i32* @LOG_INIT, align 4
  %84 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 7
  %87 = call i32 @spin_lock_irq(i32* %86)
  %88 = load i32, i32* @HBA_AER_ENABLED, align 4
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 7
  %95 = call i32 @spin_unlock_irq(i32* %94)
  br label %104

96:                                               ; preds = %73
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %98 = load i32, i32* @KERN_INFO, align 4
  %99 = load i32, i32* @LOG_INIT, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %80
  br label %105

105:                                              ; preds = %104, %66, %61
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32, i32* @SLI3_IOCB_CMD_SIZE, align 4
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 11
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @SLI3_IOCB_RSP_SIZE, align 4
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  br label %126

117:                                              ; preds = %105
  %118 = load i32, i32* @SLI2_IOCB_CMD_SIZE, align 4
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 11
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @SLI2_IOCB_RSP_SIZE, align 4
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 10
  store i32 %121, i32* %123, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %110
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = load i32, i32* @KERN_INFO, align 4
  %129 = load i32, i32* @LOG_INIT, align 4
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = call i32 @lpfc_sli_ring_map(%struct.lpfc_hba* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %126
  br label %260

142:                                              ; preds = %126
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @LPFC_SLI_REV3, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %226

148:                                              ; preds = %142
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 9
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %225

153:                                              ; preds = %148
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %225

158:                                              ; preds = %153
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @BITS_PER_LONG, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* @BITS_PER_LONG, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 8
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @kzalloc(i32 %169, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 9
  store i32* %172, i32** %174, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 9
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %158
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %260

182:                                              ; preds = %158
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* @GFP_KERNEL, align 4
  %191 = call i8* @kzalloc(i32 %189, i32 %190)
  %192 = bitcast i8* %191 to i32*
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 5
  store i32* %192, i32** %194, align 8
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %182
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 9
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %260

206:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %221, %206
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  br label %221

221:                                              ; preds = %213
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %207

224:                                              ; preds = %207
  br label %225

225:                                              ; preds = %224, %153, %148
  br label %226

226:                                              ; preds = %225, %142
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %235 = call i32 @lpfc_sli_hbq_setup(%struct.lpfc_hba* %234)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %260

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %239, %226
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 7
  %243 = call i32 @spin_lock_irq(i32* %242)
  %244 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 8
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %251 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %250, i32 0, i32 7
  %252 = call i32 @spin_unlock_irq(i32* %251)
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %254 = call i32 @lpfc_config_port_post(%struct.lpfc_hba* %253)
  store i32 %254, i32* %4, align 4
  %255 = load i32, i32* %4, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %240
  br label %260

258:                                              ; preds = %240
  %259 = load i32, i32* %4, align 4
  store i32 %259, i32* %2, align 4
  br label %269

260:                                              ; preds = %257, %238, %199, %179, %141, %60
  %261 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %262 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %263 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 8
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %265 = load i32, i32* @KERN_ERR, align 4
  %266 = load i32, i32* @LOG_INIT, align 4
  %267 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %264, i32 %265, i32 %266, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %268 = load i32, i32* %4, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %260, %258
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli_config_port(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_ring_map(%struct.lpfc_hba*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @lpfc_sli_hbq_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port_post(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
