; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_profile.c_mthca_make_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_profile.c_mthca_make_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mthca_profile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mthca_dev_lim = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mthca_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.mthca_resource = type { i32, i32, i32, i32, i32 }
%struct.mthca_resource.0 = type opaque
%struct.mthca_resource.1 = type opaque

@MTHCA_RES_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_RDB_ENTRY_SIZE = common dso_local global i32 0, align 4
@MTHCA_MGM_ENTRY_SIZE = common dso_local global i32 0, align 4
@MTHCA_AV_SIZE = common dso_local global i32 0, align 4
@MTHCA_NUM_EQS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"Profile requires 0x%llx bytes; won't fit in 0x%llx bytes of context memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"profile[%2d]--%2d/%2d @ 0x%16llx (size 0x%8llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"HCA context memory: reserving %d KB\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"HCA memory: allocated %d KB/%d KB (%d KB free)\0A\00", align 1
@MTHCA_NUM_PDS = common dso_local global i32 0, align 4
@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"MPT table too large (requested size 2^%d >= 2^24)\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Disabling memory key throughput optimization.\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_make_profile(%struct.mthca_dev* %0, %struct.mthca_profile* %1, %struct.mthca_dev_lim* %2, %struct.mthca_init_hca_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_profile*, align 8
  %8 = alloca %struct.mthca_dev_lim*, align 8
  %9 = alloca %struct.mthca_init_hca_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mthca_resource*, align 8
  %14 = alloca %struct.mthca_resource, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_profile* %1, %struct.mthca_profile** %7, align 8
  store %struct.mthca_dev_lim* %2, %struct.mthca_dev_lim** %8, align 8
  store %struct.mthca_init_hca_param* %3, %struct.mthca_init_hca_param** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @MTHCA_RES_NUM, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mthca_resource.0* @kzalloc(i32 %20, i32 %21)
  %23 = bitcast %struct.mthca_resource.0* %22 to %struct.mthca_resource*
  store %struct.mthca_resource* %23, %struct.mthca_resource** %13, align 8
  %24 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %25 = icmp ne %struct.mthca_resource* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %896

29:                                               ; preds = %4
  %30 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %31 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %34 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %33, i64 133
  %35 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %37 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %40 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %39, i64 140
  %41 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %43 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %46 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %45, i64 131
  %47 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %49 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %52 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %51, i64 141
  %53 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %55 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %58 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %57, i64 137
  %59 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %61 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %64 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %63, i64 139
  %65 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %67 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %70 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %69, i64 138
  %71 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @MTHCA_RDB_ENTRY_SIZE, align 4
  %73 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %74 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %73, i64 132
  %75 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @MTHCA_MGM_ENTRY_SIZE, align 4
  %77 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %78 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %77, i64 136
  %79 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %81 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %84 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %83, i64 135
  %85 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %87 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %91 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %90, i64 134
  %92 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %94 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %97 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %96, i64 130
  %98 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @MTHCA_AV_SIZE, align 4
  %100 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %101 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %100, i64 128
  %102 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %104 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %107 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %106, i64 129
  %108 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %110 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %113 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %112, i64 133
  %114 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %116 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %119 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %118, i64 131
  %120 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 4
  %121 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %122 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %125 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %124, i64 137
  %126 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %128 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %131 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %135 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %134, i64 132
  %136 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 4
  %137 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %138 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %141 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %140, i64 141
  %142 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %141, i32 0, i32 3
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @MTHCA_NUM_EQS, align 4
  %144 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %145 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %144, i64 138
  %146 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %148 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %151 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %150, i64 136
  %152 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %154 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %157 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %156, i64 135
  %158 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %160 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %163 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %162, i64 134
  %164 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %163, i32 0, i32 3
  store i32 %161, i32* %164, align 4
  %165 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %166 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %169 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %168, i64 130
  %170 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %172 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %175 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %174, i64 129
  %176 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  %177 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %178 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %181 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %180, i64 128
  %182 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 4
  store i32 0, i32* %15, align 4
  br label %183

183:                                              ; preds = %244, %29
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @MTHCA_RES_NUM, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %247

187:                                              ; preds = %183
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %189, i64 %191
  %193 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %192, i32 0, i32 2
  store i32 %188, i32* %193, align 4
  %194 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %194, i64 %196
  %198 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @ffs(i32 %199)
  %201 = getelementptr i8, i8* %200, i64 -1
  %202 = call i8* @max(i8* %201, i32 0)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %204, i64 %206
  %208 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %207, i32 0, i32 4
  store i32 %203, i32* %208, align 4
  %209 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %209, i64 %211
  %213 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %215, i64 %217
  %219 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, %214
  store i32 %221, i32* %219, align 4
  %222 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %223 = call i64 @mthca_is_memfree(%struct.mthca_dev* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %187
  %226 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %226, i64 %228
  %230 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = load i64, i64* @PAGE_SIZE, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i8* @max(i8* %233, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %238, i64 %240
  %242 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %241, i32 0, i32 0
  store i32 %237, i32* %242, align 4
  br label %243

243:                                              ; preds = %225, %187
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  br label %183

247:                                              ; preds = %183
  %248 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %249 = call i64 @mthca_is_memfree(%struct.mthca_dev* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  store i32 0, i32* %10, align 4
  %252 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %8, align 8
  %253 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %11, align 4
  br label %270

257:                                              ; preds = %247
  %258 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %259 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %10, align 4
  %261 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %262 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %267 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %265, %268
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %257, %251
  %271 = load i32, i32* @MTHCA_RES_NUM, align 4
  store i32 %271, i32* %15, align 4
  br label %272

272:                                              ; preds = %325, %270
  %273 = load i32, i32* %15, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %328

275:                                              ; preds = %272
  store i32 1, i32* %16, align 4
  br label %276

276:                                              ; preds = %321, %275
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %15, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %324

280:                                              ; preds = %276
  %281 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %282 = load i32, i32* %16, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %281, i64 %283
  %285 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %287, i64 %290
  %292 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %286, %293
  br i1 %294, label %295, label %320

295:                                              ; preds = %280
  %296 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %296, i64 %298
  %300 = bitcast %struct.mthca_resource* %14 to i8*
  %301 = bitcast %struct.mthca_resource* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 4 %301, i64 20, i1 false)
  %302 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %303 = load i32, i32* %16, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %302, i64 %304
  %306 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %307 = load i32, i32* %16, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %306, i64 %309
  %311 = bitcast %struct.mthca_resource* %305 to i8*
  %312 = bitcast %struct.mthca_resource* %310 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %311, i8* align 4 %312, i64 20, i1 false)
  %313 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %314 = load i32, i32* %16, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %313, i64 %316
  %318 = bitcast %struct.mthca_resource* %317 to i8*
  %319 = bitcast %struct.mthca_resource* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %318, i8* align 4 %319, i64 20, i1 false)
  br label %320

320:                                              ; preds = %295, %280
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %16, align 4
  br label %276

324:                                              ; preds = %276
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %15, align 4
  br label %272

328:                                              ; preds = %272
  store i32 0, i32* %15, align 4
  br label %329

329:                                              ; preds = %413, %328
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* @MTHCA_RES_NUM, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %416

333:                                              ; preds = %329
  %334 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %335 = load i32, i32* %15, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %334, i64 %336
  %338 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %358

341:                                              ; preds = %333
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %342, %343
  %345 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %345, i64 %347
  %349 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %348, i32 0, i32 1
  store i32 %344, i32* %349, align 4
  %350 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %350, i64 %352
  %354 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %12, align 4
  br label %358

358:                                              ; preds = %341, %333
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* %11, align 4
  %361 = icmp sgt i32 %359, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %358
  %363 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = call i32 @mthca_err(%struct.mthca_dev* %363, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %365, i64 %367)
  %369 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %370 = bitcast %struct.mthca_resource* %369 to %struct.mthca_resource.1*
  %371 = call i32 @kfree(%struct.mthca_resource.1* %370)
  %372 = load i32, i32* @ENOMEM, align 4
  %373 = sub nsw i32 0, %372
  store i32 %373, i32* %5, align 4
  br label %896

374:                                              ; preds = %358
  %375 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %376 = load i32, i32* %15, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %375, i64 %377
  %379 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %412

382:                                              ; preds = %374
  %383 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %384 = load i32, i32* %15, align 4
  %385 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %386 = load i32, i32* %15, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %385, i64 %387
  %389 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %391, i64 %393
  %395 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %398 = load i32, i32* %15, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %397, i64 %399
  %401 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %405 = load i32, i32* %15, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %404, i64 %406
  %408 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %383, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %384, i32 %390, i32 %396, i64 %403, i64 %410)
  br label %412

