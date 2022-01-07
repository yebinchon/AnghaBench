; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_free_cmbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_free_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { %struct.cmb_data* }

@cmb_area = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @free_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cmbe(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.cmb_data*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @spin_lock_irq(i32 %6)
  %8 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.cmb_data*, %struct.cmb_data** %11, align 8
  store %struct.cmb_data* %12, %struct.cmb_data** %3, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.cmb_data* null, %struct.cmb_data** %16, align 8
  %17 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %18 = icmp ne %struct.cmb_data* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %21 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %20, i32 0, i32 0
  %22 = load %struct.cmb_data*, %struct.cmb_data** %21, align 8
  %23 = call i32 @kfree(%struct.cmb_data* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %26 = call i32 @kfree(%struct.cmb_data* %25)
  %27 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @spin_unlock_irq(i32 %29)
  %31 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  %32 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  %37 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = call i32 @cmf_activate(i32* null, i32 0)
  br label %41

41:                                               ; preds = %39, %24
  %42 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
