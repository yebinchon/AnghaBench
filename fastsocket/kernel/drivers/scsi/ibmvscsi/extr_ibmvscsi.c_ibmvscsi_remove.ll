; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, %struct.ibmvscsi_host_data*, i32)* }
%struct.ibmvscsi_host_data = type { i32, i32, i32, i32 }
%struct.vio_dev = type { i32 }

@ibmvscsi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@max_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvscsi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %4, i32 0, i32 0
  %6 = call %struct.ibmvscsi_host_data* @dev_get_drvdata(i32* %5)
  store %struct.ibmvscsi_host_data* %6, %struct.ibmvscsi_host_data** %3, align 8
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %8 = call i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data* %7)
  %9 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %9, i32 0, i32 3
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %12 = call i32 @release_event_pool(i32* %10, %struct.ibmvscsi_host_data* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmvscsi_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*, %struct.ibmvscsi_host_data*, i32)*, i32 (i32*, %struct.ibmvscsi_host_data*, i32)** %14, align 8
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %16, i32 0, i32 2
  %18 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %19 = load i32, i32* @max_events, align 4
  %20 = call i32 %15(i32* %17, %struct.ibmvscsi_host_data* %18, i32 %19)
  %21 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kthread_stop(i32 %23)
  %25 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @srp_remove_host(i32 %27)
  %29 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %30 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scsi_remove_host(i32 %31)
  %33 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @scsi_host_put(i32 %35)
  ret i32 0
}

declare dso_local %struct.ibmvscsi_host_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @release_event_pool(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @srp_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
