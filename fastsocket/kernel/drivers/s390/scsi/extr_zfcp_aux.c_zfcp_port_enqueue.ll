; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.zfcp_port = type { i32, i32, i32, %struct.TYPE_10__, i32, i32, i64, %struct.zfcp_adapter*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.zfcp_adapter = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_fc_port_did_lookup = common dso_local global i32 0, align 4
@zfcp_fc_link_test_work = common dso_local global i32 0, align 4
@zfcp_scsi_rport_work = common dso_local global i32 0, align 4
@RPORT_NONE = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1
@zfcp_sysfs_port_release = common dso_local global i32 0, align 4
@zfcp_sysfs_port_attrs = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_port* @zfcp_port_enqueue(%struct.zfcp_adapter* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zfcp_port*, align 8
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zfcp_port*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zfcp_data, i32 0, i32 0))
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zfcp_data, i32 0, i32 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.zfcp_port* @ERR_PTR(i32 %19)
  store %struct.zfcp_port* %20, %struct.zfcp_port** %5, align 8
  br label %143

21:                                               ; preds = %4
  %22 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zfcp_data, i32 0, i32 0))
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.zfcp_port* @kzalloc(i32 80, i32 %23)
  store %struct.zfcp_port* %24, %struct.zfcp_port** %10, align 8
  %25 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %26 = icmp ne %struct.zfcp_port* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.zfcp_port* @ERR_PTR(i32 %29)
  store %struct.zfcp_port* %30, %struct.zfcp_port** %5, align 8
  br label %143

31:                                               ; preds = %21
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 12
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 11
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %39 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %38, i32 0, i32 10
  %40 = load i32, i32* @zfcp_fc_port_did_lookup, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %43 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %42, i32 0, i32 9
  %44 = load i32, i32* @zfcp_fc_link_test_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %47 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %46, i32 0, i32 8
  %48 = load i32, i32* @zfcp_scsi_rport_work, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %51 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %52 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %51, i32 0, i32 7
  store %struct.zfcp_adapter* %50, %struct.zfcp_adapter** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %55 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %58 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %57, i32 0, i32 6
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @RPORT_NONE, align 4
  %60 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %61 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %66 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %65, i32 0, i32 1
  %67 = call i32 @atomic_set_mask(i32 %64, i32* %66)
  %68 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %69 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %68, i32 0, i32 4
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  %71 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %72 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %71, i32 0, i32 3
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @dev_set_name(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %31
  %77 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %78 = call i32 @kfree(%struct.zfcp_port* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.zfcp_port* @ERR_PTR(i32 %80)
  store %struct.zfcp_port* %81, %struct.zfcp_port** %5, align 8
  br label %143

82:                                               ; preds = %31
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %88 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32* %86, i32** %89, align 8
  %90 = load i32, i32* @zfcp_sysfs_port_release, align 4
  %91 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %92 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %95 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %94, i32 0, i32 3
  %96 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %97 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %95, %struct.zfcp_port* %96)
  %98 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %99 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %98, i32 0, i32 3
  %100 = call i64 @device_register(%struct.TYPE_10__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %82
  %103 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %104 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %103, i32 0, i32 3
  %105 = call i32 @put_device(%struct.TYPE_10__* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.zfcp_port* @ERR_PTR(i32 %107)
  store %struct.zfcp_port* %108, %struct.zfcp_port** %5, align 8
  br label %143

109:                                              ; preds = %82
  %110 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %111 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = call i64 @sysfs_create_group(i32* %112, i32* @zfcp_sysfs_port_attrs)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %117 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %116, i32 0, i32 3
  %118 = call i32 @device_unregister(%struct.TYPE_10__* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  %121 = call %struct.zfcp_port* @ERR_PTR(i32 %120)
  store %struct.zfcp_port* %121, %struct.zfcp_port** %5, align 8
  br label %143

122:                                              ; preds = %109
  %123 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %124 = call i32 @zfcp_port_get(%struct.zfcp_port* %123)
  %125 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zfcp_data, i32 0, i32 0))
  %126 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %127 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %126, i32 0, i32 2
  %128 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %128, i32 0, i32 0
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %132 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %133 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %132, i32 0, i32 1
  %134 = call i32 @atomic_clear_mask(i32 %131, i32* %133)
  %135 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %136 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %137 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %136, i32 0, i32 1
  %138 = call i32 @atomic_set_mask(i32 %135, i32* %137)
  %139 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zfcp_data, i32 0, i32 0))
  %140 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %141 = call i32 @zfcp_adapter_get(%struct.zfcp_adapter* %140)
  %142 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %142, %struct.zfcp_port** %5, align 8
  br label %143

143:                                              ; preds = %122, %115, %102, %76, %27, %16
  %144 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  ret %struct.zfcp_port* %144
}

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i64 @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i64) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

declare dso_local %struct.zfcp_port* @ERR_PTR(i32) #1

declare dso_local %struct.zfcp_port* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @dev_set_name(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.zfcp_port*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.zfcp_port*) #1

declare dso_local i64 @device_register(%struct.TYPE_10__*) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_adapter_get(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
