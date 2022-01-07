; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_guid_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_set_guid_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.ib_sa_guidinfo_rec = type { i32, i32, i32 }
%struct.ib_port_attr = type { i64, i32 }
%struct.mlx4_alias_guid_work_context = type { i32, i32, i64, i32, i32, i32, %struct.mlx4_ib_dev* }

@.str = private unnamed_addr constant [47 x i8] c"mlx4_ib_query_port failed (err: %d), port: %d\0A\00", align 1
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"port %d not active...rescheduling\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GUID_REC_SIZE = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_IN_REC = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_LID = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_BLOCK_NUM = common dso_local global i32 0, align 4
@aliasguid_query_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"ib_sa_guid_info_rec_query failed, query_id: %d. will reschedule to the next 1 sec.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.mlx4_sriov_alias_guid_info_rec_det*)* @set_guid_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_guid_rec(%struct.ib_device* %0, i32 %1, i32 %2, %struct.mlx4_sriov_alias_guid_info_rec_det* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_sriov_alias_guid_info_rec_det*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_dev*, align 8
  %12 = alloca %struct.ib_sa_guidinfo_rec, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_port_attr, align 8
  %15 = alloca %struct.mlx4_alias_guid_work_context*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.list_head*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_sriov_alias_guid_info_rec_det* %3, %struct.mlx4_sriov_alias_guid_info_rec_det** %9, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %20)
  store %struct.mlx4_ib_dev* %21, %struct.mlx4_ib_dev** %11, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store %struct.list_head* %31, %struct.list_head** %19, align 8
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @__mlx4_ib_query_port(%struct.ib_device* %32, i32 %33, %struct.ib_port_attr* %14, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %229

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %14, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 5, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %16, align 8
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %170

55:                                               ; preds = %42
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.mlx4_alias_guid_work_context* @kmalloc(i32 40, i32 %56)
  store %struct.mlx4_alias_guid_work_context* %57, %struct.mlx4_alias_guid_work_context** %15, align 8
  %58 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %59 = icmp ne %struct.mlx4_alias_guid_work_context* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 %63, 5
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %16, align 8
  br label %170

66:                                               ; preds = %55
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %69 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %71 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %72 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %71, i32 0, i32 6
  store %struct.mlx4_ib_dev* %70, %struct.mlx4_ib_dev** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %75 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = call i32 @memset(%struct.ib_sa_guidinfo_rec* %12, i32 0, i32 12)
  %77 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %14, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cpu_to_be16(i32 %78)
  %80 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %12, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %12, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %12, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %9, align 8
  %86 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GUID_REC_SIZE, align 4
  %89 = load i32, i32* @NUM_ALIAS_GUID_IN_REC, align 4
  %90 = mul nsw i32 %88, %89
  %91 = call i32 @memcpy(i32 %84, i32 %87, i32 %90)
  %92 = load i32, i32* @IB_SA_GUIDINFO_REC_LID, align 4
  %93 = load i32, i32* @IB_SA_GUIDINFO_REC_BLOCK_NUM, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %100 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %99, i32 0, i32 5
  %101 = call i32 @init_completion(i32* %100)
  %102 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %109 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %108, i32 0, i32 3
  %110 = load %struct.list_head*, %struct.list_head** %19, align 8
  %111 = call i32 @list_add_tail(i32* %109, %struct.list_head* %110)
  %112 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %18, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = load i32, i32* @aliasguid_query_handler, align 4
  %131 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %132 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %133 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %132, i32 0, i32 4
  %134 = call i64 @ib_sa_guid_info_rec_query(i32 %122, %struct.ib_device* %123, i32 %124, %struct.ib_sa_guidinfo_rec* %12, i32 %125, i32 %128, i32 1000, i32 %129, i32 %130, %struct.mlx4_alias_guid_work_context* %131, i32* %133)
  %135 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %136 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %138 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %66
  %142 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %143 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %148 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i64, i64* %18, align 8
  %152 = call i32 @spin_lock_irqsave(i32* %150, i64 %151)
  %153 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %154 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %153, i32 0, i32 3
  %155 = call i32 @list_del(i32* %154)
  %156 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %15, align 8
  %157 = call i32 @kfree(%struct.mlx4_alias_guid_work_context* %156)
  %158 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %159 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %18, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load i32, i32* @HZ, align 4
  %165 = mul nsw i32 1, %164
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %16, align 8
  %167 = load i32, i32* @EAGAIN, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %170

169:                                              ; preds = %66
  store i32 0, i32* %10, align 4
  br label %227

170:                                              ; preds = %141, %60, %47
  %171 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %17, align 8
  %175 = call i32 @spin_lock_irqsave(i32* %173, i64 %174)
  %176 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i64, i64* %18, align 8
  %181 = call i32 @spin_lock_irqsave(i32* %179, i64 %180)
  %182 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %182, i32 %183, i32 %184)
  %186 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %215, label %191

191:                                              ; preds = %170
  %192 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %204 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %16, align 8
  %214 = call i32 @queue_delayed_work(i32 %202, i32* %212, i64 %213)
  br label %215

215:                                              ; preds = %191, %170
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i64, i64* %18, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32* %219, i64 %220)
  %222 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %223 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %17, align 8
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i64 %225)
  br label %227

227:                                              ; preds = %215, %169
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %37
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @__mlx4_ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.mlx4_alias_guid_work_context* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_sa_guidinfo_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_sa_guid_info_rec_query(i32, %struct.ib_device*, i32, %struct.ib_sa_guidinfo_rec*, i32, i32, i32, i32, i32, %struct.mlx4_alias_guid_work_context*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_alias_guid_work_context*) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
