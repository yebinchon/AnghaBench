; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_send_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.hv_kvp_msg* }
%struct.hv_kvp_msg = type { %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.work_struct = type { i32 }
%struct.cn_msg = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@kvp_transaction = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CN_KVP_IDX = common dso_local global i32 0, align 4
@CN_KVP_VAL = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @kvp_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_send_key(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.hv_kvp_msg*, align 8
  %5 = alloca %struct.hv_kvp_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @kvp_transaction, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @kvp_transaction, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.cn_msg* @kzalloc(i32 104, i32 %20)
  store %struct.cn_msg* %21, %struct.cn_msg** %3, align 8
  %22 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %23 = icmp ne %struct.cn_msg* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %214

25:                                               ; preds = %1
  %26 = load i32, i32* @CN_KVP_IDX, align 4
  %27 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %28 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @CN_KVP_VAL, align 4
  %31 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %32 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %35 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %37, %struct.hv_kvp_msg** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %41 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %45 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @kvp_transaction, i32 0, i32 0), align 8
  store %struct.hv_kvp_msg* %47, %struct.hv_kvp_msg** %5, align 8
  %48 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %49 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %206 [
    i32 131, label %52
    i32 133, label %56
    i32 132, label %60
    i32 134, label %140
    i32 136, label %170
    i32 135, label %196
  ]

52:                                               ; preds = %25
  %53 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %54 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %55 = call i32 @process_ib_ipinfo(%struct.hv_kvp_msg* %53, %struct.hv_kvp_msg* %54, i32 131)
  br label %206

56:                                               ; preds = %25
  %57 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %58 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %59 = call i32 @process_ib_ipinfo(%struct.hv_kvp_msg* %57, %struct.hv_kvp_msg* %58, i32 133)
  br label %206

60:                                               ; preds = %25
  %61 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %62 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %139 [
    i32 130, label %67
    i32 129, label %97
    i32 128, label %118
  ]

67:                                               ; preds = %60
  %68 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %69 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %76 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %82 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %83 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @utf16s_to_utf8s(i32* %74, i32 %80, i32 %81, i64 %87, i32 %89)
  %91 = add nsw i32 %90, 1
  %92 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %93 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  store i32 %91, i32* %96, align 8
  br label %139

97:                                               ; preds = %60
  %98 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %99 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %8, align 4
  %104 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %105 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @sprintf(i64 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = add nsw i32 %111, 1
  %113 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %114 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  store i32 %112, i32* %117, align 8
  br label %139

118:                                              ; preds = %60
  %119 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %120 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  %125 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %126 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @sprintf(i64 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = add nsw i32 %132, 1
  %134 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %135 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 5
  store i32 %133, i32* %138, align 8
  br label %139

139:                                              ; preds = %60, %118, %97, %67
  br label %140

140:                                              ; preds = %25, %139
  %141 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %142 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  %148 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %149 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %155 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %156 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @utf16s_to_utf8s(i32* %147, i32 %153, i32 %154, i64 %160, i32 %162)
  %164 = add nsw i32 %163, 1
  %165 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %166 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  store i32 %164, i32* %169, align 8
  br label %206

170:                                              ; preds = %25
  %171 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %172 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i32*
  %177 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %178 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %183 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %184 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %189 = sub nsw i32 %188, 1
  %190 = call i32 @utf16s_to_utf8s(i32* %176, i32 %181, i32 %182, i64 %187, i32 %189)
  %191 = add nsw i32 %190, 1
  %192 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %193 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 8
  br label %206

196:                                              ; preds = %25
  %197 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %198 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %203 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 8
  br label %206

206:                                              ; preds = %25, %196, %170, %140, %56, %52
  %207 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %208 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %207, i32 0, i32 0
  store i32 80, i32* %208, align 8
  %209 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %210 = load i32, i32* @GFP_ATOMIC, align 4
  %211 = call i32 @cn_netlink_send(%struct.cn_msg* %209, i32 0, i32 %210)
  %212 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %213 = call i32 @kfree(%struct.cn_msg* %212)
  br label %214

214:                                              ; preds = %206, %24
  ret void
}

declare dso_local %struct.cn_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @process_ib_ipinfo(%struct.hv_kvp_msg*, %struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cn_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
