; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_driver.c_driver_remove_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_driver.c_driver_remove_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.attribute_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_driver*, %struct.attribute_group**)* @driver_remove_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @driver_remove_groups(%struct.device_driver* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca %struct.attribute_group**, align 8
  %5 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %4, align 8
  %6 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %7 = icmp ne %struct.attribute_group** %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %10, i64 %12
  %14 = load %struct.attribute_group*, %struct.attribute_group** %13, align 8
  %15 = icmp ne %struct.attribute_group* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %18 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %21, i64 %23
  %25 = load %struct.attribute_group*, %struct.attribute_group** %24, align 8
  %26 = call i32 @sysfs_remove_group(i32* %20, %struct.attribute_group* %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
