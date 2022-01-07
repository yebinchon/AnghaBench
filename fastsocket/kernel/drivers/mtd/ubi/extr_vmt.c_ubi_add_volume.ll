; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_add_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_add_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ubi_volume = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"add volume %d\00", align 1
@ubi_vol_cdev_operations = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot add character device for volume %d, error %d\00", align 1
@vol_release = common dso_local global i32 0, align 4
@ubi_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"check failed while adding volume %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_add_volume(%struct.ubi_device* %0, %struct.ubi_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dbg_gen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 1
  %16 = call i32 @cdev_init(%struct.TYPE_9__* %15, i32* @ubi_vol_cdev_operations)
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MAJOR(i32 %24)
  %26 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = call i32 @MKDEV(i32 %25, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 1
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cdev_add(%struct.TYPE_9__* %32, i32 %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ubi_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %2
  %43 = load i32, i32* @vol_release, align 4
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %45 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 1
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ubi_class, align 4
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %61 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %60, i32 0, i32 2
  %62 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %66 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_set_name(%struct.TYPE_8__* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %69, i32 0, i32 2
  %71 = call i32 @device_register(%struct.TYPE_8__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %42
  br label %97

75:                                               ; preds = %42
  %76 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %77 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %78 = call i32 @volume_sysfs_init(%struct.ubi_device* %76, %struct.ubi_volume* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %83 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %82, i32 0, i32 1
  %84 = call i32 @cdev_del(%struct.TYPE_9__* %83)
  %85 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %86 = call i32 @volume_sysfs_close(%struct.ubi_volume* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %102

88:                                               ; preds = %75
  %89 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %90 = call i64 @paranoid_check_volumes(%struct.ubi_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dbg_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %102

97:                                               ; preds = %74
  %98 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %99 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %98, i32 0, i32 1
  %100 = call i32 @cdev_del(%struct.TYPE_9__* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %95, %81, %37
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_add(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ubi_err(i8*, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @volume_sysfs_init(%struct.ubi_device*, %struct.ubi_volume*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_9__*) #1

declare dso_local i32 @volume_sysfs_close(%struct.ubi_volume*) #1

declare dso_local i64 @paranoid_check_volumes(%struct.ubi_device*) #1

declare dso_local i32 @dbg_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
