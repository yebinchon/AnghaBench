; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_prefix_LRE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_prefix_LRE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i8*, i64, i32 }
%struct.PFX_eckd_data = type { i8, %struct.TYPE_10__, i32, i32, %struct.LRE_eckd_data, %struct.DE_eckd_data }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.LRE_eckd_data = type { i32 }
%struct.DE_eckd_data = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_12__, %struct.TYPE_13__, i64, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@DASD_ECKD_CCW_PFX = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PFX LRE unknown format 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UA_BASE_DEVICE = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@DASD_BYPASS_CACHE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"PFX LRE unknown opcode 0x%x\00", align 1
@DASD_SEQ_PRESTAGE = common dso_local global i64 0, align 8
@DASD_SEQ_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.PFX_eckd_data*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i8, i32, i32, i32, i32)* @prefix_LRE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_LRE(%struct.ccw1* %0, %struct.PFX_eckd_data* %1, i32 %2, i32 %3, i32 %4, %struct.dasd_device* %5, %struct.dasd_device* %6, i8 zeroext %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccw1*, align 8
  %15 = alloca %struct.PFX_eckd_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dasd_device*, align 8
  %20 = alloca %struct.dasd_device*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.dasd_eckd_private*, align 8
  %27 = alloca %struct.dasd_eckd_private*, align 8
  %28 = alloca %struct.DE_eckd_data*, align 8
  %29 = alloca %struct.LRE_eckd_data*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %14, align 8
  store %struct.PFX_eckd_data* %1, %struct.PFX_eckd_data** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store %struct.dasd_device* %5, %struct.dasd_device** %19, align 8
  store %struct.dasd_device* %6, %struct.dasd_device** %20, align 8
  store i8 %7, i8* %21, align 1
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 0, i32* %35, align 4
  %36 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %39, %struct.dasd_eckd_private** %26, align 8
  %40 = load %struct.dasd_device*, %struct.dasd_device** %20, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %43, %struct.dasd_eckd_private** %27, align 8
  %44 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %45 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %44, i32 0, i32 5
  store %struct.DE_eckd_data* %45, %struct.DE_eckd_data** %28, align 8
  %46 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %47 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %46, i32 0, i32 4
  store %struct.LRE_eckd_data* %47, %struct.LRE_eckd_data** %29, align 8
  %48 = load i32, i32* @DASD_ECKD_CCW_PFX, align 4
  %49 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %52 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = icmp eq i32 %53, 134
  br i1 %54, label %55, label %65

55:                                               ; preds = %12
  %56 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %57 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %56, i32 0, i32 0
  store i32 74, i32* %57, align 8
  %58 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %59 = call i64 @__pa(%struct.PFX_eckd_data* %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %62 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %64 = call i32 @memset(%struct.PFX_eckd_data* %63, i32 0, i32 74)
  br label %75

65:                                               ; preds = %12
  %66 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i32 0, i32 0
  store i32 72, i32* %67, align 8
  %68 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %69 = call i64 @__pa(%struct.PFX_eckd_data* %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  %72 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %74 = call i32 @memset(%struct.PFX_eckd_data* %73, i32 0, i32 72)
  br label %75

75:                                               ; preds = %65, %55
  %76 = load i8, i8* %21, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* @DBF_ERR, align 4
  %81 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %82 = load i8, i8* %21, align 1
  %83 = zext i8 %82 to i32
  %84 = call i32 @DBF_DEV_EVENT(i32 %80, %struct.dasd_device* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = call i32 (...) @BUG()
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %346

88:                                               ; preds = %75
  %89 = load i8, i8* %21, align 1
  %90 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %91 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %90, i32 0, i32 0
  store i8 %89, i8* %91, align 8
  %92 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %93 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %92, i32 0, i32 5
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %98 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %100 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %99, i32 0, i32 5
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %105 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %107 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %110 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @UA_BASE_DEVICE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %88
  %116 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %117 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %120 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %127 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %115
  br label %130

130:                                              ; preds = %129, %88
  %131 = load i32, i32* %18, align 4
  switch i32 %131, label %224 [
    i32 144, label %132
    i32 140, label %132
    i32 148, label %132
    i32 141, label %132
    i32 147, label %132
    i32 146, label %132
    i32 143, label %132
    i32 142, label %132
    i32 145, label %132
    i32 139, label %143
    i32 138, label %143
    i32 137, label %156
    i32 130, label %156
    i32 132, label %156
    i32 131, label %156
    i32 136, label %170
    i32 135, label %170
    i32 149, label %179
    i32 133, label %179
    i32 129, label %179
    i32 134, label %194
    i32 128, label %207
  ]

132:                                              ; preds = %130, %130, %130, %130, %130, %130, %130, %130, %130
  %133 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %134 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %137 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %141 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  br label %232

143:                                              ; preds = %130, %130
  %144 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %145 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %148 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %152 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %155 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  br label %232

156:                                              ; preds = %130, %130, %130, %130
  %157 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %158 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i32 2, i32* %159, align 8
  %160 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %161 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %165 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  %167 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %168 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %169 = call i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %167, %struct.dasd_device* %168)
  store i32 %169, i32* %35, align 4
  br label %232

170:                                              ; preds = %130, %130
  %171 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %172 = ptrtoint i8* %171 to i64
  %173 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %174 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  %176 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %177 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %178 = call i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %176, %struct.dasd_device* %177)
  store i32 %178, i32* %35, align 4
  br label %232

179:                                              ; preds = %130, %130, %130
  %180 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %181 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i32 3, i32* %182, align 8
  %183 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %184 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  %186 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %189 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  store i64 %187, i64* %190, align 8
  %191 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %192 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %193 = call i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %191, %struct.dasd_device* %192)
  store i32 %193, i32* %35, align 4
  br label %232

194:                                              ; preds = %130
  %195 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %196 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  store i32 3, i32* %197, align 8
  %198 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %199 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %203 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  store i64 %201, i64* %204, align 8
  %205 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %206 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  br label %232

207:                                              ; preds = %130
  %208 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %209 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  store i32 2, i32* %210, align 8
  %211 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %212 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %216 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  store i64 %214, i64* %217, align 8
  %218 = load i32, i32* %24, align 4
  %219 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %220 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %15, align 8
  %222 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %223 = call i32 @check_XRC_on_prefix(%struct.PFX_eckd_data* %221, %struct.dasd_device* %222)
  store i32 %223, i32* %35, align 4
  br label %232

224:                                              ; preds = %130
  %225 = load i32, i32* @DBF_ERR, align 4
  %226 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @DBF_DEV_EVENT(i32 %225, %struct.dasd_device* %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  %229 = call i32 (...) @BUG()
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %13, align 4
  br label %346

232:                                              ; preds = %207, %194, %179, %170, %156, %143, %132
  %233 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %234 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  store i32 3, i32* %235, align 8
  %236 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %237 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 8453
  br i1 %240, label %253, label %241

241:                                              ; preds = %232
  %242 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %243 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 8455
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %249 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 5968
  br i1 %252, label %253, label %266

253:                                              ; preds = %247, %241, %232
  %254 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %255 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %16, align 4
  %260 = icmp ult i32 %259, 2
  br i1 %260, label %266, label %261

261:                                              ; preds = %258, %253
  %262 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %263 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, 64
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %261, %258, %247
  %267 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %268 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %32, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %32, align 4
  %273 = udiv i32 %271, %272
  store i32 %273, i32* %30, align 4
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %32, align 4
  %276 = urem i32 %274, %275
  store i32 %276, i32* %33, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %32, align 4
  %279 = udiv i32 %277, %278
  store i32 %279, i32* %31, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %32, align 4
  %282 = urem i32 %280, %281
  store i32 %282, i32* %34, align 4
  %283 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %284 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @DASD_SEQ_PRESTAGE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %296, label %289

289:                                              ; preds = %266
  %290 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %291 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @DASD_SEQ_ACCESS, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %320

296:                                              ; preds = %289, %266
  %297 = load i32, i32* %31, align 4
  %298 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %299 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %297, %301
  %303 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %304 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %296
  %308 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %309 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %31, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %31, align 4
  br label %319

314:                                              ; preds = %296
  %315 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %26, align 8
  %316 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %31, align 4
  br label %319

319:                                              ; preds = %314, %307
  br label %320

320:                                              ; preds = %319, %289
  %321 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %322 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %321, i32 0, i32 3
  %323 = load i32, i32* %30, align 4
  %324 = load i32, i32* %33, align 4
  %325 = call i32 @set_ch_t(i32* %322, i32 %323, i32 %324)
  %326 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %28, align 8
  %327 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %326, i32 0, i32 2
  %328 = load i32, i32* %31, align 4
  %329 = load i32, i32* %34, align 4
  %330 = call i32 @set_ch_t(i32* %327, i32 %328, i32 %329)
  %331 = load i8, i8* %21, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %344

334:                                              ; preds = %320
  %335 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %29, align 8
  %336 = load i32, i32* %16, align 4
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* %23, align 4
  %339 = load i32, i32* %18, align 4
  %340 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %341 = load i32, i32* %24, align 4
  %342 = load i32, i32* %25, align 4
  %343 = call i32 @fill_LRE_data(%struct.LRE_eckd_data* %335, i32 %336, i32 %337, i32 %338, i32 %339, %struct.dasd_device* %340, i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %334, %320
  %345 = load i32, i32* %35, align 4
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %344, %224, %79
  %347 = load i32, i32* %13, align 4
  ret i32 %347
}

declare dso_local i64 @__pa(%struct.PFX_eckd_data*) #1

declare dso_local i32 @memset(%struct.PFX_eckd_data*, i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @check_XRC_on_prefix(%struct.PFX_eckd_data*, %struct.dasd_device*) #1

declare dso_local i32 @set_ch_t(i32*, i32, i32) #1

declare dso_local i32 @fill_LRE_data(%struct.LRE_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
