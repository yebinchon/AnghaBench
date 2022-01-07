; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32 }

@SATA_PMP_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid nr_ports\00", align 1
@ATA_FLAG_AN = common dso_local global i32 0, align 4
@SATA_PMP_GSCR_FEAT = common dso_local global i64 0, align 8
@SATA_PMP_FEAT_NOTIFY = common dso_local global i32 0, align 4
@ATA_DFLAG_AN = common dso_local global i32 0, align 4
@SATA_PMP_GSCR_ERROR_EN = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to write GSCR_ERROR_EN\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Port Multiplier %s, 0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\0A\00", align 1
@SATA_PMP_GSCR_FEAT_EN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"Asynchronous notification not supported, hotplug won't\0A         work on fan-out ports. Use warm-plug instead.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"failed to configure Port Multiplier (%s, Emask=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @sata_pmp_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_configure(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %6, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sata_pmp_gscr_ports(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %100

31:                                               ; preds = %24
  %32 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_FLAG_AN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* @SATA_PMP_GSCR_FEAT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SATA_PMP_FEAT_NOTIFY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* @ATA_DFLAG_AN, align 4
  %48 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %49 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %38, %31
  %53 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* @SATA_PMP_GSCR_ERROR_EN, align 4
  %57 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %58 = call i32 @sata_pmp_write(%struct.TYPE_2__* %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %100

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @sata_pmp_spec_rev_str(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @sata_pmp_gscr_vendor(i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @sata_pmp_gscr_devid(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @sata_pmp_gscr_rev(i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* @SATA_PMP_GSCR_FEAT_EN, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* @SATA_PMP_GSCR_FEAT, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %68, i32 %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73, i32 %75, i32 %77, i32 %78, i32 %82, i32 %86)
  %88 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %89 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ATA_DFLAG_AN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %67
  %95 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %96 = load i32, i32* @KERN_INFO, align 4
  %97 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %95, i32 %96, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %67
  br label %99

99:                                               ; preds = %98, %64
  store i32 0, i32* %3, align 4
  br label %107

100:                                              ; preds = %61, %28
  %101 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %102 = load i32, i32* @KERN_ERR, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %101, i32 %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %99
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @sata_pmp_gscr_ports(i32*) #1

declare dso_local i32 @sata_pmp_write(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

declare dso_local i32 @sata_pmp_spec_rev_str(i32*) #1

declare dso_local i32 @sata_pmp_gscr_vendor(i32*) #1

declare dso_local i32 @sata_pmp_gscr_devid(i32*) #1

declare dso_local i32 @sata_pmp_gscr_rev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
