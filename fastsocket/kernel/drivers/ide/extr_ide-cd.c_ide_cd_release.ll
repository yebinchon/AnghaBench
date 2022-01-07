; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdrom_info = type { %struct.cdrom_info*, %struct.gendisk*, %struct.TYPE_2__*, %struct.cdrom_device_info }
%struct.gendisk = type { i32* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.cdrom_device_info = type { %struct.TYPE_2__* }

@cdrom_info = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ide_cd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cd_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cdrom_info*, align 8
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = load i32, i32* @cdrom_info, align 4
  %9 = call %struct.cdrom_info* @to_ide_drv(%struct.device* %7, i32 %8)
  store %struct.cdrom_info* %9, %struct.cdrom_info** %3, align 8
  %10 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %11 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %10, i32 0, i32 3
  store %struct.cdrom_device_info* %11, %struct.cdrom_device_info** %4, align 8
  %12 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %13 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %5, align 8
  %15 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %16 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %15, i32 0, i32 1
  %17 = load %struct.gendisk*, %struct.gendisk** %16, align 8
  store %struct.gendisk* %17, %struct.gendisk** %6, align 8
  %18 = load i32, i32* @IDE_DBG_FUNC, align 4
  %19 = call i32 @ide_debug_log(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %21 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %20, i32 0, i32 0
  %22 = load %struct.cdrom_info*, %struct.cdrom_info** %21, align 8
  %23 = call i32 @kfree(%struct.cdrom_info* %22)
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = icmp eq %struct.TYPE_2__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %31 = call i32 @unregister_cdrom(%struct.cdrom_device_info* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @blk_queue_prep_rq(i32 %37, i32* null)
  %39 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %40 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %42 = call i32 @put_disk(%struct.gendisk* %41)
  %43 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %44 = call i32 @kfree(%struct.cdrom_info* %43)
  ret void
}

declare dso_local %struct.cdrom_info* @to_ide_drv(%struct.device*, i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @kfree(%struct.cdrom_info*) #1

declare dso_local i32 @unregister_cdrom(%struct.cdrom_device_info*) #1

declare dso_local i32 @blk_queue_prep_rq(i32, i32*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
