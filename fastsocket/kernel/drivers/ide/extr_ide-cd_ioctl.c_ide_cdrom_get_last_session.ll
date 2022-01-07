; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_last_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_get_last_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { %struct.atapi_toc* }
%struct.atapi_toc = type { i32, i32 }
%struct.cdrom_multisession = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.request_sense = type { i32 }

@IDE_AFLAG_TOC_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_get_last_session(%struct.cdrom_device_info* %0, %struct.cdrom_multisession* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_multisession*, align 8
  %6 = alloca %struct.atapi_toc*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.cdrom_info*, align 8
  %9 = alloca %struct.request_sense, align 4
  %10 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_multisession* %1, %struct.cdrom_multisession** %5, align 8
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.cdrom_info*, %struct.cdrom_info** %15, align 8
  store %struct.cdrom_info* %16, %struct.cdrom_info** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IDE_AFLAG_TOC_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %25 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %24, i32 0, i32 0
  %26 = load %struct.atapi_toc*, %struct.atapi_toc** %25, align 8
  %27 = icmp ne %struct.atapi_toc* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = call i32 @ide_cd_read_toc(%struct.TYPE_5__* %29, %struct.request_sense* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.cdrom_info*, %struct.cdrom_info** %8, align 8
  %38 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %37, i32 0, i32 0
  %39 = load %struct.atapi_toc*, %struct.atapi_toc** %38, align 8
  store %struct.atapi_toc* %39, %struct.atapi_toc** %6, align 8
  %40 = load %struct.atapi_toc*, %struct.atapi_toc** %6, align 8
  %41 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %44 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.atapi_toc*, %struct.atapi_toc** %6, align 8
  %47 = getelementptr inbounds %struct.atapi_toc, %struct.atapi_toc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %50 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ide_cd_read_toc(%struct.TYPE_5__*, %struct.request_sense*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
