; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_unit_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_unit_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.zfcp_unit = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@zfcp_sysfs_unit_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_unit_dequeue(%struct.zfcp_unit* %0) #0 {
  %2 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %2, align 8
  %3 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %6, i32 0, i32 3
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @wait_event(i32 %5, i32 %10)
  %12 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zfcp_data, i32 0, i32 0))
  %13 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zfcp_data, i32 0, i32 0))
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @zfcp_port_put(i32 %19)
  %21 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_group(i32* %23, i32* @zfcp_sysfs_unit_attrs)
  %25 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %25, i32 0, i32 0
  %27 = call i32 @device_unregister(%struct.TYPE_4__* %26)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_port_put(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
