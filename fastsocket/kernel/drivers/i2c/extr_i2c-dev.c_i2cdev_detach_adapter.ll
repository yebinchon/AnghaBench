; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-dev.c_i2cdev_detach_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-dev.c_i2cdev_detach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_dev = type { i32 }

@dev_attr_name = common dso_local global i32 0, align 4
@i2c_dev_class = common dso_local global i32 0, align 4
@I2C_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"i2c-dev: adapter [%s] unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2cdev_detach_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_detach_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.i2c_dev* @i2c_dev_get_by_minor(i32 %7)
  store %struct.i2c_dev* %8, %struct.i2c_dev** %4, align 8
  %9 = load %struct.i2c_dev*, %struct.i2c_dev** %4, align 8
  %10 = icmp ne %struct.i2c_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.i2c_dev*, %struct.i2c_dev** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_remove_file(i32 %15, i32* @dev_attr_name)
  %17 = load %struct.i2c_dev*, %struct.i2c_dev** %4, align 8
  %18 = call i32 @return_i2c_dev(%struct.i2c_dev* %17)
  %19 = load i32, i32* @i2c_dev_class, align 4
  %20 = load i32, i32* @I2C_MAJOR, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MKDEV(i32 %20, i32 %23)
  %25 = call i32 @device_destroy(i32 %19, i32 %24)
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %12, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.i2c_dev* @i2c_dev_get_by_minor(i32) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @return_i2c_dev(%struct.i2c_dev*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
