; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_prepare_itcw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_prepare_itcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itcw = type { i32 }
%struct.dasd_device = type { i64 }
%struct.PFX_eckd_data = type { i32, %struct.TYPE_17__, i32, i32, %struct.LRE_eckd_data, %struct.DE_eckd_data }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.LRE_eckd_data = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.DE_eckd_data = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.dcw = type { i32 }

@UA_BASE_DEVICE = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@DASD_ECKD_CCW_PFX_READ = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PFX = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"prepare itcw, unknown opcode 0x%x\00", align 1
@DASD_SEQ_PRESTAGE = common dso_local global i64 0, align 8
@DASD_SEQ_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itcw*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32, i32, i32, i32, i32, i32)* @prepare_itcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_itcw(%struct.itcw* %0, i32 %1, i32 %2, i32 %3, %struct.dasd_device* %4, %struct.dasd_device* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.itcw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dasd_device*, align 8
  %19 = alloca %struct.dasd_device*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.PFX_eckd_data, align 8
  %27 = alloca %struct.dasd_eckd_private*, align 8
  %28 = alloca %struct.dasd_eckd_private*, align 8
  %29 = alloca %struct.DE_eckd_data*, align 8
  %30 = alloca %struct.LRE_eckd_data*, align 8
  %31 = alloca %struct.dcw*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.itcw* %0, %struct.itcw** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.dasd_device* %4, %struct.dasd_device** %18, align 8
  store %struct.dasd_device* %5, %struct.dasd_device** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %42 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %45, %struct.dasd_eckd_private** %27, align 8
  %46 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %49, %struct.dasd_eckd_private** %28, align 8
  %50 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 5
  store %struct.DE_eckd_data* %50, %struct.DE_eckd_data** %29, align 8
  %51 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 4
  store %struct.LRE_eckd_data* %51, %struct.LRE_eckd_data** %30, align 8
  %52 = call i32 @memset(%struct.PFX_eckd_data* %26, i32 0, i32 144)
  %53 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %55 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %61 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %60, i32 0, i32 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %28, align 8
  %69 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UA_BASE_DEVICE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %12
  %75 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %28, align 8
  %78 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %12
  %88 = load i32, i32* %17, align 4
  switch i32 %88, label %149 [
    i32 129, label %89
    i32 128, label %117
  ]

89:                                               ; preds = %87
  %90 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %91 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %94 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %98 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %102 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %104 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 66
  store i32 %106, i32* %104, align 4
  %107 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %108 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %111 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  store i32 12, i32* %112, align 4
  %113 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %114 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @DASD_ECKD_CCW_PFX_READ, align 4
  store i32 %116, i32* %37, align 4
  br label %155

117:                                              ; preds = %87
  %118 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %119 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  %121 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %122 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %126 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i32, i32* %22, align 4
  %129 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %130 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %132 = call i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %26, %struct.dasd_device* %131)
  store i32 %132, i32* %38, align 4
  %133 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %134 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, 66
  store i32 %136, i32* %134, align 4
  %137 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %138 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  %140 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %141 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  store i32 63, i32* %142, align 4
  %143 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %144 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %143, i32 0, i32 0
  store i32 35, i32* %144, align 4
  %145 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %146 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  store i32 2, i32* %147, align 4
  %148 = load i32, i32* @DASD_ECKD_CCW_PFX, align 4
  store i32 %148, i32* %37, align 4
  br label %155

