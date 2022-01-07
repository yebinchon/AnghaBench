; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_init_icm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_init_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_16__, %struct.TYPE_9__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mthca_dev_lim = type { i32, i32, i32, i32, i32 }
%struct.mthca_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"SET_ICM_SIZE command returned %d, aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%lld KB of HCA context requires %lld KB aux memory.\0A\00", align 1
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Couldn't allocate aux memory, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"MAP_ICM_AUX returned %d, aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to map EQ context memory, aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to map MTT context memory, aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to map MPT context memory, aborting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to map QP context memory, aborting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Failed to map EQP context memory, aborting.\0A\00", align 1
@MTHCA_RDB_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to map RDB context memory, aborting\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Failed to map CQ context memory, aborting.\0A\00", align 1
@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"Failed to map SRQ context memory, aborting.\0A\00", align 1
@MTHCA_MGM_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"Failed to map MCG context memory, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_dev_lim*, %struct.mthca_init_hca_param*, i64)* @mthca_init_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_init_icm(%struct.mthca_dev* %0, %struct.mthca_dev_lim* %1, %struct.mthca_init_hca_param* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_dev_lim*, align 8
  %8 = alloca %struct.mthca_init_hca_param*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_dev_lim* %1, %struct.mthca_dev_lim** %7, align 8
  store %struct.mthca_init_hca_param* %2, %struct.mthca_init_hca_param** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @mthca_SET_ICM_SIZE(%struct.mthca_dev* %12, i64 %13, i64* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %423

22:                                               ; preds = %4
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = lshr i64 %24, 10
  %26 = load i64, i64* %10, align 8
  %27 = shl i64 %26, 2
  %28 = call i32 @mthca_dbg(%struct.mthca_dev* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %27)
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @GFP_HIGHUSER, align 4
  %32 = load i32, i32* @__GFP_NOWARN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mthca_alloc_icm(%struct.mthca_dev* %29, i64 %30, i32 %33, i32 0)
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %22
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %47 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %423

50:                                               ; preds = %22
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mthca_MAP_ICM_AUX(%struct.mthca_dev* %51, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %414

64:                                               ; preds = %50
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %66 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %67 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mthca_map_eq_icm(%struct.mthca_dev* %65, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %74 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %411

75:                                               ; preds = %64
  %76 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = call i32 (...) @dma_get_cache_alignment()
  %86 = call i32 @ALIGN(i32 %84, i32 %85)
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %88 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %86, %90
  %92 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %93 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %96 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %97 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %100 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %104 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %108 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %95, i32 %98, i32 %102, i32 %106, i32 %110, i32 1, i32 0)
  %112 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %113 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %116 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %75
  %121 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %122 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %408

125:                                              ; preds = %75
  %126 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %127 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %128 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %7, align 8
  %131 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %134 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %138 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %126, i32 %129, i32 %132, i32 %136, i32 %140, i32 1, i32 1)
  %142 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %143 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  %145 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %146 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %125
  %151 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %152 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  br label %401

155:                                              ; preds = %125
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %157 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %158 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %7, align 8
  %161 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %164 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %168 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %156, i32 %159, i32 %162, i32 %166, i32 %170, i32 0, i32 0)
  %172 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %173 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i8* %171, i8** %174, align 8
  %175 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %176 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %155
  %181 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %182 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %181, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %11, align 4
  br label %394

185:                                              ; preds = %155
  %186 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %187 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %188 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %7, align 8
  %191 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %194 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %198 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %186, i32 %189, i32 %192, i32 %196, i32 %200, i32 0, i32 0)
  %202 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %203 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  store i8* %201, i8** %204, align 8
  %205 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %206 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %185
  %211 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %212 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %211, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %11, align 4
  br label %387

215:                                              ; preds = %185
  %216 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %217 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %218 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @MTHCA_RDB_ENTRY_SIZE, align 4
  %221 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %222 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %226 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = shl i32 %224, %228
  %230 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %216, i32 %219, i32 %220, i32 %229, i32 0, i32 0, i32 0)
  %231 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %232 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 3
  store i8* %230, i8** %233, align 8
  %234 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %235 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %244, label %239

239:                                              ; preds = %215
  %240 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %241 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %240, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %11, align 4
  br label %380

