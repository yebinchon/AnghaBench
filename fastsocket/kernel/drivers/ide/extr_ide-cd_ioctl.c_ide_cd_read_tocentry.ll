; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_read_tocentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cd_read_tocentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_tocentry = type { i64, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.atapi_toc_entry = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CDROM_MSF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ide_cd_read_tocentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_read_tocentry(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cdrom_tocentry*, align 8
  %7 = alloca %struct.atapi_toc_entry*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cdrom_tocentry*
  store %struct.cdrom_tocentry* %10, %struct.cdrom_tocentry** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %13 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ide_cd_get_toc_entry(i32* %11, i32 %14, %struct.atapi_toc_entry** %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %22 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %25 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %27 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %30 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %32 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CDROM_MSF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %20
  %37 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %38 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %42 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %46 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %50 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @lba_to_msf(i32 %40, i32* %44, i32* %48, i32* %52)
  br label %62

54:                                               ; preds = %20
  %55 = load %struct.atapi_toc_entry*, %struct.atapi_toc_entry** %7, align 8
  %56 = getelementptr inbounds %struct.atapi_toc_entry, %struct.atapi_toc_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %6, align 8
  %60 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %54, %36
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ide_cd_get_toc_entry(i32*, i32, %struct.atapi_toc_entry**) #1

declare dso_local i32 @lba_to_msf(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
