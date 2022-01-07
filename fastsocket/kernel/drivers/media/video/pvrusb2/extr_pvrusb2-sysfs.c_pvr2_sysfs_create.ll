; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pvr2_context = type { i32 }
%struct.pvr2_sysfs_class = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Creating pvr2_sysfs id=%p\00", align 1
@pvr2_sysfs_internal_check = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_sysfs* @pvr2_sysfs_create(%struct.pvr2_context* %0, %struct.pvr2_sysfs_class* %1) #0 {
  %3 = alloca %struct.pvr2_sysfs*, align 8
  %4 = alloca %struct.pvr2_context*, align 8
  %5 = alloca %struct.pvr2_sysfs_class*, align 8
  %6 = alloca %struct.pvr2_sysfs*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %4, align 8
  store %struct.pvr2_sysfs_class* %1, %struct.pvr2_sysfs_class** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pvr2_sysfs* @kzalloc(i32 4, i32 %7)
  store %struct.pvr2_sysfs* %8, %struct.pvr2_sysfs** %6, align 8
  %9 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  %10 = icmp ne %struct.pvr2_sysfs* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  store %struct.pvr2_sysfs* %12, %struct.pvr2_sysfs** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %15 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  %16 = call i32 @pvr2_trace(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pvr2_sysfs* %15)
  %17 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  %18 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %17, i32 0, i32 0
  %19 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %20 = call i32 @pvr2_channel_init(%struct.TYPE_2__* %18, %struct.pvr2_context* %19)
  %21 = load i32, i32* @pvr2_sysfs_internal_check, align 4
  %22 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  %23 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  %26 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %5, align 8
  %27 = call i32 @class_dev_create(%struct.pvr2_sysfs* %25, %struct.pvr2_sysfs_class* %26)
  %28 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %6, align 8
  store %struct.pvr2_sysfs* %28, %struct.pvr2_sysfs** %3, align 8
  br label %29

29:                                               ; preds = %13, %11
  %30 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  ret %struct.pvr2_sysfs* %30
}

declare dso_local %struct.pvr2_sysfs* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_sysfs*) #1

declare dso_local i32 @pvr2_channel_init(%struct.TYPE_2__*, %struct.pvr2_context*) #1

declare dso_local i32 @class_dev_create(%struct.pvr2_sysfs*, %struct.pvr2_sysfs_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
