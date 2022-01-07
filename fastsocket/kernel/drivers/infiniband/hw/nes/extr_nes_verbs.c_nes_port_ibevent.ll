; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_port_ibevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_port_ibevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32, %struct.TYPE_5__, i32, i64, %struct.nes_device*, %struct.nes_ib_device* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.nes_device = type { i64 }
%struct.nes_ib_device = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@nes_handle_delayed_event = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@NES_EVENT_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_port_ibevent(%struct.nes_vnic* %0) #0 {
  %2 = alloca %struct.nes_vnic*, align 8
  %3 = alloca %struct.nes_ib_device*, align 8
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.ib_event, align 8
  store %struct.nes_vnic* %0, %struct.nes_vnic** %2, align 8
  %6 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %7 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %6, i32 0, i32 5
  %8 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  store %struct.nes_ib_device* %8, %struct.nes_ib_device** %3, align 8
  %9 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %10 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %9, i32 0, i32 4
  %11 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  store %struct.nes_device* %11, %struct.nes_device** %4, align 8
  %12 = load %struct.nes_ib_device*, %struct.nes_ib_device** %3, align 8
  %13 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32* %13, i32** %14, align 8
  %15 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %16 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %22 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %33 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %29
  %38 = call i32 @ib_dispatch_event(%struct.ib_event* %5)
  %39 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %42 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @nes_handle_delayed_event, align 8
  %44 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %45 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  %47 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %48 = ptrtoint %struct.nes_vnic* %47 to i64
  %49 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %50 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @NES_EVENT_DELAY, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %56 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %59 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %58, i32 0, i32 1
  %60 = call i32 @add_timer(%struct.TYPE_5__* %59)
  br label %68

61:                                               ; preds = %29
  %62 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %63 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %62, i32 0, i32 1
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* @NES_EVENT_DELAY, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @mod_timer(%struct.TYPE_5__* %63, i64 %66)
  br label %68

68:                                               ; preds = %61, %37
  %69 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nes_vnic*, %struct.nes_vnic** %2, align 8
  %72 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  ret void
}

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
