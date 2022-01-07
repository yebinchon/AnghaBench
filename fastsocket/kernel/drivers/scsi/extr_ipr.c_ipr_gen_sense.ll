; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_gen_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_gen_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i32 }
%struct.TYPE_9__ = type { %struct.ipr_ioasa }
%struct.ipr_ioasa = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@IPR_FIRST_DRIVER_IOASC = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@IPR_IOASC_MED_DO_NOT_REALLOC = common dso_local global i64 0, align 8
@IPR_FIELD_POINTER_VALID = common dso_local global i32 0, align 4
@IPR_FIELD_POINTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_gen_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_gen_sense(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ipr_resource_entry*, align 8
  %6 = alloca %struct.ipr_ioasa*, align 8
  %7 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %18, align 8
  store %struct.ipr_resource_entry* %19, %struct.ipr_resource_entry** %5, align 8
  %20 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %21 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.ipr_ioasa* %22, %struct.ipr_ioasa** %6, align 8
  %23 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %24 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @be32_to_cpu(i64 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @IPR_FIRST_DRIVER_IOASC, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %256

36:                                               ; preds = %1
  %37 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %38 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %39 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %43 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %139

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @IPR_IOASC_MED_DO_NOT_REALLOC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %139

49:                                               ; preds = %45
  %50 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %51 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 114, i32* %58, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @IPR_IOASC_SENSE_KEY(i64 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @IPR_IOASC_SENSE_CODE(i64 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @IPR_IOASC_SENSE_QUAL(i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 12, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  store i32 10, i32* %76, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 10
  store i32 128, i32* %78, align 4
  %79 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %80 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @be32_to_cpu(i64 %83)
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = and i64 %86, 4278190080
  %88 = ashr i64 %87, 24
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 12
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %3, align 8
  %93 = and i64 %92, 16711680
  %94 = ashr i64 %93, 16
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 13
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %3, align 8
  %99 = and i64 %98, 65280
  %100 = ashr i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 14
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %3, align 8
  %105 = and i64 %104, 255
  %106 = trunc i64 %105 to i32
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 15
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %110 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @be32_to_cpu(i64 %113)
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %3, align 8
  %116 = load i64, i64* %3, align 8
  %117 = and i64 %116, 4278190080
  %118 = ashr i64 %117, 24
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 16
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* %3, align 8
  %123 = and i64 %122, 16711680
  %124 = ashr i64 %123, 16
  %125 = trunc i64 %124 to i32
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 17
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %3, align 8
  %129 = and i64 %128, 65280
  %130 = ashr i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 18
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %3, align 8
  %135 = and i64 %134, 255
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 19
  store i32 %136, i32* %138, align 4
  br label %256

139:                                              ; preds = %49, %45, %36
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 112, i32* %141, align 4
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @IPR_IOASC_SENSE_KEY(i64 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @IPR_IOASC_SENSE_CODE(i64 %146)
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 12
  store i32 %147, i32* %149, align 4
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @IPR_IOASC_SENSE_QUAL(i64 %150)
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 13
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @IPR_IOASC_SENSE_KEY(i64 %154)
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %200

157:                                              ; preds = %139
  %158 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %159 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @be32_to_cpu(i64 %161)
  %163 = load i32, i32* @IPR_FIELD_POINTER_VALID, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %157
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 7
  store i32 10, i32* %168, align 4
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @IPR_IOASC_SENSE_CODE(i64 %169)
  %171 = icmp eq i32 %170, 36
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 15
  store i32 192, i32* %174, align 4
  br label %178

175:                                              ; preds = %166
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 15
  store i32 128, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @IPR_FIELD_POINTER_MASK, align 4
  %180 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %181 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @be32_to_cpu(i64 %183)
  %185 = and i32 %179, %184
  %186 = ashr i32 %185, 8
  %187 = and i32 %186, 255
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 16
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @IPR_FIELD_POINTER_MASK, align 4
  %191 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %192 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @be32_to_cpu(i64 %194)
  %196 = and i32 %190, %195
  %197 = and i32 %196, 255
  %198 = load i32*, i32** %4, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 17
  store i32 %197, i32* %199, align 4
  br label %255

200:                                              ; preds = %157, %139
  %201 = load i64, i64* %7, align 8
  %202 = load i64, i64* @IPR_IOASC_MED_DO_NOT_REALLOC, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %252

204:                                              ; preds = %200
  %205 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %206 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %210 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @be32_to_cpu(i64 %213)
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %3, align 8
  br label %224

216:                                              ; preds = %204
  %217 = load %struct.ipr_ioasa*, %struct.ipr_ioasa** %6, align 8
  %218 = getelementptr inbounds %struct.ipr_ioasa, %struct.ipr_ioasa* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @be32_to_cpu(i64 %221)
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %3, align 8
  br label %224

224:                                              ; preds = %216, %208
  %225 = load i32*, i32** %4, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, 128
  store i32 %228, i32* %226, align 4
  %229 = load i64, i64* %3, align 8
  %230 = and i64 %229, 4278190080
  %231 = ashr i64 %230, 24
  %232 = trunc i64 %231 to i32
  %233 = load i32*, i32** %4, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  store i32 %232, i32* %234, align 4
  %235 = load i64, i64* %3, align 8
  %236 = and i64 %235, 16711680
  %237 = ashr i64 %236, 16
  %238 = trunc i64 %237 to i32
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  store i32 %238, i32* %240, align 4
  %241 = load i64, i64* %3, align 8
  %242 = and i64 %241, 65280
  %243 = ashr i64 %242, 8
  %244 = trunc i64 %243 to i32
  %245 = load i32*, i32** %4, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 5
  store i32 %244, i32* %246, align 4
  %247 = load i64, i64* %3, align 8
  %248 = and i64 %247, 255
  %249 = trunc i64 %248 to i32
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 6
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %224, %200
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 7
  store i32 6, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %178
  br label %256

256:                                              ; preds = %35, %255, %56
  ret void
}

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ipr_is_vset_device(%struct.ipr_resource_entry*) #1

declare dso_local i32 @IPR_IOASC_SENSE_KEY(i64) #1

declare dso_local i32 @IPR_IOASC_SENSE_CODE(i64) #1

declare dso_local i32 @IPR_IOASC_SENSE_QUAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