244:                                              ; preds = %215
  %245 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %246 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %247 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %7, align 8
  %250 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %253 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %257 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %245, i32 %248, i32 %251, i32 %255, i32 %259, i32 0, i32 0)
  %261 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %262 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  store i8* %260, i8** %263, align 8
  %264 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %265 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %274, label %269

269:                                              ; preds = %244
  %270 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %271 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %270, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %272 = load i32, i32* @ENOMEM, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %11, align 4
  br label %373

274:                                              ; preds = %244
  %275 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %276 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %312

281:                                              ; preds = %274
  %282 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %283 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %284 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.mthca_dev_lim*, %struct.mthca_dev_lim** %7, align 8
  %287 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %290 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %294 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 10
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %282, i32 %285, i32 %288, i32 %292, i32 %296, i32 0, i32 0)
  %298 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %299 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  store i8* %297, i8** %300, align 8
  %301 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %302 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %311, label %306

306:                                              ; preds = %281
  %307 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %308 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %307, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %309 = load i32, i32* @ENOMEM, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %11, align 4
  br label %366

311:                                              ; preds = %281
  br label %312

312:                                              ; preds = %311, %274
  %313 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %314 = load %struct.mthca_init_hca_param*, %struct.mthca_init_hca_param** %8, align 8
  %315 = getelementptr inbounds %struct.mthca_init_hca_param, %struct.mthca_init_hca_param* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @MTHCA_MGM_ENTRY_SIZE, align 4
  %318 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %319 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %318, i32 0, i32 7
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 11
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %323 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 12
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %321, %325
  %327 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %328 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 11
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %332 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %330, %334
  %336 = call i8* @mthca_alloc_icm_table(%struct.mthca_dev* %313, i32 %316, i32 %317, i32 %326, i32 %335, i32 0, i32 0)
  %337 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %338 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %337, i32 0, i32 6
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  store i8* %336, i8** %339, align 8
  %340 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %341 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %312
  %346 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %347 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %346, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %348 = load i32, i32* @ENOMEM, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %11, align 4
  br label %351

350:                                              ; preds = %312
  store i32 0, i32* %5, align 4
  br label %423

351:                                              ; preds = %345
  %352 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %353 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %351
  %359 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %360 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %361 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %359, i8* %363)
  br label %365

365:                                              ; preds = %358, %351
  br label %366

366:                                              ; preds = %365, %306
  %367 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %368 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %369 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %367, i8* %371)
  br label %373

373:                                              ; preds = %366, %269
  %374 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %375 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %376 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 3
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %374, i8* %378)
  br label %380

380:                                              ; preds = %373, %239
  %381 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %382 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %383 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %381, i8* %385)
  br label %387

387:                                              ; preds = %380, %210
  %388 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %389 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %390 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %388, i8* %392)
  br label %394

394:                                              ; preds = %387, %180
  %395 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %396 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %397 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %395, i8* %399)
  br label %401

401:                                              ; preds = %394, %150
  %402 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %403 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %404 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %402, i8* %406)
  br label %408

408:                                              ; preds = %401, %120
  %409 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %410 = call i32 @mthca_unmap_eq_icm(%struct.mthca_dev* %409)
  br label %411

411:                                              ; preds = %408, %72
  %412 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %413 = call i32 @mthca_UNMAP_ICM_AUX(%struct.mthca_dev* %412)
  br label %414

414:                                              ; preds = %411, %60
  %415 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %416 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %417 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @mthca_free_icm(%struct.mthca_dev* %415, i32 %420, i32 0)
  %422 = load i32, i32* %11, align 4
  store i32 %422, i32* %5, align 4
  br label %423

423:                                              ; preds = %414, %350, %45, %17
  %424 = load i32, i32* %5, align 4
  ret i32 %424
}

declare dso_local i32 @mthca_SET_ICM_SIZE(%struct.mthca_dev*, i64, i64*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i64, i64) #1

declare dso_local i32 @mthca_alloc_icm(%struct.mthca_dev*, i64, i32, i32) #1

declare dso_local i32 @mthca_MAP_ICM_AUX(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_map_eq_icm(%struct.mthca_dev*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i8* @mthca_alloc_icm_table(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_free_icm_table(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @mthca_unmap_eq_icm(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_ICM_AUX(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
