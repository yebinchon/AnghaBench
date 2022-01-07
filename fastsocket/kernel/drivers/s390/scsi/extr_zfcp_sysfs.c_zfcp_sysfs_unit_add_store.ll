; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_unit_add_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_unit_add_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_unit = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syuas_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_unit_add_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_unit_add_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca %struct.zfcp_unit*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.zfcp_port* @dev_get_drvdata(%struct.device* %13)
  store %struct.zfcp_port* %14, %struct.zfcp_port** %10, align 8
  %15 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0))
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i32* %12 to i64*
  %29 = call i64 @strict_strtoull(i8* %27, i32 0, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %26
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.zfcp_unit* @zfcp_unit_enqueue(%struct.zfcp_port* %36, i32 %37)
  store %struct.zfcp_unit* %38, %struct.zfcp_unit** %11, align 8
  %39 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0))
  %40 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %41 = call i64 @IS_ERR(%struct.zfcp_unit* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %61

46:                                               ; preds = %35
  %47 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %48 = call i32 @zfcp_erp_unit_reopen(%struct.zfcp_unit* %47, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %49 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %50 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zfcp_erp_wait(i32 %53)
  %55 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %56 = call i32 @zfcp_scsi_scan(%struct.zfcp_unit* %55)
  %57 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %58 = call i32 @zfcp_unit_put(%struct.zfcp_unit* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %46, %43, %31, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.zfcp_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @strict_strtoull(i8*, i32, i64*) #1

declare dso_local %struct.zfcp_unit* @zfcp_unit_enqueue(%struct.zfcp_port*, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_erp_unit_reopen(%struct.zfcp_unit*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(i32) #1

declare dso_local i32 @zfcp_scsi_scan(%struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_unit_put(%struct.zfcp_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