412:                                              ; preds = %382, %374
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %15, align 4
  br label %329

416:                                              ; preds = %329
  %417 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %418 = call i64 @mthca_is_memfree(%struct.mthca_dev* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %416
  %421 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %422 = load i32, i32* %12, align 4
  %423 = ashr i32 %422, 10
  %424 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %421, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %423)
  br label %436

425:                                              ; preds = %416
  %426 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %427 = load i32, i32* %12, align 4
  %428 = ashr i32 %427, 10
  %429 = load i32, i32* %11, align 4
  %430 = ashr i32 %429, 10
  %431 = load i32, i32* %11, align 4
  %432 = load i32, i32* %12, align 4
  %433 = sub nsw i32 %431, %432
  %434 = ashr i32 %433, 10
  %435 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %426, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %428, i32 %430, i32 %434)
  br label %436

436:                                              ; preds = %425, %420
  store i32 0, i32* %15, align 4
  br label %437

437:                                              ; preds = %840, %436
  %438 = load i32, i32* %15, align 4
  %439 = load i32, i32* @MTHCA_RES_NUM, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %843

441:                                              ; preds = %437
  %442 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %443 = load i32, i32* %15, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %442, i64 %444
  %446 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  switch i32 %447, label %838 [
    i32 133, label %448
    i32 140, label %474
    i32 131, label %500
    i32 141, label %526
    i32 137, label %552
    i32 139, label %561
    i32 138, label %570
    i32 132, label %596
    i32 136, label %641
    i32 135, label %693
    i32 134, label %728
    i32 130, label %763
    i32 128, label %781
    i32 129, label %800
  ]

