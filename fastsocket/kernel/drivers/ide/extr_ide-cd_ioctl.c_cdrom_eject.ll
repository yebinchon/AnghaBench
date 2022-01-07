; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_cdrom_eject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_cdrom_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.cdrom_device_info }
%struct.cdrom_device_info = type { i32 }
%struct.request_sense = type { i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@IDE_AFLAG_NO_EJECT = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@IDE_AFLAG_DOOR_LOCKED = common dso_local global i32 0, align 4
@CDC_CLOSE_TRAY = common dso_local global i32 0, align 4
@GPCMD_START_STOP_UNIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, %struct.request_sense*)* @cdrom_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_eject(%struct.TYPE_4__* %0, i32 %1, %struct.request_sense* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_sense*, align 8
  %8 = alloca %struct.cdrom_info*, align 8
  %9 = alloca %struct.cdrom_device_info*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.request_sense* %2, %struct.request_sense** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.cdrom_info*, %struct.cdrom_info** %15, align 8
  store %struct.cdrom_info* %16, %struct.cdrom_info** %8, align 8
  %17 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %18 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %17, i32 0, i32 0
  store %struct.cdrom_device_info* %18, %struct.cdrom_device_info** %9, align 8
  store i8 2, i8* %10, align 1
  %19 = load i32, i32* @BLK_MAX_CDB, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IDE_AFLAG_NO_EJECT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

35:                                               ; preds = %29, %3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IDE_AFLAG_DOOR_LOCKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %9, align 8
  %51 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CDC_CLOSE_TRAY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i8 0, i8* %10, align 1
  br label %57

57:                                               ; preds = %56, %49, %46
  %58 = load i32, i32* @BLK_MAX_CDB, align 4
  %59 = call i32 @memset(i8* %22, i32 0, i32 %58)
  %60 = load i8, i8* @GPCMD_START_STOP_UNIT, align 1
  %61 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %60, i8* %61, align 16
  %62 = load i8, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = or i32 %63, %66
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, i8* %22, i64 4
  store i8 %68, i8* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = load %struct.request_sense*, %struct.request_sense** %7, align 8
  %72 = call i32 @ide_cd_queue_pc(%struct.TYPE_4__* %70, i8* %22, i32 0, i32* null, i32* null, %struct.request_sense* %71, i32 0, i32 0)
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %57, %45, %32
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(%struct.TYPE_4__*, i8*, i32, i32*, i32*, %struct.request_sense*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
