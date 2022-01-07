; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_slave_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_slave_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_func_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"QUERY_HCA command failed, aborting.\0A\00", align 1
@HCA_GLOBAL_CAP_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown hca global capabilities\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@mlx4_log_num_mgm_entry_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"QUERY_DEV_CAP command failed, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"QUERY_FW command failed: could not get FW version.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"HCA minimum page size:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [76 x i8] c"HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"UAR size:%d != kernel PAGE_SIZE of %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"QUERY_FUNC_CAP general command failed, aborting (%d).\0A\00", align 1
@PF_CONTEXT_BEHAVIOUR_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Unknown pf context behaviour\0A\00", align 1
@MLX4_NUM_PDS = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"HCA has %d ports, but we only support %d, aborting.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [64 x i8] c"QUERY_FUNC_CAP port command failed for port %d, aborting (%d).\0A\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"HCA reported UAR region size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting.\0A\00", align 1
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_USER_DEV_CAP_64B_CQE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"Timestamping is not supported in slave mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_slave_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_slave_cap(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_dev_cap, align 4
  %7 = alloca %struct.mlx4_func_cap, align 4
  %8 = alloca %struct.mlx4_init_hca_param, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %10 = call i32 @memset(%struct.mlx4_init_hca_param* %8, i32 0, i32 76)
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %11, %struct.mlx4_init_hca_param* %8)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %494

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HCA_GLOBAL_CAP_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HCA_GLOBAL_CAP_MASK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %494

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 18
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @mlx4_log_num_mgm_entry_size, align 4
  %34 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 29
  store i32 %35, i32* %38, align 8
  %39 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %40 = call i32 @memset(%struct.mlx4_init_hca_param* %39, i32 0, i32 76)
  %41 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %48 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %49 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %47, %struct.mlx4_init_hca_param* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %54 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %494

56:                                               ; preds = %31
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %58 = call i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %5, align 8
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %64
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %79, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %494

85:                                               ; preds = %64
  %86 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 12
  %89 = shl i32 1, %88
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %85
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %105, i64 %106)
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %494

110:                                              ; preds = %85
  %111 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %112 = call i32 @memset(%struct.mlx4_init_hca_param* %111, i32 0, i32 76)
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %114 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %115 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %113, i64 0, %struct.mlx4_init_hca_param* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %119, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %494

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PF_CONTEXT_BEHAVIOUR_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @PF_CONTEXT_BEHAVIOUR_MASK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %132 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %133 = load i32, i32* @ENOSYS, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %494

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 16
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %144 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 28
  store i32 %142, i32* %145, align 4
  %146 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %149 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 27
  store i32 %147, i32* %150, align 8
  %151 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 14
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %154 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 26
  store i32 %152, i32* %155, align 4
  %156 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %159 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 25
  store i32 %157, i32* %160, align 8
  %161 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %164 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 24
  store i32 %162, i32* %165, align 4
  %166 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 23
  store i32 %167, i32* %170, align 8
  %171 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 22
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @MLX4_NUM_PDS, align 4
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 21
  store i32 %176, i32* %179, align 8
  %180 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 20
  store i64 0, i64* %182, align 8
  %183 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %184 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 19
  store i64 0, i64* %185, align 8
  %186 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %187 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %135
  %194 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %195 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %200 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %194, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %198, i64 %199)
  %201 = load i32, i32* @ENODEV, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %494

203:                                              ; preds = %135
  %204 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %205 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @GFP_KERNEL, align 4
  %209 = call i8* @kcalloc(i32 %207, i32 8, i32 %208)
  %210 = bitcast i8* %209 to i32*
  %211 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %212 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 12
  store i32* %210, i32** %213, align 8
  %214 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %215 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = call i8* @kcalloc(i32 %217, i32 8, i32 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 11
  store i32* %220, i32** %223, align 8
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %225 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @GFP_KERNEL, align 4
  %229 = call i8* @kcalloc(i32 %227, i32 8, i32 %228)
  %230 = bitcast i8* %229 to i32*
  %231 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %232 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 10
  store i32* %230, i32** %233, align 8
  %234 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %235 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @kcalloc(i32 %237, i32 8, i32 %238)
  %240 = bitcast i8* %239 to i32*
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %242 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 9
  store i32* %240, i32** %243, align 8
  %244 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 12
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %267

249:                                              ; preds = %203
  %250 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %251 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 11
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %267

255:                                              ; preds = %249
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 10
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 9
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %261, %255, %249, %203
  %268 = load i32, i32* @ENOMEM, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %4, align 4
  br label %460

270:                                              ; preds = %261
  store i32 1, i32* %9, align 4
  br label %271

271:                                              ; preds = %367, %270
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp sle i32 %272, %276
  br i1 %277, label %278, label %370

278:                                              ; preds = %271
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = bitcast %struct.mlx4_func_cap* %7 to %struct.mlx4_init_hca_param*
  %283 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %279, i64 %281, %struct.mlx4_init_hca_param* %282)
  store i32 %283, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %4, align 4
  %290 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %287, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %288, i32 %289)
  br label %460

