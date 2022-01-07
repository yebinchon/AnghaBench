; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm_pci.c_ahd_linux_pci_dev_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm_pci.c_ahd_linux_pci_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ahd_softc = type { i32, %struct.pci_dev*, i32 }
%struct.ahd_pci_identity = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ahd_pci:%d:%d:%d\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHD_MULTI_FUNC = common dso_local global i32 0, align 4
@aic79xx_driver_template = common dso_local global i32 0, align 4
@AHD_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ahd_linux_pci_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_linux_pci_dev_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.ahd_pci_identity*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %12, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = call %struct.ahd_pci_identity* @ahd_find_pci_device(%struct.pci_dev* %16)
  store %struct.ahd_pci_identity* %17, %struct.ahd_pci_identity** %9, align 8
  %18 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %19 = icmp eq %struct.ahd_pci_identity* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %104

23:                                               ; preds = %2
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = call i32 @ahd_get_pci_bus(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = call i32 @ahd_get_pci_slot(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = call i32 @ahd_get_pci_function(%struct.pci_dev* %29)
  %31 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %30)
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call i8* @malloc(i64 %34, i32 %35, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %23
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call %struct.ahd_softc* @ahd_alloc(i32* null, i8* %47)
  store %struct.ahd_softc* %48, %struct.ahd_softc** %7, align 8
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %50 = icmp eq %struct.ahd_softc* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %104

54:                                               ; preds = %43
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @pci_enable_device(%struct.pci_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %60 = call i32 @ahd_free(%struct.ahd_softc* %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %104

63:                                               ; preds = %54
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_set_master(%struct.pci_dev* %64)
  %66 = load %struct.device*, %struct.device** %12, align 8
  %67 = call i64 @DMA_BIT_MASK(i32 32)
  %68 = call i64 @dma_set_mask(%struct.device* %66, i64 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %71 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %70, i32 0, i32 1
  store %struct.pci_dev* %69, %struct.pci_dev** %71, align 8
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %73 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %74 = call i32 @ahd_pci_config(%struct.ahd_softc* %72, %struct.ahd_pci_identity* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %79 = call i32 @ahd_free(%struct.ahd_softc* %78)
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %104

82:                                               ; preds = %63
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AHD_MULTI_FUNC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @PCI_FUNC(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %97 = call i32 @ahd_linux_pci_inherit_flags(%struct.ahd_softc* %96)
  br label %98

98:                                               ; preds = %95, %89, %82
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %101 = call i32 @pci_set_drvdata(%struct.pci_dev* %99, %struct.ahd_softc* %100)
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %103 = call i32 @ahd_linux_register_host(%struct.ahd_softc* %102, i32* @aic79xx_driver_template)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %77, %58, %51, %40, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.ahd_pci_identity* @ahd_find_pci_device(%struct.pci_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ahd_get_pci_bus(%struct.pci_dev*) #1

declare dso_local i32 @ahd_get_pci_slot(%struct.pci_dev*) #1

declare dso_local i32 @ahd_get_pci_function(%struct.pci_dev*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.ahd_softc* @ahd_alloc(i32*, i8*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @ahd_free(%struct.ahd_softc*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask(%struct.device*, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @ahd_pci_config(%struct.ahd_softc*, %struct.ahd_pci_identity*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @ahd_linux_pci_inherit_flags(%struct.ahd_softc*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ahd_softc*) #1

declare dso_local i32 @ahd_linux_register_host(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
