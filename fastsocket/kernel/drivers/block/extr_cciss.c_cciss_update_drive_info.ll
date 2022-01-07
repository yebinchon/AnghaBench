; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_update_drive_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_update_drive_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_22__*, i32, %struct.TYPE_23__**, %struct.gendisk**, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.gendisk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CCISS_READ_16 = common dso_local global i64 0, align 8
@CCISS_WRITE_16 = common dso_local global i32 0, align 4
@CCISS_READ_10 = common dso_local global i64 0, align 8
@CCISS_WRITE_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"disk %d has changed.\0A\00", align 1
@VENDOR_LEN = common dso_local global i32 0, align 4
@MODEL_LEN = common dso_local global i32 0, align 4
@REV_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not update disk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, i32, i32)* @cciss_update_drive_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cciss_update_drive_info(%struct.TYPE_24__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gendisk*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_23__* @kmalloc(i32 80, i32 %16)
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_23__* @kzalloc(i32 80, i32 %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %15, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %21 = icmp eq %struct.TYPE_23__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %24 = icmp eq %struct.TYPE_23__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %4
  br label %460

26:                                               ; preds = %22
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CCISS_READ_16, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cciss_read_capacity_16(%struct.TYPE_24__* %33, i32 %34, i32* %12, i32* %11)
  br label %61

36:                                               ; preds = %26
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cciss_read_capacity(%struct.TYPE_24__* %37, i32 %38, i32* %12, i32* %11)
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4294967295
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @cciss_read_capacity_16(%struct.TYPE_24__* %44, i32 %45, i32* %12, i32* %11)
  %47 = load i64, i64* @CCISS_READ_16, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @CCISS_WRITE_16, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  br label %60

53:                                               ; preds = %36
  %54 = load i64, i64* @CCISS_READ_10, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @CCISS_WRITE_10, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %43
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %68 = call i32 @cciss_geometry_inquiry(%struct.TYPE_24__* %62, i32 %63, i32 %64, i32 %65, %struct.TYPE_23__* %66, %struct.TYPE_23__* %67)
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cciss_get_device_descr(%struct.TYPE_24__* %76, i32 %77, i32 %80, i32 %83, i32 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @cciss_get_serial_no(%struct.TYPE_24__* %88, i32 %89, i32 %92, i32 4)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %99, i64 %101
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i32 %96, i32 %105, i32 4)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %109, i64 %111
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %203

117:                                              ; preds = %61
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %123, i64 %125
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @memcmp(i32 %120, i32 %129, i32 16)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %203

132:                                              ; preds = %117
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %138, i64 %140
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %135, %144
  br i1 %145, label %146, label %203

146:                                              ; preds = %132
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %152, i64 %154
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %149, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %146
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %166, i64 %168
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %163, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %160
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %180, i64 %182
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %177, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %174
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %194, i64 %196
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %191, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %188
  br label %455

203:                                              ; preds = %188, %174, %160, %146, %132, %117, %61
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %206, i64 %208
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, -1
  br i1 %213, label %214, label %244

214:                                              ; preds = %203
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @dev_warn(i32* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 5
  %226 = load i64, i64* %13, align 8
  %227 = call i32 @spin_lock_irqsave(i32* %225, i64 %226)
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %230, i64 %232
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 6
  store i32 1, i32* %235, align 8
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 5
  %238 = load i64, i64* %13, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @deregister_disk(%struct.TYPE_24__* %240, i32 %241, i32 0, i32 %242)
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %217, %214, %203
  %245 = load i32, i32* %14, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %455

248:                                              ; preds = %244
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %251, i64 %253
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = icmp eq %struct.TYPE_23__* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %248
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 11
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %263, i64 %265
  store %struct.TYPE_23__* %260, %struct.TYPE_23__** %266, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  br label %392

267:                                              ; preds = %248
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %273, i64 %275
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  store i32 %270, i32* %278, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %284, i64 %286
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 1
  store i32 %281, i32* %289, align 4
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %295, i64 %297
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 3
  store i64 %292, i64* %300, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %306, i64 %308
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 4
  store i64 %303, i64* %311, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %317, i64 %319
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 5
  store i64 %314, i64* %322, align 8
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 3
  %328 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %327, align 8
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %328, i64 %330
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 2
  store i32 %325, i32* %333, align 8
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %336, i64 %338
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @memcpy(i32 %342, i32 %345, i32 16)
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %349, i64 %351
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 9
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @VENDOR_LEN, align 4
  %360 = add nsw i32 %359, 1
  %361 = call i32 @memcpy(i32 %355, i32 %358, i32 %360)
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 3
  %364 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %363, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %364, i64 %366
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 8
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @MODEL_LEN, align 4
  %375 = add nsw i32 %374, 1
  %376 = call i32 @memcpy(i32 %370, i32 %373, i32 %375)
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %379, i64 %381
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @REV_LEN, align 4
  %390 = add nsw i32 %389, 1
  %391 = call i32 @memcpy(i32 %385, i32 %388, i32 %390)
  br label %392

392:                                              ; preds = %267, %257
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 8
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 4
  %399 = load %struct.gendisk**, %struct.gendisk*** %398, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %399, i64 %401
  %403 = load %struct.gendisk*, %struct.gendisk** %402, align 8
  store %struct.gendisk* %403, %struct.gendisk** %9, align 8
  %404 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 3
  %407 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %406, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %407, i64 %409
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @set_capacity(%struct.gendisk* %404, i32 %413)
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %416 = load i32, i32* %6, align 4
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %418, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %419, i64 %421
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %422, align 8
  %424 = call i32 @cciss_sysfs_stat_inquiry(%struct.TYPE_24__* %415, i32 %416, %struct.TYPE_23__* %423)
  %425 = load i32, i32* %6, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %392
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %454

430:                                              ; preds = %427, %392
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %432 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  %433 = load i32, i32* %6, align 4
  %434 = call i64 @cciss_add_disk(%struct.TYPE_24__* %431, %struct.gendisk* %432, i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %453

436:                                              ; preds = %430
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @cciss_free_gendisk(%struct.TYPE_24__* %437, i32 %438)
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %441 = load i32, i32* %6, align 4
  %442 = call i32 @cciss_free_drive_info(%struct.TYPE_24__* %440, i32 %441)
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_22__*, %struct.TYPE_22__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %445, i32 0, i32 0
  %447 = load i32, i32* %6, align 4
  %448 = call i32 @dev_warn(i32* %446, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %447)
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = add nsw i32 %451, -1
  store i32 %452, i32* %450, align 8
  br label %453

453:                                              ; preds = %436, %430
  br label %454

454:                                              ; preds = %453, %427
  br label %455

455:                                              ; preds = %460, %454, %247, %202
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %457 = call i32 @kfree(%struct.TYPE_23__* %456)
  %458 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %459 = call i32 @kfree(%struct.TYPE_23__* %458)
  ret void

460:                                              ; preds = %25
  %461 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 1
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 0
  %465 = call i32 @dev_err(i32* %464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %455
}

declare dso_local %struct.TYPE_23__* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_23__* @kzalloc(i32, i32) #1

declare dso_local i32 @cciss_read_capacity_16(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @cciss_read_capacity(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32 @cciss_geometry_inquiry(%struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @cciss_get_device_descr(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @cciss_get_serial_no(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @deregister_disk(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @cciss_sysfs_stat_inquiry(%struct.TYPE_24__*, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @cciss_add_disk(%struct.TYPE_24__*, %struct.gendisk*, i32) #1

declare dso_local i32 @cciss_free_gendisk(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @cciss_free_drive_info(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_23__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