448:                                              ; preds = %441
  %449 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %450 = load i32, i32* %15, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %449, i64 %451
  %453 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %456 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 1
  store i32 %454, i32* %457, align 4
  %458 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %459 = load i32, i32* %15, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %458, i64 %460
  %462 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %465 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %464, i32 0, i32 0
  store i32 %463, i32* %465, align 8
  %466 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %467 = load i32, i32* %15, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %466, i64 %468
  %470 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %473 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %472, i32 0, i32 1
  store i32 %471, i32* %473, align 4
  br label %839

474:                                              ; preds = %441
  %475 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %476 = load i32, i32* %15, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %475, i64 %477
  %479 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %482 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %481, i32 0, i32 2
  %483 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %482, i32 0, i32 2
  store i32 %480, i32* %483, align 8
  %484 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %485 = load i32, i32* %15, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %484, i64 %486
  %488 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %491 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  %492 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %493 = load i32, i32* %15, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %492, i64 %494
  %496 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %499 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %498, i32 0, i32 3
  store i32 %497, i32* %499, align 4
  br label %839

500:                                              ; preds = %441
  %501 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %502 = load i32, i32* %15, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %501, i64 %503
  %505 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %508 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i32 0, i32 3
  store i32 %506, i32* %509, align 4
  %510 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %511 = load i32, i32* %15, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %510, i64 %512
  %514 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %517 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %516, i32 0, i32 4
  store i32 %515, i32* %517, align 8
  %518 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %519 = load i32, i32* %15, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %518, i64 %520
  %522 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %525 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %524, i32 0, i32 5
  store i32 %523, i32* %525, align 4
  br label %839

