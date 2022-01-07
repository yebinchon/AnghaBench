; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.fc_bsg_job = type { i32, i32 (%struct.fc_bsg_job*)*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.diag_mode_set = type { i32, i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"3011 Received DIAG MODE request size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"3129 Bring link to diagnostic state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"3130 Failed to bring link to diagnostic state, rc:x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"3131 Timeout waiting for link to diagnostic mode, timeout:%d ms\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"3132 Set up loopback mode:x%x\0A\00", align 1
@INTERNAL_LOOP_BACK = common dso_local global i32 0, align 4
@EXTERNAL_LOOP_BACK = common dso_local global i32 0, align 4
@FLAGS_TOPOLOGY_MODE_PT_PT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"3141 Loopback mode:x%x not supported\0A\00", align 1
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [66 x i8] c"3137 Timeout waiting for link up in loopback mode, timeout:%d ms\0A\00", align 1
@LPFC_HBA_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [66 x i8] c"3133 Timeout waiting for port loopback mode ready, timeout:%d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_bsg_job*)* @lpfc_sli4_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.fc_bsg_job*, align 8
  %5 = alloca %struct.diag_mode_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %11 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 12
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = load i32, i32* @KERN_WARNING, align 4
  %22 = load i32, i32* @LOG_LIBDFC, align 4
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %25, i32 12)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %221

29:                                               ; preds = %2
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %221

35:                                               ; preds = %29
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = call i32 @lpfc_selective_reset(%struct.lpfc_hba* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %221

52:                                               ; preds = %35
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load i32, i32* @LOG_LIBDFC, align 4
  %56 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %58 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %64, %struct.diag_mode_set** %5, align 8
  %65 = load %struct.diag_mode_set*, %struct.diag_mode_set** %5, align 8
  %66 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.diag_mode_set*, %struct.diag_mode_set** %5, align 8
  %69 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 100
  store i32 %71, i32* %7, align 4
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %72, i32 1)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %52
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = load i32, i32* @KERN_WARNING, align 4
  %79 = load i32, i32* @LOG_LIBDFC, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %202

82:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %98 = load i32, i32* @KERN_INFO, align 4
  %99 = load i32, i32* @LOG_LIBDFC, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 10
  %102 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %202

103:                                              ; preds = %89
  %104 = call i32 @msleep(i32 10)
  br label %83

105:                                              ; preds = %83
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = load i32, i32* @KERN_INFO, align 4
  %108 = load i32, i32* @LOG_LIBDFC, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @INTERNAL_LOOP_BACK, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = call i32 @lpfc_sli4_bsg_set_internal_loopback(%struct.lpfc_hba* %115)
  store i32 %116, i32* %9, align 4
  br label %134

117:                                              ; preds = %105
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @EXTERNAL_LOOP_BACK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = load i32, i32* @FLAGS_TOPOLOGY_MODE_PT_PT, align 4
  %124 = call i32 @lpfc_hba_init_link_fc_topology(%struct.lpfc_hba* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  br label %133

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = load i32, i32* @KERN_ERR, align 4
  %130 = load i32, i32* @LOG_LIBDFC, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %202

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %114
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %162, label %137

137:                                              ; preds = %134
  %138 = call i32 @msleep(i32 100)
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %159, %137
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @LPFC_LINK_UP, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = load i32, i32* @KERN_INFO, align 4
  %155 = load i32, i32* @LOG_LIBDFC, align 4
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 10
  %158 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %161

159:                                              ; preds = %145
  %160 = call i32 @msleep(i32 10)
  br label %139

161:                                              ; preds = %150, %139
  br label %162

162:                                              ; preds = %161, %134
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 3
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %171 = call i32 @lpfc_sli4_diag_fcport_reg_setup(%struct.lpfc_hba* %170)
  store i32 %171, i32* %9, align 4
  br label %173

172:                                              ; preds = %162
  br label %202

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %201, label %176

176:                                              ; preds = %173
  %177 = call i32 @msleep(i32 100)
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %198, %176
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @LPFC_HBA_READY, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %178
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp sgt i32 %185, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, i32* @ETIMEDOUT, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %9, align 4
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = load i32, i32* @KERN_INFO, align 4
  %194 = load i32, i32* @LOG_LIBDFC, align 4
  %195 = load i32, i32* %7, align 4
  %196 = mul nsw i32 %195, 10
  %197 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  br label %200

198:                                              ; preds = %184
  %199 = call i32 @msleep(i32 10)
  br label %178

200:                                              ; preds = %189, %178
  br label %201

201:                                              ; preds = %200, %173
  br label %202

202:                                              ; preds = %201, %172, %125, %94, %76
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 1
  %208 = call i32 @spin_lock_irq(i32* %207)
  %209 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 1
  %217 = call i32 @spin_unlock_irq(i32* %216)
  br label %218

218:                                              ; preds = %205, %202
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %220 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %219)
  br label %221

221:                                              ; preds = %218, %51, %34, %19
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %224 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %223, i32 0, i32 2
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %222, i32* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %221
  %230 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %231 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %230, i32 0, i32 1
  %232 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %231, align 8
  %233 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %234 = call i32 %232(%struct.fc_bsg_job* %233)
  br label %235

235:                                              ; preds = %229, %221
  %236 = load i32, i32* %9, align 4
  ret i32 %236
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_selective_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli4_bsg_set_internal_loopback(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_hba_init_link_fc_topology(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_diag_fcport_reg_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
