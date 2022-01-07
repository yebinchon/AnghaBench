; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_unit_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_unit_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.zfcp_unit = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_17__, i64, %struct.zfcp_port*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_28__, %struct.TYPE_25__, %struct.TYPE_22__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.zfcp_port = type { i32, i32 }

@zfcp_data = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_scsi_scan_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1
@zfcp_sysfs_unit_release = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@zfcp_sysfs_unit_attrs = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_unit* @zfcp_unit_enqueue(%struct.zfcp_port* %0, i64 %1) #0 {
  %3 = alloca %struct.zfcp_unit*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @zfcp_data, i32 0, i32 0))
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @zfcp_get_unit_by_lun(%struct.zfcp_port* %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @zfcp_data, i32 0, i32 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.zfcp_unit* @ERR_PTR(i32 %15)
  store %struct.zfcp_unit* %16, %struct.zfcp_unit** %3, align 8
  br label %152

17:                                               ; preds = %2
  %18 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @zfcp_data, i32 0, i32 0))
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.zfcp_unit* @kzalloc(i32 88, i32 %19)
  store %struct.zfcp_unit* %20, %struct.zfcp_unit** %6, align 8
  %21 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %22 = icmp ne %struct.zfcp_unit* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.zfcp_unit* @ERR_PTR(i32 %25)
  store %struct.zfcp_unit* %26, %struct.zfcp_unit** %3, align 8
  br label %152

27:                                               ; preds = %17
  %28 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %29 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %28, i32 0, i32 8
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %32 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %31, i32 0, i32 7
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %34, i32 0, i32 6
  %36 = load i32, i32* @zfcp_scsi_scan_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %39 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %40 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %39, i32 0, i32 5
  store %struct.zfcp_port* %38, %struct.zfcp_port** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %43 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %44, i32 0, i32 2
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @dev_set_name(%struct.TYPE_19__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %27
  %50 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %51 = call i32 @kfree(%struct.zfcp_unit* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.zfcp_unit* @ERR_PTR(i32 %53)
  store %struct.zfcp_unit* %54, %struct.zfcp_unit** %3, align 8
  br label %152

55:                                               ; preds = %27
  %56 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %56, i32 0, i32 1
  %58 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %59 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* @zfcp_sysfs_unit_release, align 4
  %62 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %63 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %66 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %65, i32 0, i32 2
  %67 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %68 = call i32 @dev_set_drvdata(%struct.TYPE_19__* %66, %struct.zfcp_unit* %67)
  %69 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %70 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %71 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %70, i32 0, i32 0
  %72 = call i32 @atomic_set_mask(i32 %69, i32* %71)
  %73 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %78 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 4
  %82 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %83 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  %87 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %88 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 4
  %92 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %93 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %98 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 4
  %102 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %103 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %108 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %107, i32 0, i32 2
  %109 = call i64 @device_register(%struct.TYPE_19__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %55
  %112 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %113 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %112, i32 0, i32 2
  %114 = call i32 @put_device(%struct.TYPE_19__* %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.zfcp_unit* @ERR_PTR(i32 %116)
  store %struct.zfcp_unit* %117, %struct.zfcp_unit** %3, align 8
  br label %152

118:                                              ; preds = %55
  %119 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %120 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = call i64 @sysfs_create_group(i32* %121, i32* @zfcp_sysfs_unit_attrs)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %126 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %125, i32 0, i32 2
  %127 = call i32 @device_unregister(%struct.TYPE_19__* %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  %130 = call %struct.zfcp_unit* @ERR_PTR(i32 %129)
  store %struct.zfcp_unit* %130, %struct.zfcp_unit** %3, align 8
  br label %152

131:                                              ; preds = %118
  %132 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %133 = call i32 @zfcp_unit_get(%struct.zfcp_unit* %132)
  %134 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @zfcp_data, i32 0, i32 0))
  %135 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %136 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %135, i32 0, i32 1
  %137 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %138 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %137, i32 0, i32 0
  %139 = call i32 @list_add_tail(i32* %136, i32* %138)
  %140 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %141 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %142 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %141, i32 0, i32 0
  %143 = call i32 @atomic_clear_mask(i32 %140, i32* %142)
  %144 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %145 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %146 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %145, i32 0, i32 0
  %147 = call i32 @atomic_set_mask(i32 %144, i32* %146)
  %148 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @zfcp_data, i32 0, i32 0))
  %149 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %150 = call i32 @zfcp_port_get(%struct.zfcp_port* %149)
  %151 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  store %struct.zfcp_unit* %151, %struct.zfcp_unit** %3, align 8
  br label %152

152:                                              ; preds = %131, %124, %111, %49, %23, %12
  %153 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  ret %struct.zfcp_unit* %153
}

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i64 @zfcp_get_unit_by_lun(%struct.zfcp_port*, i64) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

declare dso_local %struct.zfcp_unit* @ERR_PTR(i32) #1

declare dso_local %struct.zfcp_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @dev_set_name(%struct.TYPE_19__*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.zfcp_unit*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_19__*, %struct.zfcp_unit*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @device_register(%struct.TYPE_19__*) #1

declare dso_local i32 @put_device(%struct.TYPE_19__*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_19__*) #1

declare dso_local i32 @zfcp_unit_get(%struct.zfcp_unit*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
