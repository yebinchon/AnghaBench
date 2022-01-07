; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.ide_disk_obj = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)*, i32 (%struct.TYPE_6__*)* }

@ide_disk_obj = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@IDE_DFLAG_REMOVABLE = common dso_local global i32 0, align 4
@IDE_DFLAG_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @ide_gd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_gd_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ide_disk_obj*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = load i32, i32* @ide_disk_obj, align 4
  %9 = call %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk* %7, i32 %8)
  store %struct.ide_disk_obj* %9, %struct.ide_disk_obj** %5, align 8
  %10 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %11 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* @IDE_DBG_FUNC, align 4
  %14 = call i32 @ide_debug_log(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %16 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = call i32 %24(%struct.TYPE_6__* %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IDE_DFLAG_REMOVABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %36 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)*, i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %47 = call i32 %44(%struct.TYPE_6__* %45, %struct.gendisk* %46, i32 0)
  %48 = load i32, i32* @IDE_DFLAG_FORMAT_IN_PROGRESS, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %39, %34, %27
  %55 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %56 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %60 = call i32 @ide_disk_put(%struct.ide_disk_obj* %59)
  ret i32 0
}

declare dso_local %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk*, i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @ide_disk_put(%struct.ide_disk_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