526:                                              ; preds = %441
  %527 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %528 = load i32, i32* %15, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %527, i64 %529
  %531 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %534 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 4
  store i32 %532, i32* %535, align 8
  %536 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %537 = load i32, i32* %15, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %536, i64 %538
  %540 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %543 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %542, i32 0, i32 6
  store i32 %541, i32* %543, align 8
  %544 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %545 = load i32, i32* %15, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %544, i64 %546
  %548 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %551 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %550, i32 0, i32 7
  store i32 %549, i32* %551, align 4
  br label %839

552:                                              ; preds = %441
  %553 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %554 = load i32, i32* %15, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %553, i64 %555
  %557 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %560 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %559, i32 0, i32 8
  store i32 %558, i32* %560, align 8
  br label %839

561:                                              ; preds = %441
  %562 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %563 = load i32, i32* %15, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %562, i64 %564
  %566 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %569 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %568, i32 0, i32 9
  store i32 %567, i32* %569, align 4
  br label %839

570:                                              ; preds = %441
  %571 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %572 = load i32, i32* %15, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %571, i64 %573
  %575 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %578 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %577, i32 0, i32 2
  %579 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %578, i32 0, i32 5
  store i32 %576, i32* %579, align 4
  %580 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %581 = load i32, i32* %15, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %580, i64 %582
  %584 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %587 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %586, i32 0, i32 10
  store i32 %585, i32* %587, align 8
  %588 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %589 = load i32, i32* %15, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %588, i64 %590
  %592 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %591, i32 0, i32 4
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %595 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %594, i32 0, i32 11
  store i32 %593, i32* %595, align 4
  br label %839

596:                                              ; preds = %441
  %597 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %598 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %597, i32 0, i32 6
  %599 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %598, i32 0, i32 0
  store i32 0, i32* %599, align 8
  br label %600

600:                                              ; preds = %617, %596
  %601 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %602 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %605 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %604, i32 0, i32 6
  %606 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = shl i32 %603, %607
  %609 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %610 = load i32, i32* %15, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %609, i64 %611
  %613 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 4
  %615 = icmp slt i32 %608, %614
  br i1 %615, label %616, label %623

616:                                              ; preds = %600
  br label %617

617:                                              ; preds = %616
  %618 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %619 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %618, i32 0, i32 6
  %620 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %620, align 8
  br label %600

623:                                              ; preds = %600
  %624 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %625 = load i32, i32* %15, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %624, i64 %626
  %628 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %631 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %630, i32 0, i32 6
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 1
  store i32 %629, i32* %632, align 4
  %633 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %634 = load i32, i32* %15, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %633, i64 %635
  %637 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %640 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %639, i32 0, i32 12
  store i32 %638, i32* %640, align 8
  br label %839

641:                                              ; preds = %441
  %642 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %643 = load i32, i32* %15, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %642, i64 %644
  %646 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %645, i32 0, i32 3
  %647 = load i32, i32* %646, align 4
  %648 = ashr i32 %647, 1
  %649 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %650 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %649, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %650, i32 0, i32 6
  store i32 %648, i32* %651, align 8
  %652 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %653 = load i32, i32* %15, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %652, i64 %654
  %656 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %655, i32 0, i32 3
  %657 = load i32, i32* %656, align 4
  %658 = ashr i32 %657, 1
  %659 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %660 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %659, i32 0, i32 2
  %661 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %660, i32 0, i32 7
  store i32 %658, i32* %661, align 4
  %662 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %663 = load i32, i32* %15, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %662, i64 %664
  %666 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %669 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %668, i32 0, i32 13
  store i32 %667, i32* %669, align 4
  %670 = load i32, i32* @MTHCA_MGM_ENTRY_SIZE, align 4
  %671 = call i8* @ffs(i32 %670)
  %672 = getelementptr i8, i8* %671, i64 -1
  %673 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %674 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %673, i32 0, i32 24
  store i8* %672, i8** %674, align 8
  %675 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %676 = load i32, i32* %15, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %675, i64 %677
  %679 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %678, i32 0, i32 4
  %680 = load i32, i32* %679, align 4
  %681 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %682 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %681, i32 0, i32 14
  store i32 %680, i32* %682, align 8
  %683 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %684 = load i32, i32* %15, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %683, i64 %685
  %687 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %686, i32 0, i32 4
  %688 = load i32, i32* %687, align 4
  %689 = sub nsw i32 %688, 1
  %690 = shl i32 1, %689
  %691 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %692 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %691, i32 0, i32 15
  store i32 %690, i32* %692, align 4
  br label %839

