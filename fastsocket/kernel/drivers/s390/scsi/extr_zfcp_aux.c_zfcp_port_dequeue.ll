; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_port_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.zfcp_port = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@zfcp_sysfs_port_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_port_dequeue(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %3 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zfcp_data, i32 0, i32 0))
  %4 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %4, i32 0, i32 7
  %6 = call i32 @list_del(i32* %5)
  %7 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zfcp_data, i32 0, i32 0))
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %8, i32 0, i32 6
  %10 = call i64 @cancel_work_sync(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %14 = call i32 @zfcp_port_put(%struct.zfcp_port* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 5
  %18 = call i64 @cancel_work_sync(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %22 = call i32 @zfcp_port_put(%struct.zfcp_port* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 4
  %26 = call i64 @cancel_work_sync(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %30 = call i32 @zfcp_port_put(%struct.zfcp_port* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 2
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %34, i32 %39)
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zfcp_adapter_put(i32 %43)
  %45 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %46 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @sysfs_remove_group(i32* %47, i32* @zfcp_sysfs_port_attrs)
  %49 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %50 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %49, i32 0, i32 0
  %51 = call i32 @device_unregister(%struct.TYPE_4__* %50)
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_adapter_put(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
