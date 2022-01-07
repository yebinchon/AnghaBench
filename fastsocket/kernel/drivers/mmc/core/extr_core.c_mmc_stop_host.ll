; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_stop_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_stop_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*)* }

@MMC_CAP_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_stop_host(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MMC_CAP_DISABLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 6
  %12 = call i32 @cancel_delayed_work(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 5
  %16 = call i32 @cancel_delayed_work(i32* %15)
  %17 = call i32 (...) @mmc_flush_scheduled_work()
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = call i32 @mmc_bus_get(%struct.mmc_host* %18)
  %20 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %13
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %33, align 8
  %35 = icmp ne i32 (%struct.mmc_host*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %40, align 8
  %42 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %43 = call i32 %41(%struct.mmc_host* %42)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %46 = call i32 @mmc_claim_host(%struct.mmc_host* %45)
  %47 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %48 = call i32 @mmc_detach_bus(%struct.mmc_host* %47)
  %49 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %50 = call i32 @mmc_release_host(%struct.mmc_host* %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = call i32 @mmc_bus_put(%struct.mmc_host* %51)
  br label %62

53:                                               ; preds = %24, %13
  %54 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %55 = call i32 @mmc_bus_put(%struct.mmc_host* %54)
  %56 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %61 = call i32 @mmc_power_off(%struct.mmc_host* %60)
  br label %62

62:                                               ; preds = %53, %44
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mmc_flush_scheduled_work(...) #1

declare dso_local i32 @mmc_bus_get(%struct.mmc_host*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_bus_put(%struct.mmc_host*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
