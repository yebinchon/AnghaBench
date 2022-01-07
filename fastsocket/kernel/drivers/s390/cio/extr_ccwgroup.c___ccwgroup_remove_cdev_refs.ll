; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___ccwgroup_remove_cdev_refs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___ccwgroup_remove_cdev_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32, %struct.ccw_device** }
%struct.ccw_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @__ccwgroup_remove_cdev_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ccwgroup_remove_cdev_refs(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %12, i32 0, i32 1
  %14 = load %struct.ccw_device**, %struct.ccw_device*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %14, i64 %16
  %18 = load %struct.ccw_device*, %struct.ccw_device** %17, align 8
  store %struct.ccw_device* %18, %struct.ccw_device** %3, align 8
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = icmp ne %struct.ccw_device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %43

22:                                               ; preds = %11
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @spin_lock_irq(i32 %25)
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 0
  %29 = call i32 @dev_set_drvdata(i32* %28, i32* null)
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_unlock_irq(i32 %32)
  %34 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %35 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %34, i32 0, i32 1
  %36 = load %struct.ccw_device**, %struct.ccw_device*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %36, i64 %38
  store %struct.ccw_device* null, %struct.ccw_device** %39, align 8
  %40 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 0
  %42 = call i32 @put_device(i32* %41)
  br label %43

43:                                               ; preds = %22, %21
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
