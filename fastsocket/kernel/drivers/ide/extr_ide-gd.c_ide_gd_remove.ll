; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.ide_disk_obj* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }
%struct.ide_disk_obj = type { i32, i32, %struct.gendisk* }
%struct.gendisk = type { i32 }

@ide_disk_ref_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ide_gd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_gd_remove(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ide_disk_obj*, align 8
  %4 = alloca %struct.gendisk*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %6, align 8
  store %struct.ide_disk_obj* %7, %struct.ide_disk_obj** %3, align 8
  %8 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %9 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %8, i32 0, i32 2
  %10 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  store %struct.gendisk* %10, %struct.gendisk** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %13 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ide_proc_unregister_driver(%struct.TYPE_7__* %11, i32 %14)
  %16 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %17 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %16, i32 0, i32 0
  %18 = call i32 @device_del(i32* %17)
  %19 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %20 = call i32 @del_gendisk(%struct.gendisk* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 %25(%struct.TYPE_7__* %26)
  %28 = call i32 @mutex_lock(i32* @ide_disk_ref_mutex)
  %29 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %30 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %29, i32 0, i32 0
  %31 = call i32 @put_device(i32* %30)
  %32 = call i32 @mutex_unlock(i32* @ide_disk_ref_mutex)
  ret void
}

declare dso_local i32 @ide_proc_unregister_driver(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
