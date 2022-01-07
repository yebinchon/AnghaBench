; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_device_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_device_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ahd_devinfo = type { i32, i32, i32 }
%struct.ahd_softc = type { i32 }

@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_QUEUE_TAGGED = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Tagged Queuing enabled.  Depth %d\0A\00", align 1
@AHD_QUEUE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @ahd_linux_device_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_device_queue_depth(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ahd_devinfo, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ahd_softc*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ahd_softc**
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %11, align 8
  store %struct.ahd_softc* %12, %struct.ahd_softc** %5, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 65, i32 66
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* @ROLE_INITIATOR, align 4
  %34 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %3, i32 %15, i32 %20, i32 %23, i8 signext %32, i32 %33)
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %36 = call i64 @ahd_linux_user_tagdepth(%struct.ahd_softc* %35, %struct.ahd_devinfo* %3)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %46 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %47 = load i32, i32* @AHD_QUEUE_TAGGED, align 4
  %48 = call i32 @ahd_platform_set_tags(%struct.ahd_softc* %45, %struct.scsi_device* %46, %struct.ahd_devinfo* %3, i32 %47)
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %50 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %57 = call i32 @ahd_send_async(%struct.ahd_softc* %49, i32 %51, i32 %53, i32 %55, i32 %56)
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %59 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %58, %struct.ahd_devinfo* %3)
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %76

62:                                               ; preds = %39, %1
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %64 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %65 = load i32, i32* @AHD_QUEUE_NONE, align 4
  %66 = call i32 @ahd_platform_set_tags(%struct.ahd_softc* %63, %struct.scsi_device* %64, %struct.ahd_devinfo* %3, i32 %65)
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %75 = call i32 @ahd_send_async(%struct.ahd_softc* %67, i32 %69, i32 %71, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %62, %44
  ret void
}

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i64 @ahd_linux_user_tagdepth(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_platform_set_tags(%struct.ahd_softc*, %struct.scsi_device*, %struct.ahd_devinfo*, i32) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_print_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
