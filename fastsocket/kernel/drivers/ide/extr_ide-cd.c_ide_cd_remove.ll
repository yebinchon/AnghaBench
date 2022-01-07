; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cdrom_info* }
%struct.cdrom_info = type { i32, i32, i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@idecd_ref_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ide_cd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cd_remove(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.cdrom_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.cdrom_info*, %struct.cdrom_info** %5, align 8
  store %struct.cdrom_info* %6, %struct.cdrom_info** %3, align 8
  %7 = load i32, i32* @IDE_DBG_FUNC, align 4
  %8 = call i32 @ide_debug_log(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %11 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ide_proc_unregister_driver(%struct.TYPE_4__* %9, i32 %12)
  %14 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %15 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %14, i32 0, i32 0
  %16 = call i32 @device_del(i32* %15)
  %17 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %18 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @del_gendisk(i32 %19)
  %21 = call i32 @mutex_lock(i32* @idecd_ref_mutex)
  %22 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %23 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %22, i32 0, i32 0
  %24 = call i32 @put_device(i32* %23)
  %25 = call i32 @mutex_unlock(i32* @idecd_ref_mutex)
  ret void
}

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @ide_proc_unregister_driver(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
