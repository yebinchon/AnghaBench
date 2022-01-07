; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_remove_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_remove_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @efx_ptp_remove_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_remove_channel(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %4 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %5 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %4, i32 0, i32 0
  %6 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  store %struct.efx_nic* %6, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %16 = call i32 @efx_ptp_disable(%struct.efx_nic* %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 7
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = call i32 @skb_queue_purge(i32* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = call i32 @skb_queue_purge(i32* %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ptp_clock_unregister(i32 %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @destroy_workqueue(i32 %47)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @destroy_workqueue(i32 %53)
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %55, i32* %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @efx_ptp_disable(%struct.efx_nic*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
