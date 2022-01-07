; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_optrom_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_optrom_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_15__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64, i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"start %d > optrom_size %d.\0A\00", align 1
@QLA_SWAITING = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"optrom_state %d.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"is_update=%d.\0A\00", align 1
@OPTROM_SIZE_2300 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid start region 0x%x/0x%x.\0A\00", align 1
@QLA_SWRITING = common dso_local global i64 0, align 8
@QLA_SREADING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Read: Unable to allocate memory for optrom retrieval (%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*, %struct.TYPE_15__*, i64)* @qla2x00_optrom_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_optrom_setup(%struct.fc_bsg_job* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_bsg_job*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_hw_data*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %10, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_channel_offline(i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %229

23:                                               ; preds = %3
  %24 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %25 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load i32, i32* @ql_log_warn, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %39, %struct.TYPE_15__* %40, i32 28757, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %229

49:                                               ; preds = %23
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QLA_SWAITING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @ql_log_info, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %56, %struct.TYPE_15__* %57, i32 28758, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %229

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ql_dbg_user, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ql_dbg(i32 %68, %struct.TYPE_15__* %69, i32 28759, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %166

74:                                               ; preds = %64
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @OPTROM_SIZE_2300, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* %9, align 4
  br label %119

85:                                               ; preds = %81, %74
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 4
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 4
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %85
  store i32 1, i32* %9, align 4
  br label %118

100:                                              ; preds = %92
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %102 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %106 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %110 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %114 = call i64 @IS_QLA2031(%struct.qla_hw_data* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %108, %104, %100
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %112
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* @ql_log_warn, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %128 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %123, %struct.TYPE_15__* %124, i32 28760, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %229

134:                                              ; preds = %119
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %138 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %143 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = icmp sgt i64 %141, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %149 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  br label %159

154:                                              ; preds = %134
  %155 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %156 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  br label %159

159:                                              ; preds = %154, %147
  %160 = phi i64 [ %153, %147 ], [ %158, %154 ]
  %161 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %162 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %161, i32 0, i32 5
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* @QLA_SWRITING, align 8
  %164 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %165 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %198

166:                                              ; preds = %64
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %170 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %168, %172
  %174 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %175 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = icmp sgt i64 %173, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %166
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  br label %191

186:                                              ; preds = %166
  %187 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %188 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  br label %191

191:                                              ; preds = %186, %179
  %192 = phi i64 [ %185, %179 ], [ %190, %186 ]
  %193 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %194 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %193, i32 0, i32 5
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* @QLA_SREADING, align 8
  %196 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %197 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  br label %198

198:                                              ; preds = %191, %159
  %199 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %200 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %199, i32 0, i32 5
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @vmalloc(i64 %201)
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %204 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %206 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* @ql_log_warn, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %213 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %210, %struct.TYPE_15__* %211, i32 28761, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %214)
  %216 = load i64, i64* @QLA_SWAITING, align 8
  %217 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %218 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %229

221:                                              ; preds = %198
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %223 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @memset(i32 %224, i32 0, i64 %227)
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %221, %209, %122, %55, %38, %20
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, i64, ...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*, i64) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
