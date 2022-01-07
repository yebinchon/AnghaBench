; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_adapter*, %struct.zfcp_adapter*, %struct.zfcp_adapter*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@zfcp_sysfs_adapter_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_adapter_dequeue(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 6
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_remove_group(i32* %9, i32* @zfcp_sysfs_adapter_attrs)
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 5
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %16 = call i32 @zfcp_reqlist_isempty(%struct.zfcp_adapter* %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 5
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %26 = call i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter* %25)
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @zfcp_dbf_adapter_unregister(i32 %29)
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %32 = call i32 @zfcp_free_low_mem_buffers(%struct.zfcp_adapter* %31)
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @zfcp_qdio_destroy(i32 %35)
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 2
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %38, align 8
  %40 = call i32 @kfree(%struct.zfcp_adapter* %39)
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %41, i32 0, i32 1
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %42, align 8
  %44 = call i32 @kfree(%struct.zfcp_adapter* %43)
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %46, align 8
  %48 = call i32 @kfree(%struct.zfcp_adapter* %47)
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %50 = call i32 @kfree(%struct.zfcp_adapter* %49)
  br label %51

51:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zfcp_reqlist_isempty(%struct.zfcp_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_dbf_adapter_unregister(i32) #1

declare dso_local i32 @zfcp_free_low_mem_buffers(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_destroy(i32) #1

declare dso_local i32 @kfree(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
