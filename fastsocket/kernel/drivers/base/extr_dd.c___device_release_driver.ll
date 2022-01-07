; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dd.c___device_release_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dd.c___device_release_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.device_driver* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 (%struct.device*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque

@BUS_NOTIFY_UNBIND_DRIVER = common dso_local global i32 0, align 4
@BUS_NOTIFY_UNBOUND_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @__device_release_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__device_release_driver(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 2
  %6 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  store %struct.device_driver* %6, %struct.device_driver** %3, align 8
  %7 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %8 = icmp ne %struct.device_driver* %7, null
  br i1 %8, label %9, label %90

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @pm_runtime_get_noresume(%struct.device* %10)
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @pm_runtime_barrier(%struct.device* %12)
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @driver_sysfs_remove(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* @BUS_NOTIFY_UNBIND_DRIVER, align 4
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @blocking_notifier_call_chain(i32* %26, i32 %27, %struct.device* %28)
  br label %30

30:                                               ; preds = %20, %9
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32 (%struct.device*)*, i32 (%struct.device*)** %39, align 8
  %41 = icmp ne i32 (%struct.device*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32 (%struct.device*)*, i32 (%struct.device*)** %46, align 8
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = call i32 %47(%struct.device* %48)
  br label %63

50:                                               ; preds = %35, %30
  %51 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %52 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %51, i32 0, i32 0
  %53 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %52, align 8
  %54 = icmp ne i32 (%struct.device.0*)* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %57 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %56, i32 0, i32 0
  %58 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %57, align 8
  %59 = load %struct.device*, %struct.device** %2, align 8
  %60 = bitcast %struct.device* %59 to %struct.device.0*
  %61 = call i32 %58(%struct.device.0* %60)
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = call i32 @devres_release_all(%struct.device* %64)
  %66 = load %struct.device*, %struct.device** %2, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 2
  store %struct.device_driver* null, %struct.device_driver** %67, align 8
  %68 = load %struct.device*, %struct.device** %2, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @klist_remove(i32* %71)
  %73 = load %struct.device*, %struct.device** %2, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %63
  %78 = load %struct.device*, %struct.device** %2, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* @BUS_NOTIFY_UNBOUND_DRIVER, align 4
  %85 = load %struct.device*, %struct.device** %2, align 8
  %86 = call i32 @blocking_notifier_call_chain(i32* %83, i32 %84, %struct.device* %85)
  br label %87

87:                                               ; preds = %77, %63
  %88 = load %struct.device*, %struct.device** %2, align 8
  %89 = call i32 @pm_runtime_put_sync(%struct.device* %88)
  br label %90

90:                                               ; preds = %87, %1
  ret void
}

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_barrier(%struct.device*) #1

declare dso_local i32 @driver_sysfs_remove(%struct.device*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.device*) #1

declare dso_local i32 @devres_release_all(%struct.device*) #1

declare dso_local i32 @klist_remove(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
