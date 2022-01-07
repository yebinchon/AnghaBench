; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_free_cmb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_free_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.ccw_device = type { i32, %struct.ccw_device_private* }
%struct.ccw_device_private = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { %struct.cmb_data* }

@cmb_area = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @free_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cmb(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_device_private*, align 8
  %4 = alloca %struct.cmb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @spin_lock_irq(i32 %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = load %struct.ccw_device_private*, %struct.ccw_device_private** %12, align 8
  store %struct.ccw_device_private* %13, %struct.ccw_device_private** %3, align 8
  %14 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %20, i32 0, i32 1
  %22 = load %struct.cmb_data*, %struct.cmb_data** %21, align 8
  store %struct.cmb_data* %22, %struct.cmb_data** %4, align 8
  %23 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %24 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %23, i32 0, i32 1
  store %struct.cmb_data* null, %struct.cmb_data** %24, align 8
  %25 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %26 = icmp ne %struct.cmb_data* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %29 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %28, i32 0, i32 0
  %30 = load %struct.cmb_data*, %struct.cmb_data** %29, align 8
  %31 = call i32 @kfree(%struct.cmb_data* %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.cmb_data*, %struct.cmb_data** %4, align 8
  %34 = call i32 @kfree(%struct.cmb_data* %33)
  %35 = load %struct.ccw_device_private*, %struct.ccw_device_private** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device_private, %struct.ccw_device_private* %35, i32 0, i32 0
  %37 = call i32 @list_del_init(i32* %36)
  %38 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 3))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 0), align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = call i32 @cmf_activate(i32* null, i32 0)
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @get_order(i32 %48)
  %50 = call i32 @free_pages(i64 %47, i32 %49)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  br label %51

51:                                               ; preds = %40, %32
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %54 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @spin_unlock_irq(i32 %55)
  %57 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
