; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eisa_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ahc_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AHC_EISA_SLOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ahc_eisa:%d\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aic7xxx_driver_template = common dso_local global i32 0, align 4
@aic7770_ident_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @aic7770_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7770_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.eisa_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.eisa_device* @to_eisa_device(%struct.device* %10)
  store %struct.eisa_device* %11, %struct.eisa_device** %4, align 8
  %12 = load %struct.eisa_device*, %struct.eisa_device** %4, align 8
  %13 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AHC_EISA_SLOT_OFFSET, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 12
  %20 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call i8* @malloc(i64 %23, i32 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.ahc_softc* @ahc_alloc(i32* @aic7xxx_driver_template, i8* %35)
  store %struct.ahc_softc* %36, %struct.ahc_softc** %6, align 8
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %38 = icmp eq %struct.ahc_softc* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %31
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %43 = load i64, i64* @aic7770_ident_table, align 8
  %44 = load %struct.eisa_device*, %struct.eisa_device** %4, align 8
  %45 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @aic7770_config(%struct.ahc_softc* %42, i64 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %55 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %58 = call i32 @ahc_free(%struct.ahc_softc* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %41
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %63 = call i32 @dev_set_drvdata(%struct.device* %61, %struct.ahc_softc* %62)
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %65 = call i32 @ahc_linux_register_host(%struct.ahc_softc* %64, i32* @aic7xxx_driver_template)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %53, %39, %29
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.eisa_device* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.ahc_softc* @ahc_alloc(i32*, i8*) #1

declare dso_local i32 @aic7770_config(%struct.ahc_softc*, i64, i32) #1

declare dso_local i32 @ahc_free(%struct.ahc_softc*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ahc_softc*) #1

declare dso_local i32 @ahc_linux_register_host(%struct.ahc_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
