; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_set_affinity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.lpfc_vector_map_info*, %struct.TYPE_3__* }
%struct.lpfc_vector_map_info = type { i32, i32, i32, %struct.cpumask, i64 }
%struct.cpumask = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LPFC_FCP_IO_CHAN_MAX = common dso_local global i32 0, align 4
@LPFC_VECTOR_MAP_EMPTY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"3328 CPU physid %d coreid %d\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"3329 Cannot set affinity:Error mapping vector %d (%d)\0A\00", align 1
@LPFC_DRIVER_CPU_MAP = common dso_local global i64 0, align 8
@lpfc_used_cpu = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"3330 Set Affinity: CPU %d channel %d irq %d (%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"3331 Set IO_CHANN CPU %d channel %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"3332 Assign IO_CHANN CPU %d channel %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"3333 Set affinity mismatch:%d chann != %d cpus: %d vactors\0A\00", align 1
@LPFC_FCP_SCHED_BY_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_set_affinity(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.lpfc_vector_map_info*, align 8
  %16 = alloca %struct.cpumask*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @LPFC_FCP_IO_CHAN_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %404

30:                                               ; preds = %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %33, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 24, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(%struct.lpfc_vector_map_info* %34, i32 255, i32 %41)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %46, align 8
  store %struct.lpfc_vector_map_info* %47, %struct.lpfc_vector_map_info** %15, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %83, %30
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %57 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %59 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = load i32, i32* @KERN_INFO, align 4
  %62 = load i32, i32* @LOG_INIT, align 4
  %63 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %64 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %67 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %69)
  %71 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %72 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %55
  %77 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %78 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %76, %55
  %81 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %82 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %81, i32 1
  store %struct.lpfc_vector_map_info* %82, %struct.lpfc_vector_map_info** %15, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %48

86:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %216, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %219

91:                                               ; preds = %87
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %94, align 8
  store %struct.lpfc_vector_map_info* %95, %struct.lpfc_vector_map_info** %15, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @lpfc_find_next_cpu(%struct.lpfc_hba* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %91
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %123, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %107
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @lpfc_find_next_cpu(%struct.lpfc_hba* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %123

122:                                              ; preds = %114
  br label %134

123:                                              ; preds = %121
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %103

126:                                              ; preds = %103
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = load i32, i32* @KERN_ERR, align 4
  %129 = load i32, i32* @LOG_INIT, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %404

133:                                              ; preds = %91
  br label %134

134:                                              ; preds = %133, %122
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %136, i64 %137
  store %struct.lpfc_vector_map_info* %138, %struct.lpfc_vector_map_info** %15, align 8
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @LPFC_DRIVER_CPU_MAP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load i32, i32* %11, align 4
  %146 = load i32*, i32** @lpfc_used_cpu, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %134
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %161 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %164 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %150
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %170, %150
  %173 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %174 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %173, i32 0, i32 3
  store %struct.cpumask* %174, %struct.cpumask** %16, align 8
  %175 = load %struct.cpumask*, %struct.cpumask** %16, align 8
  %176 = call i32 @cpumask_clear(%struct.cpumask* %175)
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.cpumask*, %struct.cpumask** %16, align 8
  %179 = call i32 @cpumask_set_cpu(i32 %177, %struct.cpumask* %178)
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.cpumask*, %struct.cpumask** %16, align 8
  %190 = call i32 @irq_set_affinity_hint(i32 %188, %struct.cpumask* %189)
  store i32 %190, i32* %6, align 4
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = load i32, i32* @KERN_INFO, align 4
  %193 = load i32, i32* @LOG_INIT, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %196 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %199 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %6, align 4
  %208 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %197, i32 %206, i32 %207)
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %172
  store i32 0, i32* %11, align 4
  br label %215

215:                                              ; preds = %214, %172
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %87

219:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %331, %219
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %334

224:                                              ; preds = %220
  store i32 0, i32* %7, align 4
  br label %225

225:                                              ; preds = %236, %224
  %226 = load i32, i32* %7, align 4
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %24, i64 %234
  store i32 %232, i32* %235, align 4
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %225

239:                                              ; preds = %225
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %242, align 8
  store %struct.lpfc_vector_map_info* %243, %struct.lpfc_vector_map_info** %15, align 8
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %246, i64 %247
  store %struct.lpfc_vector_map_info* %248, %struct.lpfc_vector_map_info** %15, align 8
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %327, %239
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %250, %254
  br i1 %255, label %256, label %330

256:                                              ; preds = %249
  %257 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %258 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %308

262:                                              ; preds = %256
  %263 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %264 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %270 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %24, i64 %273
  store i32 %271, i32* %274, align 4
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %309

277:                                              ; preds = %262
  %278 = load i32, i32* %8, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %282 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %280, %277
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %24, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %290 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %13, align 4
  %293 = load i32, i32* %9, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* %8, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %284
  store i32 0, i32* %9, align 4
  br label %299

299:                                              ; preds = %298, %284
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %301 = load i32, i32* @KERN_INFO, align 4
  %302 = load i32, i32* @LOG_INIT, align 4
  %303 = load i32, i32* %7, align 4
  %304 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %305 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %300, i32 %301, i32 %302, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %303, i32 %306)
  br label %308

