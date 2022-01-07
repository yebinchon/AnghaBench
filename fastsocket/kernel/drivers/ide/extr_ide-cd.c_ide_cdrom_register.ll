; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cdrom_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i32, i32, %struct.cdrom_device_info }
%struct.cdrom_device_info = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32* }

@IDE_DBG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nslots: %d\00", align 1
@ide_cdrom_dops = common dso_local global i32 0, align 4
@IDE_AFLAG_NO_SPEED_SELECT = common dso_local global i32 0, align 4
@CDC_SELECT_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ide_cdrom_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cdrom_register(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_info*, align 8
  %6 = alloca %struct.cdrom_device_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  store %struct.cdrom_info* %9, %struct.cdrom_info** %5, align 8
  %10 = load %struct.cdrom_info*, %struct.cdrom_info** %5, align 8
  %11 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %10, i32 0, i32 2
  store %struct.cdrom_device_info* %11, %struct.cdrom_device_info** %6, align 8
  %12 = load i32, i32* @IDE_DBG_PROBE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ide_debug_log(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %16 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %15, i32 0, i32 6
  store i32* @ide_cdrom_dops, i32** %16, align 8
  %17 = load %struct.cdrom_info*, %struct.cdrom_info** %5, align 8
  %18 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %21 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %24 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 4
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %29 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %30, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IDE_AFLAG_NO_SPEED_SELECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @CDC_SELECT_SPEED, align 4
  %43 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %44 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %2
  %48 = load %struct.cdrom_info*, %struct.cdrom_info** %5, align 8
  %49 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %52 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %54 = call i32 @register_cdrom(%struct.cdrom_device_info* %53)
  ret i32 %54
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @register_cdrom(%struct.cdrom_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
