; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { i32, %struct.mapped_device* }
%struct.mapped_device = type { i32 }

@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to remove open device %s\00", align 1
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_remove(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hash_cell*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 @down_write(i32* @_hash_lock)
  %10 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %11 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %10)
  store %struct.hash_cell* %11, %struct.hash_cell** %6, align 8
  %12 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %13 = icmp ne %struct.hash_cell* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @up_write(i32* @_hash_lock)
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %21 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %20, i32 0, i32 1
  %22 = load %struct.mapped_device*, %struct.mapped_device** %21, align 8
  store %struct.mapped_device* %22, %struct.mapped_device** %7, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %24 = call i32 @dm_lock_for_deletion(%struct.mapped_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %29 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @DMDEBUG_LIMIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @up_write(i32* @_hash_lock)
  %33 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %34 = call i32 @dm_put(%struct.mapped_device* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %19
  %37 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %38 = call i32 @__hash_remove(%struct.hash_cell* %37)
  %39 = call i32 @up_write(i32* @_hash_lock)
  %40 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %41 = load i32, i32* @KOBJ_REMOVE, align 4
  %42 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %43 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dm_kobject_uevent(%struct.mapped_device* %40, i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %49 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %50 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %36
  %54 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %55 = call i32 @dm_put(%struct.mapped_device* %54)
  %56 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %57 = call i32 @dm_destroy(%struct.mapped_device* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %27, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*, ...) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dm_lock_for_deletion(%struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @__hash_remove(%struct.hash_cell*) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

declare dso_local i32 @dm_destroy(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