291:                                              ; preds = %278
  %292 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 9
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %295 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 12
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32 %293, i32* %301, align 4
  %302 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %305 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 11
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %303, i32* %311, align 4
  %312 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 7
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %315 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 10
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %313, i32* %321, align 4
  %322 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %7, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %325 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 9
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sub nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %327, i64 %330
  store i32 %323, i32* %331, align 4
  %332 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %333 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 17
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %341 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 18
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %339, i32* %346, align 4
  %347 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %348 = load i32, i32* %9, align 4
  %349 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %350 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 16
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %357 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 15
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = call i64 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev* %347, i32 %348, i32* %355, i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %291
  br label %460

366:                                              ; preds = %291
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %9, align 4
  br label %271

370:                                              ; preds = %271
  %371 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %372 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %376 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %380 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %378, %382
  %384 = mul nsw i32 %374, %383
  %385 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %386 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @pci_resource_len(i32 %387, i32 2)
  %389 = icmp sgt i32 %384, %388
  br i1 %389, label %390, label %407

390:                                              ; preds = %370
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %392 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %393 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %397 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = mul nsw i32 %395, %399
  %401 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %402 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @pci_resource_len(i32 %403, i32 2)
  %405 = sext i32 %404 to i64
  %406 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %391, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.11, i64 0, i64 0), i32 %400, i64 %405)
  br label %460

407:                                              ; preds = %370
  %408 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %407
  %414 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %415 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 6
  store i32 64, i32* %416, align 8
  %417 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %418 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 7
  store i32 1, i32* %419, align 4
  br label %427

420:                                              ; preds = %407
  %421 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %422 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 6
  store i32 32, i32* %423, align 8
  %424 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %425 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 7
  store i32 0, i32* %426, align 4
  br label %427

427:                                              ; preds = %420, %413
  %428 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %8, i32 0, i32 5
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %443

433:                                              ; preds = %427
  %434 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %435 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 8
  store i32 64, i32* %436, align 8
  %437 = load i32, i32* @MLX4_USER_DEV_CAP_64B_CQE, align 4
  %438 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %439 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 14
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %441, %437
  store i32 %442, i32* %440, align 4
  br label %447

443:                                              ; preds = %427
  %444 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %445 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %445, i32 0, i32 8
  store i32 32, i32* %446, align 8
  br label %447

447:                                              ; preds = %443, %433
  %448 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %449 = xor i32 %448, -1
  %450 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %451 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 13
  %453 = load i32, i32* %452, align 8
  %454 = and i32 %453, %449
  store i32 %454, i32* %452, align 8
  %455 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %456 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %455, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %457 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %458 = bitcast %struct.mlx4_dev_cap* %6 to %struct.mlx4_init_hca_param*
  %459 = call i32 @slave_adjust_steering_mode(%struct.mlx4_dev* %457, %struct.mlx4_init_hca_param* %458, %struct.mlx4_init_hca_param* %8)
  store i32 0, i32* %2, align 4
  br label %494

460:                                              ; preds = %390, %365, %286, %267
  %461 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %462 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i32 0, i32 12
  %464 = load i32*, i32** %463, align 8
  %465 = call i32 @kfree(i32* %464)
  %466 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %467 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 11
  %469 = load i32*, i32** %468, align 8
  %470 = call i32 @kfree(i32* %469)
  %471 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %472 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %472, i32 0, i32 10
  %474 = load i32*, i32** %473, align 8
  %475 = call i32 @kfree(i32* %474)
  %476 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %477 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 9
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @kfree(i32* %479)
  %481 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %482 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i32 0, i32 9
  store i32* null, i32** %483, align 8
  %484 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %485 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 10
  store i32* null, i32** %486, align 8
  %487 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %488 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 11
  store i32* null, i32** %489, align 8
  %490 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %491 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 12
  store i32* null, i32** %492, align 8
  %493 = load i32, i32* %4, align 4
  store i32 %493, i32* %2, align 4
  br label %494

494:                                              ; preds = %460, %447, %193, %130, %118, %100, %78, %52, %26, %15
  %495 = load i32, i32* %2, align 4
  ret i32 %495
}

declare dso_local i32 @memset(%struct.mlx4_init_hca_param*, i32, i32) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev*, i64, %struct.mlx4_init_hca_param*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev*, i32, i32*, i32*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @slave_adjust_steering_mode(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
