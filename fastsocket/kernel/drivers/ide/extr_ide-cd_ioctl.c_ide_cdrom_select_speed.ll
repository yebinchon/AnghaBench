; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_select_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }
%struct.request_sense = type { i32 }

@ATAPI_CAPABILITIES_PAGE_SIZE = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@GPCMD_SET_SPEED = common dso_local global i8 0, align 1
@CDC_CD_R = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@CDC_DVD_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_select_speed(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.request_sense, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.cdrom_info*, %struct.cdrom_info** %16, align 8
  store %struct.cdrom_info* %17, %struct.cdrom_info** %6, align 8
  %18 = load i32, i32* @ATAPI_CAPABILITIES_PAGE_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @BLK_MAX_CDB, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 65535, i32* %4, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 177
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i32, i32* @BLK_MAX_CDB, align 4
  %33 = call i32 @memset(i8* %24, i32 0, i32 %32)
  %34 = load i8, i8* @GPCMD_SET_SPEED, align 1
  %35 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %34, i8* %35, align 16
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %39, i8* %40, align 2
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %43, i8* %44, align 1
  %45 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %46 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CDC_CD_R, align 4
  %49 = load i32, i32* @CDC_CD_RW, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CDC_DVD_R, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %47, %52
  %54 = load i32, i32* @CDC_CD_R, align 4
  %55 = load i32, i32* @CDC_CD_RW, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CDC_DVD_R, align 4
  %58 = or i32 %56, %57
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %31
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, i8* %24, i64 4
  store i8 %64, i8* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, i8* %24, i64 5
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %60, %31
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = call i32 @ide_cd_queue_pc(%struct.TYPE_5__* %71, i8* %24, i32 0, i32* null, i32* null, %struct.request_sense* %7, i32 0, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = call i32 @ide_cdrom_get_capabilities(%struct.TYPE_5__* %73, i32* %21)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = call i32 @ide_cdrom_update_speed(%struct.TYPE_5__* %77, i32* %21)
  %79 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %80 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %83 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %70
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(%struct.TYPE_5__*, i8*, i32, i32*, i32*, %struct.request_sense*, i32, i32) #2

declare dso_local i32 @ide_cdrom_get_capabilities(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @ide_cdrom_update_speed(%struct.TYPE_5__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
