; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20341_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20341_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, %union.pci20xxx_subdev_private* }
%union.pci20xxx_subdev_private = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@pci20341_timebase = common dso_local global i32* null, align 8
@pci20341_settling_time = common dso_local global i32* null, align 8
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@PCI20341_CHAN_NR = common dso_local global i32 0, align 4
@PCI20341_SCANLIST = common dso_local global i32 0, align 4
@pci20341_insn_read = common dso_local global i32 0, align 4
@pci20341_ranges = common dso_local global i32* null, align 8
@PCI20341_REPMODE = common dso_local global i32 0, align 4
@PCI20341_INIT = common dso_local global i32 0, align 4
@PCI20341_CONFIG_REG = common dso_local global i64 0, align 8
@PCI20341_PACER = common dso_local global i32 0, align 4
@PCI20341_MOD_STATUS = common dso_local global i64 0, align 8
@PCI20341_OPT_REG = common dso_local global i64 0, align 8
@PCI20341_SET_TIME_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @pci20341_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20341_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.pci20xxx_subdev_private*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 7
  %13 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %12, align 8
  store %union.pci20xxx_subdev_private* %13, %union.pci20xxx_subdev_private** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32*, i32** @pci20341_timebase, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %27 = bitcast %union.pci20xxx_subdev_private* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32*, i32** @pci20341_settling_time, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %35 = bitcast %union.pci20xxx_subdev_private* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SDF_READABLE, align 4
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PCI20341_CHAN_NR, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @PCI20341_SCANLIST, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @pci20341_insn_read, align 4
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  store i32 65535, i32* %53, align 8
  %54 = load i32*, i32** @pci20341_ranges, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %62 = bitcast %union.pci20xxx_subdev_private* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI20341_REPMODE, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @PCI20341_INIT, align 4
  %68 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %69 = bitcast %union.pci20xxx_subdev_private* %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI20341_CONFIG_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writeb(i32 %67, i64 %72)
  %74 = load i32, i32* @PCI20341_PACER, align 4
  %75 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %76 = bitcast %union.pci20xxx_subdev_private* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI20341_MOD_STATUS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writeb(i32 %74, i64 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %83 = bitcast %union.pci20xxx_subdev_private* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI20341_OPT_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb(i32 %81, i64 %86)
  %88 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %89 = bitcast %union.pci20xxx_subdev_private* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %9, align 8
  %93 = bitcast %union.pci20xxx_subdev_private* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCI20341_SET_TIME_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writeb(i32 %91, i64 %96)
  ret i32 0
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
