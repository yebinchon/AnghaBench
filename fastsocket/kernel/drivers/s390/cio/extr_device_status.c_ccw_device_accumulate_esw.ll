; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.irb }
%struct.TYPE_12__ = type { i32 }
%struct.irb = type { %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32, %struct.sublog }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i64, i32, i64, i32 }
%struct.sublog = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.irb*)* @ccw_device_accumulate_esw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_accumulate_esw(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca %struct.sublog*, align 8
  %7 = alloca %struct.sublog*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %8 = load %struct.irb*, %struct.irb** %4, align 8
  %9 = call i32 @ccw_device_accumulate_esw_valid(%struct.irb* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %259

12:                                               ; preds = %2
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store %struct.irb* %16, %struct.irb** %5, align 8
  %17 = load %struct.irb*, %struct.irb** %4, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.irb*, %struct.irb** %5, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.irb*, %struct.irb** %4, align 8
  %27 = getelementptr inbounds %struct.irb, %struct.irb* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %192

32:                                               ; preds = %12
  %33 = load %struct.irb*, %struct.irb** %5, align 8
  %34 = getelementptr inbounds %struct.irb, %struct.irb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  store %struct.sublog* %36, %struct.sublog** %6, align 8
  %37 = load %struct.irb*, %struct.irb** %4, align 8
  %38 = getelementptr inbounds %struct.irb, %struct.irb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  store %struct.sublog* %40, %struct.sublog** %7, align 8
  %41 = load %struct.sublog*, %struct.sublog** %7, align 8
  %42 = getelementptr inbounds %struct.sublog, %struct.sublog* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sublog*, %struct.sublog** %6, align 8
  %45 = getelementptr inbounds %struct.sublog, %struct.sublog* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.irb*, %struct.irb** %4, align 8
  %47 = getelementptr inbounds %struct.irb, %struct.irb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %52 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %32
  %59 = load %struct.sublog*, %struct.sublog** %7, align 8
  %60 = getelementptr inbounds %struct.sublog, %struct.sublog* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sublog*, %struct.sublog** %6, align 8
  %63 = getelementptr inbounds %struct.sublog, %struct.sublog* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sublog*, %struct.sublog** %7, align 8
  %65 = getelementptr inbounds %struct.sublog, %struct.sublog* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sublog*, %struct.sublog** %6, align 8
  %68 = getelementptr inbounds %struct.sublog, %struct.sublog* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sublog*, %struct.sublog** %7, align 8
  %70 = getelementptr inbounds %struct.sublog, %struct.sublog* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sublog*, %struct.sublog** %6, align 8
  %73 = getelementptr inbounds %struct.sublog, %struct.sublog* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sublog*, %struct.sublog** %7, align 8
  %75 = getelementptr inbounds %struct.sublog, %struct.sublog* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sublog*, %struct.sublog** %6, align 8
  %78 = getelementptr inbounds %struct.sublog, %struct.sublog* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sublog*, %struct.sublog** %7, align 8
  %80 = getelementptr inbounds %struct.sublog, %struct.sublog* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sublog*, %struct.sublog** %6, align 8
  %83 = getelementptr inbounds %struct.sublog, %struct.sublog* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %58, %32
  %85 = load %struct.sublog*, %struct.sublog** %7, align 8
  %86 = getelementptr inbounds %struct.sublog, %struct.sublog* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sublog*, %struct.sublog** %6, align 8
  %89 = getelementptr inbounds %struct.sublog, %struct.sublog* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sublog*, %struct.sublog** %7, align 8
  %91 = getelementptr inbounds %struct.sublog, %struct.sublog* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sublog*, %struct.sublog** %6, align 8
  %94 = getelementptr inbounds %struct.sublog, %struct.sublog* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sublog*, %struct.sublog** %7, align 8
  %96 = getelementptr inbounds %struct.sublog, %struct.sublog* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sublog*, %struct.sublog** %6, align 8
  %99 = getelementptr inbounds %struct.sublog, %struct.sublog* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.irb*, %struct.irb** %4, align 8
  %101 = getelementptr inbounds %struct.irb, %struct.irb* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %84
  %109 = load %struct.irb*, %struct.irb** %4, align 8
  %110 = getelementptr inbounds %struct.irb, %struct.irb* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.irb*, %struct.irb** %5, align 8
  %116 = getelementptr inbounds %struct.irb, %struct.irb* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 7
  store i32 %114, i32* %119, align 8
  br label %120

120:                                              ; preds = %108, %84
  %121 = load %struct.irb*, %struct.irb** %4, align 8
  %122 = getelementptr inbounds %struct.irb, %struct.irb* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.irb*, %struct.irb** %5, align 8
  %128 = getelementptr inbounds %struct.irb, %struct.irb* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  store i64 %126, i64* %131, align 8
  %132 = load %struct.irb*, %struct.irb** %5, align 8
  %133 = getelementptr inbounds %struct.irb, %struct.irb* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %120
  %140 = load %struct.irb*, %struct.irb** %5, align 8
  %141 = getelementptr inbounds %struct.irb, %struct.irb* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.irb*, %struct.irb** %4, align 8
  %146 = getelementptr inbounds %struct.irb, %struct.irb* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i32 %144, i32 %149, i32 4)
  %151 = load %struct.irb*, %struct.irb** %4, align 8
  %152 = getelementptr inbounds %struct.irb, %struct.irb* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.irb*, %struct.irb** %5, align 8
  %158 = getelementptr inbounds %struct.irb, %struct.irb* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  store i32 %156, i32* %161, align 8
  br label %162

162:                                              ; preds = %139, %120
  %163 = load %struct.irb*, %struct.irb** %4, align 8
  %164 = getelementptr inbounds %struct.irb, %struct.irb* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.irb*, %struct.irb** %5, align 8
  %170 = getelementptr inbounds %struct.irb, %struct.irb* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  store i64 %168, i64* %173, align 8
  %174 = load %struct.irb*, %struct.irb** %4, align 8
  %175 = getelementptr inbounds %struct.irb, %struct.irb* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %162
  %182 = load %struct.irb*, %struct.irb** %4, align 8
  %183 = getelementptr inbounds %struct.irb, %struct.irb* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.irb*, %struct.irb** %5, align 8
  %188 = getelementptr inbounds %struct.irb, %struct.irb* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 8
  br label %191

191:                                              ; preds = %181, %162
  br label %192

192:                                              ; preds = %191, %12
  %193 = load %struct.irb*, %struct.irb** %4, align 8
  %194 = getelementptr inbounds %struct.irb, %struct.irb* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.irb*, %struct.irb** %5, align 8
  %200 = getelementptr inbounds %struct.irb, %struct.irb* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  store i32 %198, i32* %203, align 8
  %204 = load %struct.irb*, %struct.irb** %4, align 8
  %205 = getelementptr inbounds %struct.irb, %struct.irb* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.irb*, %struct.irb** %5, align 8
  %211 = getelementptr inbounds %struct.irb, %struct.irb* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i64 %209, i64* %214, align 8
  %215 = load %struct.irb*, %struct.irb** %4, align 8
  %216 = getelementptr inbounds %struct.irb, %struct.irb* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %192
  %223 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %224 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %223, i32 0, i32 0
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %222, %192
  %229 = load %struct.irb*, %struct.irb** %4, align 8
  %230 = getelementptr inbounds %struct.irb, %struct.irb* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.irb*, %struct.irb** %5, align 8
  %236 = getelementptr inbounds %struct.irb, %struct.irb* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  store i64 %234, i64* %239, align 8
  %240 = load %struct.irb*, %struct.irb** %4, align 8
  %241 = getelementptr inbounds %struct.irb, %struct.irb* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %228
  %248 = load %struct.irb*, %struct.irb** %4, align 8
  %249 = getelementptr inbounds %struct.irb, %struct.irb* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.irb*, %struct.irb** %5, align 8
  %255 = getelementptr inbounds %struct.irb, %struct.irb* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 8
  br label %259

259:                                              ; preds = %11, %247, %228
  ret void
}

declare dso_local i32 @ccw_device_accumulate_esw_valid(%struct.irb*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
