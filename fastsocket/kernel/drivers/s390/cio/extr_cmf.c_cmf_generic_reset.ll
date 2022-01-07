; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_generic_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_generic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32)* }
%struct.ccw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { i64, i32, i32, i32 }

@cmbops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @cmf_generic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmf_generic_reset(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.cmb_data*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @spin_lock_irq(i32 %6)
  %8 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.cmb_data*, %struct.cmb_data** %11, align 8
  store %struct.cmb_data* %12, %struct.cmb_data** %3, align 8
  %13 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %14 = icmp ne %struct.cmb_data* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %17 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %20 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memset(i32 %18, i32 0, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %27 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %25(i32 %28)
  %30 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %31 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %29, i32 0, i32 %32)
  %34 = load %struct.cmb_data*, %struct.cmb_data** %3, align 8
  %35 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %15, %1
  %37 = call i32 (...) @get_clock()
  %38 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @spin_unlock_irq(i32 %44)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
