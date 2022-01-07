; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.zfcp_adapter = type { i32, %struct.zfcp_adapter*, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, %struct.ccw_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_fc_post_event = common dso_local global i32 0, align 4
@_zfcp_status_read_scheduler = common dso_local global i32 0, align 4
@zfcp_fc_scan_ports = common dso_local global i32 0, align 4
@zfcp_print_sl = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@zfcp_sysfs_adapter_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_adapter_enqueue(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.zfcp_adapter* @kzalloc(i32 96, i32 %5)
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %4, align 8
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %8 = icmp ne %struct.zfcp_adapter* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %166

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 18
  store %struct.ccw_device* %15, %struct.ccw_device** %17, align 8
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 17
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %22 = call i64 @zfcp_qdio_setup(%struct.zfcp_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %157

25:                                               ; preds = %12
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = call i64 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %154

30:                                               ; preds = %25
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %32 = call i64 @zfcp_reqlist_alloc(%struct.zfcp_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %154

35:                                               ; preds = %30
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %37 = call i64 @zfcp_dbf_adapter_register(%struct.zfcp_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %146

40:                                               ; preds = %35
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %42 = call i64 @zfcp_setup_adapter_work_queue(%struct.zfcp_adapter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %141

45:                                               ; preds = %40
  %46 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %47 = call i64 @zfcp_fc_gs_setup(%struct.zfcp_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %138

50:                                               ; preds = %45
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 16
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %54, i32 0, i32 15
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 14
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 13
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %63, i32 0, i32 12
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %66, i32 0, i32 11
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* @zfcp_fc_post_event, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %82, i32 0, i32 9
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %85, i32 0, i32 8
  %87 = call i32 @rwlock_init(i32* %86)
  %88 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %88, i32 0, i32 7
  %90 = call i32 @rwlock_init(i32* %89)
  %91 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %92 = call i64 @zfcp_erp_thread_setup(%struct.zfcp_adapter* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %50
  br label %135

95:                                               ; preds = %50
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %96, i32 0, i32 6
  %98 = load i32, i32* @_zfcp_status_read_scheduler, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %100, i32 0, i32 5
  %102 = load i32, i32* @zfcp_fc_scan_ports, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load i32, i32* @zfcp_print_sl, align 4
  %105 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %109 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %109, i32 0, i32 3
  %111 = call i32 @atomic_set_mask(i32 %108, i32* %110)
  %112 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %113 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %112, i32 0, i32 0
  %114 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %115 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %113, %struct.zfcp_adapter* %114)
  %116 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %117 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i64 @sysfs_create_group(i32* %118, i32* @zfcp_sysfs_adapter_attrs)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %95
  br label %132

122:                                              ; preds = %95
  %123 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %124 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %124, i32 0, i32 3
  %126 = call i32 @atomic_clear_mask(i32 %123, i32* %125)
  %127 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %128 = call i32 @zfcp_adapter_scsi_register(%struct.zfcp_adapter* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %166

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %121
  %133 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %134 = call i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter* %133)
  br label %135

135:                                              ; preds = %132, %94
  %136 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %137 = call i32 @zfcp_fc_gs_destroy(%struct.zfcp_adapter* %136)
  br label %138

138:                                              ; preds = %135, %49
  %139 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %140 = call i32 @zfcp_destroy_adapter_work_queue(%struct.zfcp_adapter* %139)
  br label %141

141:                                              ; preds = %138, %44
  %142 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %143 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @zfcp_dbf_adapter_unregister(i32 %144)
  br label %146

146:                                              ; preds = %141, %39
  %147 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %148 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %147, i32 0, i32 0
  %149 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %148, %struct.zfcp_adapter* null)
  %150 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %150, i32 0, i32 1
  %152 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %151, align 8
  %153 = call i32 @kfree(%struct.zfcp_adapter* %152)
  br label %154

154:                                              ; preds = %146, %34, %29
  %155 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %156 = call i32 @zfcp_free_low_mem_buffers(%struct.zfcp_adapter* %155)
  br label %157

157:                                              ; preds = %154, %24
  %158 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %159 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @zfcp_qdio_destroy(i32 %160)
  %162 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %163 = call i32 @kfree(%struct.zfcp_adapter* %162)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %157, %130, %9
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.zfcp_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @zfcp_qdio_setup(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_reqlist_alloc(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_dbf_adapter_register(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_setup_adapter_work_queue(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_fc_gs_setup(%struct.zfcp_adapter*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i64 @zfcp_erp_thread_setup(%struct.zfcp_adapter*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.zfcp_adapter*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @zfcp_adapter_scsi_register(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_fc_gs_destroy(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_destroy_adapter_work_queue(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_dbf_adapter_unregister(i32) #1

declare dso_local i32 @kfree(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_free_low_mem_buffers(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
