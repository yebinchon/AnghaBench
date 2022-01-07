; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_icm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_13__, %struct.TYPE_17__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"SET_ICM_SIZE command failed, aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%lld KB of HCA context requires %lld KB aux memory.\0A\00", align 1
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Couldn't allocate aux memory, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"MAP_ICM_AUX command failed, aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to map cMPT context memory, aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to map EQ context memory, aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to map MTT context memory, aborting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Failed to map dMPT context memory, aborting.\0A\00", align 1
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"Failed to map QP context memory, aborting.\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Failed to map AUXC context memory, aborting.\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to map ALTC context memory, aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Failed to map RDMARC context memory, aborting\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Failed to map CQ context memory, aborting.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Failed to map SRQ context memory, aborting.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Failed to map MCG context memory, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_dev_cap*, %struct.mlx4_init_hca_param*, i64)* @mlx4_init_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_icm(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1, %struct.mlx4_init_hca_param* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_dev_cap*, align 8
  %8 = alloca %struct.mlx4_init_hca_param*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %7, align 8
  store %struct.mlx4_init_hca_param* %2, %struct.mlx4_init_hca_param** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @mlx4_SET_ICM_SIZE(%struct.mlx4_dev* %16, i64 %17, i64* %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %23 = call i32 @mlx4_err(%struct.mlx4_dev* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %469

25:                                               ; preds = %4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = lshr i64 %27, 10
  %29 = load i64, i64* %11, align 8
  %30 = shl i64 %29, 2
  %31 = call i32 @mlx4_dbg(%struct.mlx4_dev* %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %30)
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @GFP_HIGHUSER, align 4
  %35 = load i32, i32* @__GFP_NOWARN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mlx4_alloc_icm(%struct.mlx4_dev* %32, i64 %33, i32 %36, i32 0)
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %25
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %48 = call i32 @mlx4_err(%struct.mlx4_dev* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %469

51:                                               ; preds = %25
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %53 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx4_MAP_ICM_AUX(%struct.mlx4_dev* %52, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %62 = call i32 @mlx4_err(%struct.mlx4_dev* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %461

63:                                               ; preds = %51
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %65 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mlx4_init_cmpt_table(%struct.mlx4_dev* %64, i32 %67, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %76 = call i32 @mlx4_err(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %458

77:                                               ; preds = %63
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %79 = call i64 @mlx4_is_master(%struct.mlx4_dev* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i32 [ %85, %81 ], [ %90, %86 ]
  store i32 %92, i32* %12, align 4
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %94 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %95 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %98 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %101 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %93, i32* %96, i32 %99, i32 %102, i32 %103, i32 %104, i32 0, i32 0)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %110 = call i32 @mlx4_err(%struct.mlx4_dev* %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %437

111:                                              ; preds = %91
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %113 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %117 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %115, %119
  %121 = call i32 (...) @dma_get_cache_alignment()
  %122 = call i32 @ALIGN(i32 %120, i32 %121)
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %124 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %122, %126
  %128 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %129 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %132 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %133 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %136 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %139 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %143 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %131, i32* %134, i32 %137, i32 %141, i32 %145, i32 %149, i32 1, i32 0)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %111
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %155 = call i32 @mlx4_err(%struct.mlx4_dev* %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %431

156:                                              ; preds = %111
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %158 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %159 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %162 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %165 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %168 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %172 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %157, i32* %160, i32 %163, i32 %166, i32 %170, i32 %174, i32 1, i32 1)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %156
  %179 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %180 = call i32 @mlx4_err(%struct.mlx4_dev* %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %425

181:                                              ; preds = %156
  %182 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %183 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %184 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  %186 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %190 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %193 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %197 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %182, i32* %185, i32 %188, i32 %191, i32 %195, i32 %202, i32 0, i32 0)
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %181
  %207 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %208 = call i32 @mlx4_err(%struct.mlx4_dev* %207, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %419

209:                                              ; preds = %181
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %211 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %212 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %215 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %218 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %221 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %225 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 7
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %210, i32* %213, i32 %216, i32 %219, i32 %223, i32 %230, i32 0, i32 0)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %209
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %236 = call i32 @mlx4_err(%struct.mlx4_dev* %235, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %413

237:                                              ; preds = %209
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %239 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %240 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 4
  %242 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %243 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %246 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %249 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %253 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %238, i32* %241, i32 %244, i32 %247, i32 %251, i32 %258, i32 0, i32 0)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %237
  %263 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %264 = call i32 @mlx4_err(%struct.mlx4_dev* %263, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %407

265:                                              ; preds = %237
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %267 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %268 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 5
  %270 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %271 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %277 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %275, %279
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %282 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %286 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 7
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %266, i32* %269, i32 %272, i32 %280, i32 %284, i32 %291, i32 0, i32 0)
  store i32 %292, i32* %13, align 4
  %293 = load i32, i32* %13, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %265
  %296 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %297 = call i32 @mlx4_err(%struct.mlx4_dev* %296, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %401

298:                                              ; preds = %265
  %299 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %300 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %301 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  %303 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %304 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %307 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %310 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %314 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %299, i32* %302, i32 %305, i32 %308, i32 %312, i32 %316, i32 0, i32 0)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %298
  %321 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %322 = call i32 @mlx4_err(%struct.mlx4_dev* %321, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %395

323:                                              ; preds = %298
  %324 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %325 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %326 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  %328 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %329 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %7, align 8
  %332 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %331, i32 0, i32 7
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %339 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 11
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %324, i32* %327, i32 %330, i32 %333, i32 %337, i32 %341, i32 0, i32 0)
  store i32 %342, i32* %13, align 4
  %343 = load i32, i32* %13, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %323
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %347 = call i32 @mlx4_err(%struct.mlx4_dev* %346, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %389

348:                                              ; preds = %323
  %349 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %350 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %351 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %350, i32 0, i32 6
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %8, align 8
  %354 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %357 = call i32 @mlx4_get_mgm_entry_size(%struct.mlx4_dev* %356)
  %358 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %359 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 12
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %363 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 13
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %361, %365
  %367 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %368 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 12
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %372 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 13
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %370, %374
  %376 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %349, i32* %352, i32 %355, i32 %357, i32 %366, i32 %375, i32 0, i32 0)
  store i32 %376, i32* %13, align 4
  %377 = load i32, i32* %13, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %348
  %380 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %381 = call i32 @mlx4_err(%struct.mlx4_dev* %380, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %383

382:                                              ; preds = %348
  store i32 0, i32* %5, align 4
  br label %469

383:                                              ; preds = %379
  %384 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %385 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %386 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  %388 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %384, i32* %387)
  br label %389

389:                                              ; preds = %383, %345
  %390 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %391 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %392 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 1
  %394 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %390, i32* %393)
  br label %395

395:                                              ; preds = %389, %320
  %396 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %397 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %398 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 5
  %400 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %396, i32* %399)
  br label %401

401:                                              ; preds = %395, %295
  %402 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %403 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %404 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 4
  %406 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %402, i32* %405)
  br label %407

407:                                              ; preds = %401, %262
  %408 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %409 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %410 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 3
  %412 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %408, i32* %411)
  br label %413

413:                                              ; preds = %407, %234
  %414 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %415 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %416 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 2
  %418 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %414, i32* %417)
  br label %419

419:                                              ; preds = %413, %206
  %420 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %421 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %422 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 1
  %424 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %420, i32* %423)
  br label %425

425:                                              ; preds = %419, %178
  %426 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %427 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %428 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 0
  %430 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %426, i32* %429)
  br label %431

