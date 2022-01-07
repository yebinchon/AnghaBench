; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_stat_data_ctrl_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_stat_data_ctrl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i64, i64 }

@lpfc_stat_data_ctrl_store.bucket_data = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"setbucket\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@LPFC_LINEAR_BUCKET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"power2\00", align 1
@LPFC_POWER2_BUCKET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"destroybucket\00", align 1
@LPFC_NO_BUCKET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@LPFC_MAX_DATA_CTRL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_stat_data_ctrl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_stat_data_ctrl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.lpfc_vport**, align 8
  %17 = alloca %struct.Scsi_Host*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %24)
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %10, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %29, %struct.lpfc_vport** %11, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 2
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %31, align 8
  store %struct.lpfc_hba* %32, %struct.lpfc_hba** %12, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %213, label %37

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp sgt i32 %39, 1023
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %397

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lpfc_stat_data_ctrl_store.bucket_data, i64 0, i64 0), i8* %45)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lpfc_stat_data_ctrl_store.bucket_data, i64 0, i64 0), i8** %14, align 8
  %47 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %397

53:                                               ; preds = %44
  %54 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** %18, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %397

60:                                               ; preds = %53
  %61 = load i8*, i8** %18, align 8
  %62 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @LPFC_LINEAR_BUCKET, align 8
  store i64 %66, i64* %23, align 8
  br label %78

67:                                               ; preds = %60
  %68 = load i8*, i8** %18, align 8
  %69 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @LPFC_POWER2_BUCKET, align 8
  store i64 %73, i64* %23, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %397

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %65
  %79 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %79, i8** %19, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %397

85:                                               ; preds = %78
  %86 = load i8*, i8** %19, align 8
  %87 = call i64 @simple_strtoul(i8* %86, i32* null, i32 0)
  store i64 %87, i64* %21, align 8
  %88 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %88, i8** %20, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %397

94:                                               ; preds = %85
  %95 = load i8*, i8** %20, align 8
  %96 = call i64 @simple_strtoul(i8* %95, i32* null, i32 0)
  store i64 %96, i64* %22, align 8
  %97 = load i64, i64* %22, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %397

102:                                              ; preds = %94
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %104 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %103)
  store %struct.lpfc_vport** %104, %struct.lpfc_vport*** %16, align 8
  %105 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %106 = icmp eq %struct.lpfc_vport** %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %397

110:                                              ; preds = %102
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %158, %110
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ule i64 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %118, i64 %119
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %120, align 8
  %122 = icmp ne %struct.lpfc_vport* %121, null
  br label %123

123:                                              ; preds = %117, %111
  %124 = phi i1 [ false, %111 ], [ %122, %117 ]
  br i1 %124, label %125, label %161

125:                                              ; preds = %123
  %126 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %126, i64 %127
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %128, align 8
  %130 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %129)
  store %struct.Scsi_Host* %130, %struct.Scsi_Host** %17, align 8
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @spin_lock_irq(i32 %133)
  %135 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %135, i64 %136
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %137, align 8
  %139 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %140, i64 %141
  %143 = load %struct.lpfc_vport*, %struct.lpfc_vport** %142, align 8
  %144 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %125
  %148 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %149 = load i64, i64* %13, align 8
  %150 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %148, i64 %149
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %150, align 8
  %152 = call i32 @lpfc_vport_reset_stat_data(%struct.lpfc_vport* %151)
  br label %153

153:                                              ; preds = %147, %125
  %154 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  %155 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @spin_unlock_irq(i32 %156)
  br label %158

158:                                              ; preds = %153
  %159 = load i64, i64* %13, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %111

161:                                              ; preds = %123
  %162 = load i64, i64* %23, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  store i64 0, i64* %13, align 8
  br label %171

171:                                              ; preds = %204, %161
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ule i64 %172, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %178, i64 %179
  %181 = load %struct.lpfc_vport*, %struct.lpfc_vport** %180, align 8
  %182 = icmp ne %struct.lpfc_vport* %181, null
  br label %183

183:                                              ; preds = %177, %171
  %184 = phi i1 [ false, %171 ], [ %182, %177 ]
  br i1 %184, label %185, label %207

185:                                              ; preds = %183
  %186 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %186, i64 %187
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %188, align 8
  %190 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %189)
  store %struct.Scsi_Host* %190, %struct.Scsi_Host** %17, align 8
  %191 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  %192 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @spin_lock_irq(i32 %193)
  %195 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %196 = load i64, i64* %13, align 8
  %197 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %195, i64 %196
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %197, align 8
  %199 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  %201 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @spin_unlock_irq(i32 %202)
  br label %204

204:                                              ; preds = %185
  %205 = load i64, i64* %13, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %13, align 8
  br label %171

207:                                              ; preds = %183
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %209 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %210 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %208, %struct.lpfc_vport** %209)
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 @strlen(i8* %211)
  store i32 %212, i32* %5, align 4
  br label %397

213:                                              ; preds = %4
  %214 = load i8*, i8** %8, align 8
  %215 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %216 = call i32 @strncmp(i8* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %285, label %218

218:                                              ; preds = %213
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %220 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %219)
  store %struct.lpfc_vport** %220, %struct.lpfc_vport*** %16, align 8
  %221 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %222 = icmp eq %struct.lpfc_vport** %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  br label %397

226:                                              ; preds = %218
  store i64 0, i64* %13, align 8
  br label %227

227:                                              ; preds = %269, %226
  %228 = load i64, i64* %13, align 8
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ule i64 %228, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %235 = load i64, i64* %13, align 8
  %236 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %234, i64 %235
  %237 = load %struct.lpfc_vport*, %struct.lpfc_vport** %236, align 8
  %238 = icmp ne %struct.lpfc_vport* %237, null
  br label %239

