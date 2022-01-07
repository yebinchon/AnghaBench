; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_start_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_start_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)*, i32* }
%struct.TYPE_3__ = type { i64 (%struct.efx_nic*)* }

@STATE_DISABLED = common dso_local global i64 0, align 8
@efx_monitor_interval = common dso_local global i32 0, align 4
@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_start_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_start_all(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %3)
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATE_DISABLED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_running(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %1
  br label %74

23:                                               ; preds = %16
  %24 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %25 = call i32 @efx_start_port(%struct.efx_nic* %24)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = call i32 @efx_start_datapath(%struct.efx_nic* %26)
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 4
  %40 = load i32, i32* @efx_monitor_interval, align 4
  %41 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %44 = call i64 @efx_nic_rev(%struct.efx_nic* %43)
  %45 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.efx_nic*)*, i64 (%struct.efx_nic*)** %54, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %57 = call i64 %55(%struct.efx_nic* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %61 = call i32 @efx_link_status_changed(%struct.efx_nic* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %42
  %67 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %70, align 8
  %72 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %73 = call i32 %71(%struct.efx_nic* %72)
  br label %74

74:                                               ; preds = %66, %22
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @efx_start_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_start_datapath(%struct.efx_nic*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
