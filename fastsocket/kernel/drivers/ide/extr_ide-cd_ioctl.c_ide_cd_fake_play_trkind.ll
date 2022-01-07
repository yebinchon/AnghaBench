; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_fake_play_trkind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_fake_play_trkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_ti = type { i64, i64 }
%struct.atapi_toc_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.request_sense = type { i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@CDROM_LEADOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GPCMD_PLAY_AUDIO_MSF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ide_cd_fake_play_trkind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_fake_play_trkind(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cdrom_ti*, align 8
  %7 = alloca %struct.atapi_toc_entry*, align 8
  %8 = alloca %struct.atapi_toc_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_sense, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.cdrom_ti*
  store %struct.cdrom_ti* %17, %struct.cdrom_ti** %6, align 8
  %18 = load i32, i32* @BLK_MAX_CDB, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %24 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ide_cd_get_toc_entry(i32* %22, i64 %25, %struct.atapi_toc_entry** %7)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %34 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ide_cd_get_toc_entry(i32* %32, i64 %35, %struct.atapi_toc_entry** %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

41:                                               ; preds = %31
  %42 = load %struct.cdrom_ti*, %struct.cdrom_ti** %6, align 8
  %43 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CDROM_LEADOUT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %8, align 8
  %49 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %48, i32 1
  store %struct.atapi_toc_entry* %49, %struct.atapi_toc_entry** %8, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %52 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %8, align 8
  %56 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

65:                                               ; preds = %50
  %66 = load i32, i32* @BLK_MAX_CDB, align 4
  %67 = call i32 @memset(i8* %21, i32 0, i32 %66)
  %68 = load i8, i8* @GPCMD_PLAY_AUDIO_MSF, align 1
  %69 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %68, i8* %69, align 16
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8, i8* %21, i64 3
  %72 = getelementptr inbounds i8, i8* %21, i64 4
  %73 = getelementptr inbounds i8, i8* %21, i64 5
  %74 = call i32 @lba_to_msf(i64 %70, i8* %71, i8* %72, i8* %73)
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %21, i64 6
  %78 = getelementptr inbounds i8, i8* %21, i64 7
  %79 = getelementptr inbounds i8, i8* %21, i64 8
  %80 = call i32 @lba_to_msf(i64 %76, i8* %77, i8* %78, i8* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ide_cd_queue_pc(i32* %81, i8* %21, i32 0, i32* null, i32* null, %struct.request_sense* %12, i32 0, i32 0)
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %65, %62, %39, %29
  %84 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ide_cd_get_toc_entry(i32*, i64, %struct.atapi_toc_entry**) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @lba_to_msf(i64, i8*, i8*, i8*) #2

declare dso_local i32 @ide_cd_queue_pc(i32*, i8*, i32, i32*, i32*, %struct.request_sense*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