431:                                              ; preds = %425, %153
  %432 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %433 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %434 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %433, i32 0, i32 4
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 1
  %436 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %432, i32* %435)
  br label %437

437:                                              ; preds = %431, %108
  %438 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %439 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %440 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %439, i32 0, i32 4
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 0
  %442 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %438, i32* %441)
  %443 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %444 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %445 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %444, i32 0, i32 3
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %443, i32* %446)
  %448 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %449 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %450 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 0
  %452 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %448, i32* %451)
  %453 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %454 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %455 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i32 0, i32 1
  %457 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %453, i32* %456)
  br label %458

458:                                              ; preds = %437, %74
  %459 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %460 = call i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev* %459)
  br label %461

461:                                              ; preds = %458, %60
  %462 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %463 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %464 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %462, i32 %466, i32 0)
  %468 = load i32, i32* %13, align 4
  store i32 %468, i32* %5, align 4
  br label %469

469:                                              ; preds = %461, %382, %46, %21
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_SET_ICM_SIZE(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64, i64) #1

declare dso_local i32 @mlx4_alloc_icm(%struct.mlx4_dev*, i64, i32, i32) #1

declare dso_local i32 @mlx4_MAP_ICM_AUX(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_init_cmpt_table(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_icm_table(%struct.mlx4_dev*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @mlx4_get_mgm_entry_size(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_UNMAP_ICM_AUX(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