239:                                              ; preds = %233, %227
  %240 = phi i1 [ false, %227 ], [ %238, %233 ]
  br i1 %240, label %241, label %272

241:                                              ; preds = %239
  %242 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %243 = load i64, i64* %13, align 8
  %244 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %242, i64 %243
  %245 = load %struct.lpfc_vport*, %struct.lpfc_vport** %244, align 8
  %246 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %245)
  store %struct.Scsi_Host* %246, %struct.Scsi_Host** %17, align 8
  %247 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %248 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @spin_lock_irq(i32 %249)
  %251 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %252 = load i64, i64* %13, align 8
  %253 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %251, i64 %252
  %254 = load %struct.lpfc_vport*, %struct.lpfc_vport** %253, align 8
  %255 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %257 = call i32 @lpfc_free_bucket(%struct.lpfc_vport* %256)
  %258 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %259 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %258, i32 0, i32 1
  store i32 0, i32* %259, align 4
  %260 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %261 = load i64, i64* %13, align 8
  %262 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %260, i64 %261
  %263 = load %struct.lpfc_vport*, %struct.lpfc_vport** %262, align 8
  %264 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %263, i32 0, i32 0
  store i32 0, i32* %264, align 8
  %265 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %266 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @spin_unlock_irq(i32 %267)
  br label %269

269:                                              ; preds = %241
  %270 = load i64, i64* %13, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %13, align 8
  br label %227

272:                                              ; preds = %239
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %274 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %16, align 8
  %275 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %273, %struct.lpfc_vport** %274)
  %276 = load i64, i64* @LPFC_NO_BUCKET, align 8
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 1
  store i64 %276, i64* %278, align 8
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %282 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %281, i32 0, i32 3
  store i64 0, i64* %282, align 8
  %283 = load i8*, i8** %8, align 8
  %284 = call i32 @strlen(i8* %283)
  store i32 %284, i32* %5, align 4
  br label %397

285:                                              ; preds = %213
  %286 = load i8*, i8** %8, align 8
  %287 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %288 = call i32 @strncmp(i8* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %326, label %290

290:                                              ; preds = %285
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @LPFC_NO_BUCKET, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %5, align 4
  br label %397

299:                                              ; preds = %290
  %300 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %301 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @spin_lock_irq(i32 %302)
  %304 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %305 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %299
  %309 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %310 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @spin_unlock_irq(i32 %311)
  %313 = load i8*, i8** %8, align 8
  %314 = call i32 @strlen(i8* %313)
  store i32 %314, i32* %5, align 4
  br label %397

315:                                              ; preds = %299
  %316 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %317 = call i32 @lpfc_alloc_bucket(%struct.lpfc_vport* %316)
  %318 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %319 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %318, i32 0, i32 1
  store i32 1, i32* %319, align 4
  %320 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %321 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @spin_unlock_irq(i32 %322)
  %324 = load i8*, i8** %8, align 8
  %325 = call i32 @strlen(i8* %324)
  store i32 %325, i32* %5, align 4
  br label %397

326:                                              ; preds = %285
  %327 = load i8*, i8** %8, align 8
  %328 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %329 = call i32 @strncmp(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %358, label %331

331:                                              ; preds = %326
  %332 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %333 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @spin_lock_irq(i32 %334)
  %336 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %337 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %331
  %341 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %342 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @spin_unlock_irq(i32 %343)
  %345 = load i8*, i8** %8, align 8
  %346 = call i32 @strlen(i8* %345)
  store i32 %346, i32* %5, align 4
  br label %397

347:                                              ; preds = %331
  %348 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %349 = call i32 @lpfc_free_bucket(%struct.lpfc_vport* %348)
  %350 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %351 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %350, i32 0, i32 1
  store i32 0, i32* %351, align 4
  %352 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %353 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @spin_unlock_irq(i32 %354)
  %356 = load i8*, i8** %8, align 8
  %357 = call i32 @strlen(i8* %356)
  store i32 %357, i32* %5, align 4
  br label %397

358:                                              ; preds = %326
  %359 = load i8*, i8** %8, align 8
  %360 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %361 = call i32 @strncmp(i8* %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %394, label %363

363:                                              ; preds = %358
  %364 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %365 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @LPFC_NO_BUCKET, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %374, label %369

369:                                              ; preds = %363
  %370 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %371 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %369, %363
  %375 = load i8*, i8** %8, align 8
  %376 = call i32 @strlen(i8* %375)
  store i32 %376, i32* %5, align 4
  br label %397

377:                                              ; preds = %369
  %378 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %379 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @spin_lock_irq(i32 %380)
  %382 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %383 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %382, i32 0, i32 0
  store i32 1, i32* %383, align 8
  %384 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %385 = call i32 @lpfc_vport_reset_stat_data(%struct.lpfc_vport* %384)
  %386 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %387 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %386, i32 0, i32 0
  store i32 0, i32* %387, align 8
  %388 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %389 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @spin_unlock_irq(i32 %390)
  %392 = load i8*, i8** %8, align 8
  %393 = call i32 @strlen(i8* %392)
  store i32 %393, i32* %5, align 4
  br label %397

394:                                              ; preds = %358
  %395 = load i32, i32* @EINVAL, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %5, align 4
  br label %397

397:                                              ; preds = %394, %377, %374, %347, %340, %315, %308, %296, %272, %223, %207, %107, %99, %91, %82, %74, %57, %50, %41
  %398 = load i32, i32* %5, align 4
  ret i32 %398
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @lpfc_vport_reset_stat_data(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @lpfc_free_bucket(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_alloc_bucket(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
