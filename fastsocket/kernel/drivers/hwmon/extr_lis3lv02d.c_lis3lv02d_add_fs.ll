; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_add_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_add_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DRIVER_NAME = common dso_local global i32 0, align 4
@lis3lv02d_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*)* @lis3lv02d_add_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_add_fs(%struct.lis3lv02d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lis3lv02d*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %3, align 8
  %4 = load i32, i32* @DRIVER_NAME, align 4
  %5 = call %struct.TYPE_6__* @platform_device_register_simple(i32 %4, i32 -1, i32* null, i32 0)
  %6 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %7 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %6, i32 0, i32 0
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %9 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = call i64 @IS_ERR(%struct.TYPE_6__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %15 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @PTR_ERR(%struct.TYPE_6__* %16)
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %20 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_group(i32* %23, i32* @lis3lv02d_attribute_group)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_6__* @platform_device_register_simple(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
