; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20006_insn_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20006_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %union.pci20xxx_subdev_private* }
%union.pci20xxx_subdev_private = type { i64 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_2__ = type { i32* }

@PCI20006_LCHAN0 = common dso_local global i64 0, align 8
@PCI20006_STROBE0 = common dso_local global i64 0, align 8
@PCI20006_LCHAN1 = common dso_local global i64 0, align 8
@PCI20006_STROBE1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c" comedi%d: pci20xxx: ao channel Error!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci20006_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20006_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.pci20xxx_subdev_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %15, align 8
  store %union.pci20xxx_subdev_private* %16, %union.pci20xxx_subdev_private** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %21 = bitcast %union.pci20xxx_subdev_private* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  store i32 %19, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 32768
  %34 = and i32 %33, 65535
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 255
  store i32 %39, i32* %11, align 4
  %40 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %41 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CR_CHAN(i32 %42)
  switch i32 %43, label %88 [
    i32 0, label %44
    i32 1, label %66
  ]

44:                                               ; preds = %4
  %45 = load i32, i32* %12, align 4
  %46 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %47 = bitcast %union.pci20xxx_subdev_private* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI20006_LCHAN0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 %45, i64 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %54 = bitcast %union.pci20xxx_subdev_private* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCI20006_LCHAN0, align 8
  %57 = add nsw i64 %55, %56
  %58 = add nsw i64 %57, 1
  %59 = call i32 @writeb(i32 %52, i64 %58)
  %60 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %61 = bitcast %union.pci20xxx_subdev_private* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI20006_STROBE0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 0, i64 %64)
  br label %95

66:                                               ; preds = %4
  %67 = load i32, i32* %12, align 4
  %68 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %69 = bitcast %union.pci20xxx_subdev_private* %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI20006_LCHAN1, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writeb(i32 %67, i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %76 = bitcast %union.pci20xxx_subdev_private* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI20006_LCHAN1, align 8
  %79 = add nsw i64 %77, %78
  %80 = add nsw i64 %79, 1
  %81 = call i32 @writeb(i32 %74, i64 %80)
  %82 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %83 = bitcast %union.pci20xxx_subdev_private* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI20006_STROBE1, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb(i32 0, i64 %86)
  br label %95

88:                                               ; preds = %4
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %96

95:                                               ; preds = %66, %44
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