693:                                              ; preds = %441
  %694 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %695 = load i32, i32* %15, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %694, i64 %696
  %698 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 4
  %700 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %701 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %700, i32 0, i32 2
  %702 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %701, i32 0, i32 8
  store i32 %699, i32* %702, align 8
  %703 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %704 = load i32, i32* %15, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %703, i64 %705
  %707 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 4
  %709 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %710 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %709, i32 0, i32 5
  %711 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %710, i32 0, i32 0
  store i32 %708, i32* %711, align 8
  %712 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %713 = load i32, i32* %15, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %712, i64 %714
  %716 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %715, i32 0, i32 1
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %719 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %718, i32 0, i32 16
  store i32 %717, i32* %719, align 8
  %720 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %721 = load i32, i32* %15, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %720, i64 %722
  %724 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %723, i32 0, i32 4
  %725 = load i32, i32* %724, align 4
  %726 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %727 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %726, i32 0, i32 17
  store i32 %725, i32* %727, align 4
  br label %839

728:                                              ; preds = %441
  %729 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %730 = load i32, i32* %15, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %729, i64 %731
  %733 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %732, i32 0, i32 3
  %734 = load i32, i32* %733, align 4
  %735 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %736 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %735, i32 0, i32 2
  %737 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %736, i32 0, i32 9
  store i32 %734, i32* %737, align 4
  %738 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %739 = load i32, i32* %15, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %738, i64 %740
  %742 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %745 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %744, i32 0, i32 5
  %746 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %745, i32 0, i32 1
  store i32 %743, i32* %746, align 4
  %747 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %748 = load i32, i32* %15, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %747, i64 %749
  %751 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %754 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %753, i32 0, i32 18
  store i32 %752, i32* %754, align 8
  %755 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %756 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %755, i32 0, i32 2
  %757 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 8
  %759 = call i8* @ffs(i32 %758)
  %760 = getelementptr i8, i8* %759, i64 -7
  %761 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %762 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %761, i32 0, i32 23
  store i8* %760, i8** %762, align 8
  br label %839

763:                                              ; preds = %441
  %764 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %765 = load i32, i32* %15, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %764, i64 %766
  %768 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %767, i32 0, i32 3
  %769 = load i32, i32* %768, align 4
  %770 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %771 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %770, i32 0, i32 2
  %772 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %771, i32 0, i32 10
  store i32 %769, i32* %772, align 8
  %773 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %774 = load i32, i32* %15, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %773, i64 %775
  %777 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %776, i32 0, i32 1
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %780 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %779, i32 0, i32 19
  store i32 %778, i32* %780, align 4
  br label %839

781:                                              ; preds = %441
  %782 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %783 = load i32, i32* %15, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %782, i64 %784
  %786 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 4
  %788 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %789 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %788, i32 0, i32 4
  %790 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %789, i32 0, i32 0
  store i32 %787, i32* %790, align 8
  %791 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %792 = load i32, i32* %15, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %791, i64 %793
  %795 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %794, i32 0, i32 3
  %796 = load i32, i32* %795, align 4
  %797 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %798 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %797, i32 0, i32 4
  %799 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %798, i32 0, i32 1
  store i32 %796, i32* %799, align 4
  br label %839

