; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_locate_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_locate_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.LO_eckd_data = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Locate: trk %d, rec %d, no_rec %d, cmd %d, reclen %d\00", align 1
@DASD_ECKD_CCW_LOCATE_RECORD = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown locate record opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, %struct.LO_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32)* @locate_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_record(%struct.ccw1* %0, %struct.LO_eckd_data* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dasd_device* %6, i32 %7) #0 {
  %9 = alloca %struct.ccw1*, align 8
  %10 = alloca %struct.LO_eckd_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dasd_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dasd_eckd_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %9, align 8
  store %struct.LO_eckd_data* %1, %struct.LO_eckd_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.dasd_device* %6, %struct.dasd_device** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %24, %struct.dasd_eckd_private** %17, align 8
  %25 = load i32, i32* @DBF_INFO, align 4
  %26 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %25, %struct.dasd_device* %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DASD_ECKD_CCW_LOCATE_RECORD, align 4
  %34 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %35 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %37 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %39 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %38, i32 0, i32 0
  store i32 16, i32* %39, align 8
  %40 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %41 = call i64 @__pa(%struct.LO_eckd_data* %40)
  %42 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %45 = call i32 @memset(%struct.LO_eckd_data* %44, i32 0, i32 44)
  store i32 0, i32* %18, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %8
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %83 [
    i32 13200, label %53
    i32 13184, label %71
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 6
  %56 = call i32 @ceil_quot(i32 %55, i32 232)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 6, %59
  %61 = add nsw i32 %57, %60
  %62 = call i32 @ceil_quot(i32 %61, i32 34)
  %63 = add nsw i32 9, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %64, 1
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 10, %66
  %68 = mul i32 %65, %67
  %69 = add i32 49, %68
  %70 = udiv i32 %69, 8
  store i32 %70, i32* %18, align 4
  br label %83

71:                                               ; preds = %48
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 12
  %74 = call i32 @ceil_quot(i32 %73, i32 32)
  %75 = add nsw i32 7, %74
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 %76, 1
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 8, %78
  %80 = mul i32 %77, %79
  %81 = add i32 39, %80
  %82 = udiv i32 %81, 7
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %48, %71, %53
  br label %84

84:                                               ; preds = %83, %8
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %87 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %90 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  switch i32 %91, label %182 [
    i32 132, label %92
    i32 140, label %99
    i32 128, label %106
    i32 136, label %117
    i32 135, label %128
    i32 129, label %128
    i32 131, label %128
    i32 130, label %128
    i32 134, label %138
    i32 133, label %138
    i32 144, label %148
    i32 137, label %148
    i32 139, label %148
    i32 138, label %148
    i32 143, label %158
    i32 142, label %158
    i32 141, label %168
    i32 145, label %172
  ]

92:                                               ; preds = %84
  %93 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %94 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 3, i32* %95, align 4
  %96 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %97 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 3, i32* %98, align 4
  br label %187

99:                                               ; preds = %84
  %100 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %101 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 3, i32* %102, align 4
  %103 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %104 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32 22, i32* %105, align 4
  br label %187

106:                                              ; preds = %84
  %107 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %108 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %111 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32 3, i32* %112, align 4
  %113 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %114 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %187

117:                                              ; preds = %84
  %118 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %119 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 3, i32* %120, align 4
  %121 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %122 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 22, i32* %123, align 4
  %124 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %125 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %187

128:                                              ; preds = %84, %84, %84, %84
  %129 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %130 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %134 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %136 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %187

138:                                              ; preds = %84, %84
  %139 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %140 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %144 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %146 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i32 3, i32* %147, align 4
  br label %187

148:                                              ; preds = %84, %84, %84, %84
  %149 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %150 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %154 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %156 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i32 6, i32* %157, align 4
  br label %187

158:                                              ; preds = %84, %84
  %159 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %160 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %164 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %166 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i32 22, i32* %167, align 4
  br label %187

168:                                              ; preds = %84
  %169 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %170 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  store i32 6, i32* %171, align 4
  br label %187

172:                                              ; preds = %84
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %175 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %177 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 4
  %179 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %180 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 11, i32* %181, align 4
  br label %187

182:                                              ; preds = %84
  %183 = load i32, i32* @DBF_ERR, align 4
  %184 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %183, %struct.dasd_device* %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %182, %172, %168, %158, %148, %138, %128, %117, %106, %99, %92
  %188 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %189 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %188, i32 0, i32 4
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %192 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = udiv i32 %190, %194
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %198 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = urem i32 %196, %200
  %202 = call i32 @set_ch_t(%struct.TYPE_10__* %189, i32 %195, i32 %201)
  %203 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %204 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %208 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 4
  %210 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %211 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %215 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %219 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 4
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, ...) #1

declare dso_local i64 @__pa(%struct.LO_eckd_data*) #1

declare dso_local i32 @memset(%struct.LO_eckd_data*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
