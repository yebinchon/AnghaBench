; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-dev.c_i2cdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-dev.c_i2cdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.i2c_client* }
%struct.i2c_client = type { %struct.i2c_adapter*, i32*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i2c-dev %d\00", align 1
@i2cdev_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @i2cdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 (...) @lock_kernel()
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.i2c_dev* @i2c_dev_get_by_minor(i32 %13)
  store %struct.i2c_dev* %14, %struct.i2c_dev** %8, align 8
  %15 = load %struct.i2c_dev*, %struct.i2c_dev** %8, align 8
  %16 = icmp ne %struct.i2c_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.i2c_dev*, %struct.i2c_dev** %8, align 8
  %22 = getelementptr inbounds %struct.i2c_dev, %struct.i2c_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %25)
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %7, align 8
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %28 = icmp ne %struct.i2c_adapter* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %59

32:                                               ; preds = %20
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.i2c_client* @kzalloc(i32 24, i32 %33)
  store %struct.i2c_client* %34, %struct.i2c_client** %6, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = icmp ne %struct.i2c_client* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %39 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %59

42:                                               ; preds = %32
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I2C_NAME_SIZE, align 4
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  store i32* @i2cdev_driver, i32** %52, align 8
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  store %struct.i2c_adapter* %53, %struct.i2c_adapter** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  store %struct.i2c_client* %56, %struct.i2c_client** %58, align 8
  br label %59

59:                                               ; preds = %42, %37, %29, %17
  %60 = call i32 (...) @unlock_kernel()
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.i2c_dev* @i2c_dev_get_by_minor(i32) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
