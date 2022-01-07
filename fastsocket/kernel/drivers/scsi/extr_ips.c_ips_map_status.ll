; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_map_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_map_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_16__, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ips_map_status\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"(%s%d) Physical device error (%d %d %d): %x %x, Sense Key: %x, ASC: %x, ASCQ: %x\00", align 1
@ips_name = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@IPS_GSC_STATUS_MASK = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@IPS_CMD_EXTENDED_DCDB = common dso_local global i32 0, align 4
@IPS_CMD_EXTENDED_DCDB_SG = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @ips_map_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_map_status(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %93

17:                                               ; preds = %3
  %18 = load i32, i32* @ips_name, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 138
  br i1 %52, label %53, label %61

53:                                               ; preds = %17
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  br label %62

61:                                               ; preds = %17
  br label %62

62:                                               ; preds = %61, %53
  %63 = phi i32 [ %60, %53 ], [ 0, %61 ]
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 138
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %68
  %77 = phi i32 [ %74, %68 ], [ 0, %75 ]
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 138
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %82
  %91 = phi i32 [ %88, %82 ], [ 0, %89 ]
  %92 = call i32 @DEBUG_VAR(i32 2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %28, i32 %35, i32 %42, i32 %45, i64 %48, i32 %63, i32 %77, i32 %91)
  br label %93

93:                                               ; preds = %90, %3
  %94 = load i32, i32* @DID_ERROR, align 4
  store i32 %94, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IPS_GSC_STATUS_MASK, align 4
  %99 = and i32 %97, %98
  switch i32 %99, label %245 [
    i32 139, label %100
    i32 131, label %102
    i32 132, label %102
    i32 130, label %102
    i32 129, label %102
    i32 140, label %102
    i32 128, label %103
  ]

100:                                              ; preds = %93
  %101 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %101, i32* %7, align 4
  br label %245

102:                                              ; preds = %93, %93, %93, %93, %93
  br label %245

103:                                              ; preds = %93
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %242 [
    i64 133, label %107
    i64 135, label %115
    i64 134, label %182
    i64 136, label %190
    i64 137, label %190
    i64 138, label %192
  ]

107:                                              ; preds = %103
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %107
  br label %244

115:                                              ; preds = %103
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IPS_CMD_EXTENDED_DCDB, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IPS_CMD_EXTENDED_DCDB_SG, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %123, %115
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = bitcast %struct.TYPE_16__* %133 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %134, %struct.TYPE_20__** %10, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %9, align 4
  br label %143

138:                                              ; preds = %123
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138, %131
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %143
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %148
  %155 = load i32, i32* @DID_OK, align 4
  store i32 %155, i32* %7, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @INQUIRY, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %154
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = call i32 @ips_scmd_buf_read(%struct.TYPE_21__* %168, %struct.TYPE_19__* %11, i32 4)
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 31
  %173 = load i32, i32* @TYPE_DISK, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %176, i32* %7, align 4
  br label %244

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177, %154
  br label %181

179:                                              ; preds = %148, %143
  %180 = load i32, i32* @DID_ERROR, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %178
  br label %244

182:                                              ; preds = %103
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @DID_OK, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %182
  br label %244

190:                                              ; preds = %103, %103
  %191 = load i32, i32* @DID_RESET, align 4
  store i32 %191, i32* %7, align 4
  br label %244

192:                                              ; preds = %103
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %240

197:                                              ; preds = %192
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @IPS_CMD_EXTENDED_DCDB, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IPS_CMD_EXTENDED_DCDB_SG, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %205, %197
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 3
  %216 = bitcast %struct.TYPE_16__* %215 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %216, %struct.TYPE_20__** %10, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %226 = call i32 @memcpy(i32 %221, i32* %224, i32 %225)
  br label %239

227:                                              ; preds = %205
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %238 = call i32 @memcpy(i32 %232, i32* %236, i32 %237)
  br label %239

239:                                              ; preds = %227, %213
  store i32 2, i32* %8, align 4
  br label %240

240:                                              ; preds = %239, %192
  %241 = load i32, i32* @DID_OK, align 4
  store i32 %241, i32* %7, align 4
  br label %244

242:                                              ; preds = %103
  %243 = load i32, i32* @DID_ERROR, align 4
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %242, %240, %190, %189, %181, %175, %114
  br label %245

245:                                              ; preds = %244, %93, %102, %100
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %7, align 4
  %248 = shl i32 %247, 16
  %249 = or i32 %246, %248
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 8
  ret i32 1
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ips_scmd_buf_read(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