800:                                              ; preds = %441
  %801 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %802 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 8
  %804 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %805 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %804, i32 0, i32 3
  %806 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %805, i32 0, i32 0
  store i32 %803, i32* %806, align 8
  %807 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %808 = load i32, i32* %15, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %807, i64 %809
  %811 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %810, i32 0, i32 1
  %812 = load i32, i32* %811, align 4
  %813 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %814 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %813, i32 0, i32 3
  %815 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %814, i32 0, i32 1
  store i32 %812, i32* %815, align 4
  %816 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %817 = load i32, i32* %15, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %816, i64 %818
  %820 = getelementptr inbounds %struct.mthca_resource, %struct.mthca_resource* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 4
  %822 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %823 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %822, i32 0, i32 20
  store i32 %821, i32* %823, align 8
  %824 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %825 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 8
  %827 = call i8* @ffs(i32 %826)
  %828 = getelementptr i8, i8* %827, i64 -13
  %829 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %830 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %829, i32 0, i32 22
  store i8* %828, i8** %830, align 8
  %831 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %832 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %831, i32 0, i32 8
  %833 = load i32, i32* %832, align 8
  %834 = call i8* @ffs(i32 %833)
  %835 = getelementptr i8, i8* %834, i64 -1
  %836 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %837 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %836, i32 0, i32 21
  store i8* %835, i8** %837, align 8
  br label %839

838:                                              ; preds = %441
  br label %839

839:                                              ; preds = %838, %800, %781, %763, %728, %693, %641, %623, %570, %561, %552, %526, %500, %474, %448
  br label %840

840:                                              ; preds = %839
  %841 = load i32, i32* %15, align 4
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %15, align 4
  br label %437

843:                                              ; preds = %437
  %844 = load i32, i32* @MTHCA_NUM_PDS, align 4
  %845 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %846 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %845, i32 0, i32 2
  %847 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %846, i32 0, i32 12
  store i32 %844, i32* %847, align 8
  %848 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %849 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %848, i32 0, i32 1
  %850 = load i32, i32* %849, align 4
  %851 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %873

854:                                              ; preds = %843
  %855 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %856 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %855, i32 0, i32 17
  %857 = load i32, i32* %856, align 4
  %858 = icmp sgt i32 %857, 23
  br i1 %858, label %859, label %873

859:                                              ; preds = %854
  %860 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %861 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %9, align 8
  %862 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %861, i32 0, i32 17
  %863 = load i32, i32* %862, align 4
  %864 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %860, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %863)
  %865 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %866 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %865, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %867 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %868 = xor i32 %867, -1
  %869 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %870 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %869, i32 0, i32 1
  %871 = load i32, i32* %870, align 4
  %872 = and i32 %871, %868
  store i32 %872, i32* %870, align 4
  br label %873

873:                                              ; preds = %859, %854, %843
  %874 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %875 = call i64 @mthca_is_memfree(%struct.mthca_dev* %874)
  %876 = icmp ne i64 %875, 0
  br i1 %876, label %880, label %877

877:                                              ; preds = %873
  %878 = load i32, i32* @BITS_PER_LONG, align 4
  %879 = icmp eq i32 %878, 64
  br i1 %879, label %880, label %884

880:                                              ; preds = %877, %873
  %881 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %882 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %881, i32 0, i32 2
  %883 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %882, i32 0, i32 11
  store i64 0, i64* %883, align 8
  br label %891

884:                                              ; preds = %877
  %885 = load %struct.mthca_profile*, %struct.mthca_profile** %7, align 8
  %886 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %885, i32 0, i32 10
  %887 = load i64, i64* %886, align 8
  %888 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %889 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %888, i32 0, i32 2
  %890 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %889, i32 0, i32 11
  store i64 %887, i64* %890, align 8
  br label %891

891:                                              ; preds = %884, %880
  %892 = load %struct.mthca_resource*, %struct.mthca_resource** %13, align 8
  %893 = bitcast %struct.mthca_resource* %892 to %struct.mthca_resource.1*
  %894 = call i32 @kfree(%struct.mthca_resource.1* %893)
  %895 = load i32, i32* %12, align 4
  store i32 %895, i32* %5, align 4
  br label %896

896:                                              ; preds = %891, %362, %26
  %897 = load i32, i32* %5, align 4
  ret i32 %897
}

declare dso_local %struct.mthca_resource.0* @kzalloc(i32, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i64, i64) #1

declare dso_local i32 @kfree(%struct.mthca_resource.1*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i32, ...) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
