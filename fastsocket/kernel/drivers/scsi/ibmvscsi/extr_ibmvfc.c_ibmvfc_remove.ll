; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.ibmvfc_host = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@ibmvfc_trace_attr = common dso_local global i32 0, align 4
@IBMVFC_HOST_OFFLINE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@ibmvfc_driver_lock = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvfc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = call %struct.ibmvfc_host* @dev_get_drvdata(i32* %6)
  store %struct.ibmvfc_host* %7, %struct.ibmvfc_host** %3, align 8
  %8 = load i32, i32* @ENTER, align 4
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @ibmvfc_remove_trace_file(i32* %13, i32* @ibmvfc_trace_attr)
  %15 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %23 = load i32, i32* @IBMVFC_HOST_OFFLINE, align 4
  %24 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %22, i32 %23)
  %25 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  %32 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %33 = call i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %32)
  %34 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %35 = call i32 @ibmvfc_release_crq_queue(%struct.ibmvfc_host* %34)
  %36 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kthread_stop(i32 %38)
  %40 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @fc_remove_host(%struct.TYPE_6__* %42)
  %44 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @scsi_remove_host(%struct.TYPE_6__* %46)
  %48 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32 %52, i64 %53)
  %55 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %56 = load i32, i32* @DID_ERROR, align 4
  %57 = call i32 @ibmvfc_purge_requests(%struct.ibmvfc_host* %55, i32 %56)
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %59 = call i32 @ibmvfc_free_event_pool(%struct.ibmvfc_host* %58)
  %60 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32 %64, i64 %65)
  %67 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %68 = call i32 @ibmvfc_free_mem(%struct.ibmvfc_host* %67)
  %69 = call i32 @spin_lock(i32* @ibmvfc_driver_lock)
  %70 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %70, i32 0, i32 1
  %72 = call i32 @list_del(i32* %71)
  %73 = call i32 @spin_unlock(i32* @ibmvfc_driver_lock)
  %74 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @scsi_host_put(%struct.TYPE_6__* %76)
  %78 = load i32, i32* @LEAVE, align 4
  ret i32 0
}

declare dso_local %struct.ibmvfc_host* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ibmvfc_remove_trace_file(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_release_crq_queue(%struct.ibmvfc_host*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @fc_remove_host(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_6__*) #1

declare dso_local i32 @ibmvfc_purge_requests(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_free_event_pool(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_free_mem(%struct.ibmvfc_host*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
