; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_port_remove_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_port_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32, i32, i32 }

@port_remove_lh = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syprs_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_port_remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_port_remove_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.zfcp_adapter*, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.zfcp_adapter* @dev_get_drvdata(%struct.device* %13)
  store %struct.zfcp_adapter* %14, %struct.zfcp_adapter** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @port_remove_lh, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i32* %11 to i64*
  %30 = call i64 @strict_strtoull(i8* %28, i32 0, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %74

35:                                               ; preds = %27
  %36 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 1))
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %37, i32 %38)
  store %struct.zfcp_port* %39, %struct.zfcp_port** %10, align 8
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %41 = icmp ne %struct.zfcp_port* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %44 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %43, i32 0, i32 2
  %45 = call i32 @atomic_read(i32* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %49 = call i32 @zfcp_port_get(%struct.zfcp_port* %48)
  %50 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %51 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %52 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %51, i32 0, i32 1
  %53 = call i32 @atomic_set_mask(i32 %50, i32* %52)
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %55 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %54, i32 0, i32 0
  %56 = call i32 @list_move(i32* %55, i32* @port_remove_lh)
  br label %58

57:                                               ; preds = %42, %35
  store %struct.zfcp_port* null, %struct.zfcp_port** %10, align 8
  br label %58

58:                                               ; preds = %57, %47
  %59 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 1))
  %60 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %61 = icmp ne %struct.zfcp_port* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %74

65:                                               ; preds = %58
  %66 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %67 = call i32 @zfcp_erp_port_shutdown(%struct.zfcp_port* %66, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %68 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %69 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %68)
  %70 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %71 = call i32 @zfcp_port_put(%struct.zfcp_port* %70)
  %72 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %73 = call i32 @zfcp_port_dequeue(%struct.zfcp_port* %72)
  br label %74

74:                                               ; preds = %65, %62, %32, %24
  %75 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i32 [ %79, %78 ], [ %82, %80 ]
  ret i32 %84
}

declare dso_local %struct.zfcp_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @strict_strtoull(i8*, i32, i64*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_port_shutdown(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_port_dequeue(%struct.zfcp_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
