; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_alloc_resource_identifiers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_alloc_resource_identifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@lpfc_idx_rsrc_rdy = common dso_local global i32 0, align 4
@LPFC_IDX_RSRC_RDY = common dso_local global i64 0, align 8
@LPFC_RSC_TYPE_FCOE_VFI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_VPI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_XRI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_RPI = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"2931 Detected extent resource change.  Reallocating all extents.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"3279 Invalid provisioning of rpi:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"3280 Invalid provisioning of vpi:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"3281 Invalid provisioning of xri:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"3282 Invalid provisioning of vfi:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_alloc_resource_identifiers(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %138

30:                                               ; preds = %24
  %31 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = call i64 @bf_get(i32 %31, i32* %34)
  %36 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %30
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %41 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %50 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %59 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %68 = call i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load i32, i32* @LOG_MBOX, align 4
  %81 = load i32, i32* @LOG_INIT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %86 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %89 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %92 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %95 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %567

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %30
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %101 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %565

106:                                              ; preds = %98
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %109 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %565

114:                                              ; preds = %106
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %117 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %565

122:                                              ; preds = %114
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %124 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %125 = call i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %565

130:                                              ; preds = %122
  %131 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  %135 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %136 = call i32 @bf_set(i32 %131, i32* %134, i64 %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %567

138:                                              ; preds = %24
  %139 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  %143 = call i64 @bf_get(i32 %139, i32* %142)
  %144 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %148 = call i32 @lpfc_sli4_dealloc_resource_identifiers(%struct.lpfc_hba* %147)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = call i32 @lpfc_sli4_remove_rpis(%struct.lpfc_hba* %149)
  br label %151

151:                                              ; preds = %146, %138
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* @LOG_SLI, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %565

167:                                              ; preds = %151
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @BITS_PER_LONG, align 4
  %175 = add nsw i32 %173, %174
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* @BITS_PER_LONG, align 4
  %178 = sdiv i32 %176, %177
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %9, align 8
  %180 = load i64, i64* %9, align 8
  %181 = mul i64 %180, 8
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call i8* @kzalloc(i32 %182, i32 %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i32* %185, i32** %188, align 8
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %167
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %565

201:                                              ; preds = %167
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call i8* @kzalloc(i32 %205, i32 %206)
  %208 = bitcast i8* %207 to i32*
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i32* %208, i32** %211, align 8
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %201
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %559

224:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %240, %224
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %225
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %230, %231
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %232, i32* %239, align 4
  br label %240

240:                                              ; preds = %229
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %225

243:                                              ; preds = %225
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %243
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %253 = load i32, i32* @KERN_ERR, align 4
  %254 = load i32, i32* @LOG_SLI, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %252, i32 %253, i32 %254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %5, align 4
  br label %553

259:                                              ; preds = %243
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @BITS_PER_LONG, align 4
  %267 = add nsw i32 %265, %266
  %268 = sub nsw i32 %267, 1
  %269 = load i32, i32* @BITS_PER_LONG, align 4
  %270 = sdiv i32 %268, %269
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %9, align 8
  %272 = load i64, i64* %9, align 8
  %273 = mul i64 %272, 8
  %274 = trunc i64 %273 to i32
  %275 = load i32, i32* @GFP_KERNEL, align 4
  %276 = call i8* @kzalloc(i32 %274, i32 %275)
  %277 = bitcast i8* %276 to i32*
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %279 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %278, i32 0, i32 0
  store i32* %277, i32** %279, align 8
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = call i64 @unlikely(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %259
  %289 = load i32, i32* @ENOMEM, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %5, align 4
  br label %553

291:                                              ; preds = %259
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = mul i64 %293, 4
  %295 = trunc i64 %294 to i32
  %296 = load i32, i32* @GFP_KERNEL, align 4
  %297 = call i8* @kzalloc(i32 %295, i32 %296)
  %298 = bitcast i8* %297 to i32*
  %299 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %300 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %299, i32 0, i32 1
  store i32* %298, i32** %300, align 8
  %301 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %302 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = icmp ne i32* %303, null
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i64 @unlikely(i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %291
  %310 = load i32, i32* @ENOMEM, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %5, align 4
  br label %548

312:                                              ; preds = %291
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %327, %312
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* %7, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %330

317:                                              ; preds = %313
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %4, align 4
  %320 = add nsw i32 %318, %319
  %321 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %322 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %320, i32* %326, align 4
  br label %327

327:                                              ; preds = %317
  %328 = load i32, i32* %4, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %4, align 4
  br label %313

330:                                              ; preds = %313
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %332 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %7, align 4
  %336 = load i32, i32* %7, align 4
  %337 = icmp sle i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %330
  %339 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %340 = load i32, i32* @KERN_ERR, align 4
  %341 = load i32, i32* @LOG_SLI, align 4
  %342 = load i32, i32* %7, align 4
  %343 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %339, i32 %340, i32 %341, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %342)
  %344 = load i32, i32* @EINVAL, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %5, align 4
  br label %543

346:                                              ; preds = %330
  %347 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %348 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @BITS_PER_LONG, align 4
  %354 = add nsw i32 %352, %353
  %355 = sub nsw i32 %354, 1
  %356 = load i32, i32* @BITS_PER_LONG, align 4
  %357 = sdiv i32 %355, %356
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %9, align 8
  %359 = load i64, i64* %9, align 8
  %360 = mul i64 %359, 8
  %361 = trunc i64 %360 to i32
  %362 = load i32, i32* @GFP_KERNEL, align 4
  %363 = call i8* @kzalloc(i32 %361, i32 %362)
  %364 = bitcast i8* %363 to i32*
  %365 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %366 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 3
  store i32* %364, i32** %367, align 8
  %368 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %369 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 3
  %371 = load i32*, i32** %370, align 8
  %372 = icmp ne i32* %371, null
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i32
  %375 = call i64 @unlikely(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %346
  %378 = load i32, i32* @ENOMEM, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %5, align 4
  br label %543

380:                                              ; preds = %346
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %382 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 8
  store i64 0, i64* %384, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = mul i64 %386, 4
  %388 = trunc i64 %387 to i32
  %389 = load i32, i32* @GFP_KERNEL, align 4
  %390 = call i8* @kzalloc(i32 %388, i32 %389)
  %391 = bitcast i8* %390 to i32*
  %392 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %393 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 4
  store i32* %391, i32** %394, align 8
  %395 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %396 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = icmp ne i32* %398, null
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i32
  %402 = call i64 @unlikely(i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %380
  %405 = load i32, i32* @ENOMEM, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %5, align 4
  br label %537

407:                                              ; preds = %380
  store i32 0, i32* %4, align 4
  br label %408

408:                                              ; preds = %423, %407
  %409 = load i32, i32* %4, align 4
  %410 = load i32, i32* %7, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %426

412:                                              ; preds = %408
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* %4, align 4
  %415 = add nsw i32 %413, %414
  %416 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %417 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 4
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %4, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %415, i32* %422, align 4
  br label %423

423:                                              ; preds = %412
  %424 = load i32, i32* %4, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %4, align 4
  br label %408

426:                                              ; preds = %408
  %427 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %428 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 8
  store i32 %431, i32* %7, align 4
  %432 = load i32, i32* %7, align 4
  %433 = icmp sle i32 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %426
  %435 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %436 = load i32, i32* @KERN_ERR, align 4
  %437 = load i32, i32* @LOG_SLI, align 4
  %438 = load i32, i32* %7, align 4
  %439 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %435, i32 %436, i32 %437, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %438)
  %440 = load i32, i32* @EINVAL, align 4
  %441 = sub nsw i32 0, %440
  store i32 %441, i32* %5, align 4
  br label %531

442:                                              ; preds = %426
  %443 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %444 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  store i32 %447, i32* %8, align 4
  %448 = load i32, i32* %7, align 4
  %449 = load i32, i32* @BITS_PER_LONG, align 4
  %450 = add nsw i32 %448, %449
  %451 = sub nsw i32 %450, 1
  %452 = load i32, i32* @BITS_PER_LONG, align 4
  %453 = sdiv i32 %451, %452
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %9, align 8
  %455 = load i64, i64* %9, align 8
  %456 = mul i64 %455, 8
  %457 = trunc i64 %456 to i32
  %458 = load i32, i32* @GFP_KERNEL, align 4
  %459 = call i8* @kzalloc(i32 %457, i32 %458)
  %460 = bitcast i8* %459 to i32*
  %461 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %462 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 5
  store i32* %460, i32** %463, align 8
  %464 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %465 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 5
  %467 = load i32*, i32** %466, align 8
  %468 = icmp ne i32* %467, null
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = call i64 @unlikely(i32 %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %442
  %474 = load i32, i32* @ENOMEM, align 4
  %475 = sub nsw i32 0, %474
  store i32 %475, i32* %5, align 4
  br label %531

476:                                              ; preds = %442
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = mul i64 %478, 4
  %480 = trunc i64 %479 to i32
  %481 = load i32, i32* @GFP_KERNEL, align 4
  %482 = call i8* @kzalloc(i32 %480, i32 %481)
  %483 = bitcast i8* %482 to i32*
  %484 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %485 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %484, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 6
  store i32* %483, i32** %486, align 8
  %487 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %488 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %487, i32 0, i32 2
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 6
  %490 = load i32*, i32** %489, align 8
  %491 = icmp ne i32* %490, null
  %492 = xor i1 %491, true
  %493 = zext i1 %492 to i32
  %494 = call i64 @unlikely(i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %476
  %497 = load i32, i32* @ENOMEM, align 4
  %498 = sub nsw i32 0, %497
  store i32 %498, i32* %5, align 4
  br label %525

499:                                              ; preds = %476
  store i32 0, i32* %4, align 4
  br label %500

500:                                              ; preds = %515, %499
  %501 = load i32, i32* %4, align 4
  %502 = load i32, i32* %7, align 4
  %503 = icmp slt i32 %501, %502
  br i1 %503, label %504, label %518

504:                                              ; preds = %500
  %505 = load i32, i32* %8, align 4
  %506 = load i32, i32* %4, align 4
  %507 = add nsw i32 %505, %506
  %508 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %509 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %509, i32 0, i32 6
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %4, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  store i32 %507, i32* %514, align 4
  br label %515

515:                                              ; preds = %504
  %516 = load i32, i32* %4, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %4, align 4
  br label %500

518:                                              ; preds = %500
  %519 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %520 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %521 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %521, i32 0, i32 7
  %523 = load i64, i64* @LPFC_IDX_RSRC_RDY, align 8
  %524 = call i32 @bf_set(i32 %519, i32* %522, i64 %523)
  store i32 0, i32* %2, align 4
  br label %567

525:                                              ; preds = %496
  %526 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %527 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 5
  %529 = load i32*, i32** %528, align 8
  %530 = call i32 @kfree(i32* %529)
  br label %531

531:                                              ; preds = %525, %473, %434
  %532 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %533 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 4
  %535 = load i32*, i32** %534, align 8
  %536 = call i32 @kfree(i32* %535)
  br label %537

537:                                              ; preds = %531, %404
  %538 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %539 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %539, i32 0, i32 3
  %541 = load i32*, i32** %540, align 8
  %542 = call i32 @kfree(i32* %541)
  br label %543

543:                                              ; preds = %537, %377, %338
  %544 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %545 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %544, i32 0, i32 1
  %546 = load i32*, i32** %545, align 8
  %547 = call i32 @kfree(i32* %546)
  br label %548

548:                                              ; preds = %543, %309
  %549 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %550 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %549, i32 0, i32 0
  %551 = load i32*, i32** %550, align 8
  %552 = call i32 @kfree(i32* %551)
  br label %553

553:                                              ; preds = %548, %288, %251
  %554 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %555 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %554, i32 0, i32 2
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 2
  %557 = load i32*, i32** %556, align 8
  %558 = call i32 @kfree(i32* %557)
  br label %559

559:                                              ; preds = %553, %221
  %560 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %561 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = call i32 @kfree(i32* %563)
  br label %565

565:                                              ; preds = %559, %198, %159, %129, %121, %113, %105
  %566 = load i32, i32* %5, align 4
  store i32 %566, i32* %2, align 4
  br label %567

567:                                              ; preds = %565, %518, %130, %96
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_chk_avail_extnt_rsrc(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_alloc_extent(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_set(i32, i32*, i64) #1

declare dso_local i32 @lpfc_sli4_dealloc_resource_identifiers(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_remove_rpis(%struct.lpfc_hba*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