308:                                              ; preds = %299, %256
  br label %309

309:                                              ; preds = %308, %268
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %10, align 4
  %313 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %314 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp sge i32 %312, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %309
  %319 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %320 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %321, align 8
  store %struct.lpfc_vector_map_info* %322, %struct.lpfc_vector_map_info** %15, align 8
  store i32 0, i32* %10, align 4
  br label %326

323:                                              ; preds = %309
  %324 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %325 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %324, i32 1
  store %struct.lpfc_vector_map_info* %325, %struct.lpfc_vector_map_info** %15, align 8
  br label %326

326:                                              ; preds = %323, %318
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %7, align 4
  br label %249

330:                                              ; preds = %249
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %220

334:                                              ; preds = %220
  %335 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %336 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %340 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %338, %342
  br i1 %343, label %344, label %382

344:                                              ; preds = %334
  %345 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %346 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 2
  %348 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %347, align 8
  store %struct.lpfc_vector_map_info* %348, %struct.lpfc_vector_map_info** %15, align 8
  store i32 0, i32* %7, align 4
  br label %349

349:                                              ; preds = %378, %344
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %352 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %350, %354
  br i1 %355, label %356, label %381

356:                                              ; preds = %349
  %357 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %358 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %375

362:                                              ; preds = %356
  %363 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %364 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %363, i32 0, i32 2
  store i32 0, i32* %364, align 8
  %365 = load i32, i32* %13, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %13, align 4
  %367 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %368 = load i32, i32* @KERN_INFO, align 4
  %369 = load i32, i32* @LOG_INIT, align 4
  %370 = load i32, i32* %7, align 4
  %371 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %372 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %367, i32 %368, i32 %369, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %370, i32 %373)
  br label %375

375:                                              ; preds = %362, %356
  %376 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %15, align 8
  %377 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %376, i32 1
  store %struct.lpfc_vector_map_info* %377, %struct.lpfc_vector_map_info** %15, align 8
  br label %378

378:                                              ; preds = %375
  %379 = load i32, i32* %7, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %7, align 4
  br label %349

381:                                              ; preds = %349
  br label %382

382:                                              ; preds = %381, %334
  %383 = load i32, i32* %13, align 4
  %384 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %385 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %383, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %382
  %390 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %391 = load i32, i32* @KERN_ERR, align 4
  %392 = load i32, i32* @LOG_INIT, align 4
  %393 = load i32, i32* %13, align 4
  %394 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %395 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %390, i32 %391, i32 %392, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %393, i32 %397, i32 %398)
  br label %400

400:                                              ; preds = %389, %382
  %401 = load i32, i32* @LPFC_FCP_SCHED_BY_CPU, align 4
  %402 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %403 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %402, i32 0, i32 2
  store i32 %401, i32* %403, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %404

404:                                              ; preds = %400, %126, %29
  %405 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %405)
  %406 = load i32, i32* %3, align 4
  ret i32 %406
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.lpfc_vector_map_info*, i32, i32) #2

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @lpfc_find_next_cpu(%struct.lpfc_hba*, i32) #2

declare dso_local i32 @cpumask_clear(%struct.cpumask*) #2

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #2

declare dso_local i32 @irq_set_affinity_hint(i32, %struct.cpumask*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
