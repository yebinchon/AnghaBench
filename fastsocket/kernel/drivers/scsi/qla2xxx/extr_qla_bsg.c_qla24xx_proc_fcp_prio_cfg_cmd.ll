; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_proc_fcp_prio_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_proc_fcp_prio_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { {}*, %struct.TYPE_24__*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.Scsi_Host* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_25__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_23__, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.qla_fcp_prio_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FCP_PRIO_ATTR_ENABLE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i8* null, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_SIZE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to allocate memory for fcp prio config data (%x).\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla24xx_proc_fcp_prio_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %9 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %10 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %9, i32 0, i32 5
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %3, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = call %struct.TYPE_25__* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.TYPE_25__* %13, %struct.TYPE_25__** %4, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %18 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %26 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %292

31:                                               ; preds = %24, %20, %1
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %32, i32 0, i32 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %44 = icmp ne %struct.TYPE_26__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %292

51:                                               ; preds = %45, %31
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %288 [
    i32 131, label %53
    i32 130, label %89
    i32 129, label %130
    i32 128, label %174
  ]

53:                                               ; preds = %51
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %72 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_25__* %71)
  %73 = load i8*, i8** @DID_OK, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %76 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %75, i32 0, i32 1
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %88

79:                                               ; preds = %53
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @DID_ERROR, align 4
  %83 = shl i32 %82, 16
  %84 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %85 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %84, i32 0, i32 1
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  br label %292

88:                                               ; preds = %59
  br label %291

89:                                               ; preds = %51
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %129, label %95

95:                                               ; preds = %89
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = icmp ne %struct.TYPE_26__* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_25__* %111)
  %113 = load i8*, i8** @DID_OK, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %116 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %115, i32 0, i32 1
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  br label %128

119:                                              ; preds = %95
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @DID_ERROR, align 4
  %123 = shl i32 %122, 16
  %124 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %125 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %124, i32 0, i32 1
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  br label %292

128:                                              ; preds = %100
  br label %129

129:                                              ; preds = %128, %89
  br label %291

130:                                              ; preds = %51
  %131 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %132 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137, %130
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* @DID_ERROR, align 4
  %145 = shl i32 %144, 16
  %146 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %147 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %146, i32 0, i32 1
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 4
  br label %292

150:                                              ; preds = %137
  %151 = load i8*, i8** @DID_OK, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %154 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %153, i32 0, i32 1
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 4
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %158 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %162 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %166 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @sg_copy_from_buffer(i32 %160, i32 %164, %struct.TYPE_26__* %167, i32 %168)
  %170 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %171 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %170, i32 0, i32 1
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  br label %291

174:                                              ; preds = %51
  %175 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %176 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %181, %174
  %186 = load i32, i32* @DID_ERROR, align 4
  %187 = shl i32 %186, 16
  %188 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %189 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %188, i32 0, i32 1
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %6, align 4
  br label %292

194:                                              ; preds = %181
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 1
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %196, align 8
  %198 = icmp ne %struct.TYPE_26__* %197, null
  br i1 %198, label %222, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %201 = call %struct.TYPE_26__* @vmalloc(i32 %200)
  %202 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %203 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %202, i32 0, i32 1
  store %struct.TYPE_26__* %201, %struct.TYPE_26__** %203, align 8
  %204 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %205 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %204, i32 0, i32 1
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %205, align 8
  %207 = icmp ne %struct.TYPE_26__* %206, null
  br i1 %207, label %221, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* @ql_log_warn, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %211 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %212 = call i32 @ql_log(i32 %209, %struct.TYPE_25__* %210, i32 28752, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @DID_ERROR, align 4
  %214 = shl i32 %213, 16
  %215 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %216 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %215, i32 0, i32 1
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %6, align 4
  br label %292

221:                                              ; preds = %199
  br label %222

222:                                              ; preds = %221, %194
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 1
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %224, align 8
  %226 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %227 = call i32 @memset(%struct.TYPE_26__* %225, i32 0, i32 %226)
  %228 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %229 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %233 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %237 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %236, i32 0, i32 1
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %237, align 8
  %239 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %240 = call i32 @sg_copy_to_buffer(i32 %231, i32 %235, %struct.TYPE_26__* %238, i32 %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %242 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %243 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %242, i32 0, i32 1
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  %245 = bitcast %struct.TYPE_26__* %244 to %struct.qla_fcp_prio_cfg*
  %246 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_25__* %241, %struct.qla_fcp_prio_cfg* %245, i32 1)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %263, label %248

248:                                              ; preds = %222
  %249 = load i32, i32* @DID_ERROR, align 4
  %250 = shl i32 %249, 16
  %251 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %252 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %251, i32 0, i32 1
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %6, align 4
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 1
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %258, align 8
  %260 = call i32 @vfree(%struct.TYPE_26__* %259)
  %261 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %262 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %261, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %262, align 8
  br label %292

263:                                              ; preds = %222
  %264 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %265 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  store i32 0, i32* %266, align 8
  %267 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %268 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %267, i32 0, i32 1
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %263
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %277 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  br label %279

279:                                              ; preds = %275, %263
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %281 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_25__* %280)
  %282 = load i8*, i8** @DID_OK, align 8
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %285 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %284, i32 0, i32 1
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  store i32 %283, i32* %287, align 4
  br label %291

288:                                              ; preds = %51
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %288, %279, %150, %129, %88
  br label %292

292:                                              ; preds = %291, %248, %208, %185, %141, %119, %79, %48, %28
  %293 = load i32, i32* %6, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %292
  %296 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %297 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %296, i32 0, i32 0
  %298 = bitcast {}** %297 to i32 (%struct.fc_bsg_job*)**
  %299 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %298, align 8
  %300 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %301 = call i32 %299(%struct.fc_bsg_job* %300)
  br label %302

302:                                              ; preds = %295, %292
  %303 = load i32, i32* %6, align 4
  ret i32 %303
}

declare dso_local %struct.TYPE_25__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_25__*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_26__* @vmalloc(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_25__*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_25__*, %struct.qla_fcp_prio_cfg*, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