149:                                              ; preds = %87
  %150 = load i32, i32* @DBF_ERR, align 4
  %151 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %152 = load i32, i32* %17, align 4
  %153 = call i32 @DBF_DEV_EVENT(i32 %150, %struct.dasd_device* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = call i32 (...) @BUG()
  br label %155

155:                                              ; preds = %149, %117, %89
  %156 = load i32, i32* %38, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %38, align 4
  store i32 %159, i32* %13, align 4
  br label %321

160:                                              ; preds = %155
  %161 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %162 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  store i32 3, i32* %163, align 8
  %164 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %165 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %34, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %34, align 4
  %170 = udiv i32 %168, %169
  store i32 %170, i32* %32, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %34, align 4
  %173 = urem i32 %171, %172
  store i32 %173, i32* %35, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %34, align 4
  %176 = udiv i32 %174, %175
  store i32 %176, i32* %33, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %34, align 4
  %179 = urem i32 %177, %178
  store i32 %179, i32* %36, align 4
  %180 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %181 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @DASD_SEQ_PRESTAGE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %193, label %186

186:                                              ; preds = %160
  %187 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %188 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DASD_SEQ_ACCESS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %186, %160
  %194 = load i32, i32* %33, align 4
  %195 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %196 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %194, %198
  %200 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %201 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %193
  %205 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %206 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %33, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %33, align 4
  br label %216

211:                                              ; preds = %193
  %212 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %213 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %33, align 4
  br label %216

216:                                              ; preds = %211, %204
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %219 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %218, i32 0, i32 5
  %220 = load i32, i32* %32, align 4
  %221 = load i32, i32* %35, align 4
  %222 = call i32 @set_ch_t(%struct.TYPE_13__* %219, i32 %220, i32 %221)
  %223 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %224 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %223, i32 0, i32 4
  %225 = load i32, i32* %33, align 4
  %226 = load i32, i32* %36, align 4
  %227 = call i32 @set_ch_t(%struct.TYPE_13__* %224, i32 %225, i32 %226)
  %228 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %229 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %228, i32 0, i32 2
  store i32 32, i32* %229, align 8
  %230 = load i32, i32* %25, align 4
  %231 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %232 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %20, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %271

235:                                              ; preds = %217
  %236 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %237 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  switch i32 %239, label %270 [
    i32 13200, label %240
    i32 13184, label %258
  ]

240:                                              ; preds = %235
  %241 = load i32, i32* %22, align 4
  %242 = add i32 %241, 6
  %243 = call i32 @ceil_quot(i32 %242, i32 232)
  store i32 %243, i32* %40, align 4
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %40, align 4
  %246 = add nsw i32 %245, 1
  %247 = mul nsw i32 6, %246
  %248 = add i32 %244, %247
  %249 = call i32 @ceil_quot(i32 %248, i32 34)
  %250 = add nsw i32 9, %249
  store i32 %250, i32* %41, align 4
  %251 = load i32, i32* %20, align 4
  %252 = sub i32 %251, 1
  %253 = load i32, i32* %41, align 4
  %254 = add nsw i32 10, %253
  %255 = mul i32 %252, %254
  %256 = add i32 49, %255
  %257 = udiv i32 %256, 8
  store i32 %257, i32* %39, align 4
  br label %270

258:                                              ; preds = %235
  %259 = load i32, i32* %22, align 4
  %260 = add i32 %259, 12
  %261 = call i32 @ceil_quot(i32 %260, i32 32)
  %262 = add nsw i32 7, %261
  store i32 %262, i32* %41, align 4
  %263 = load i32, i32* %20, align 4
  %264 = sub i32 %263, 1
  %265 = load i32, i32* %41, align 4
  %266 = add nsw i32 8, %265
  %267 = mul i32 %264, %266
  %268 = add i32 39, %267
  %269 = udiv i32 %268, 7
  store i32 %269, i32* %39, align 4
  br label %270

270:                                              ; preds = %235, %258, %240
  br label %271

271:                                              ; preds = %270, %217
  %272 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %273 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  store i32 1, i32* %274, align 4
  %275 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %276 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 2
  store i32 1, i32* %277, align 4
  %278 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %279 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  store i32 1, i32* %280, align 4
  %281 = load i32, i32* %24, align 4
  %282 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %283 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %286 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %289 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %39, align 4
  %291 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %292 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 4
  %293 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %294 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %293, i32 0, i32 6
  %295 = load i32, i32* %32, align 4
  %296 = load i32, i32* %35, align 4
  %297 = call i32 @set_ch_t(%struct.TYPE_13__* %294, i32 %295, i32 %296)
  %298 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %299 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %303 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 2
  store i32 %301, i32* %304, align 4
  %305 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %306 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %310 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* %20, align 4
  %313 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %314 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  store i32 %312, i32* %315, align 4
  %316 = load %struct.itcw*, %struct.itcw** %14, align 8
  %317 = load i32, i32* %37, align 4
  %318 = load i32, i32* %23, align 4
  %319 = call %struct.dcw* @itcw_add_dcw(%struct.itcw* %316, i32 %317, i32 0, %struct.PFX_eckd_data* %26, i32 144, i32 %318)
  store %struct.dcw* %319, %struct.dcw** %31, align 8
  %320 = load i32, i32* %38, align 4
  store i32 %320, i32* %13, align 4
  br label %321

321:                                              ; preds = %271, %158
  %322 = load i32, i32* %13, align 4
  ret i32 %322
}

declare dso_local i32 @memset(%struct.PFX_eckd_data*, i32, i32) #1

declare dso_local i32 @check_XRC_on_prefix(%struct.PFX_eckd_data*, %struct.dasd_device*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local %struct.dcw* @itcw_add_dcw(%struct.itcw*, i32, i32, %struct.PFX_eckd_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
