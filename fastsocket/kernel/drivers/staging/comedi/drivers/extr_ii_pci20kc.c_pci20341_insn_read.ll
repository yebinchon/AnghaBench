; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20341_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20341_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %union.pci20xxx_subdev_private* }
%union.pci20xxx_subdev_private = type { i64 }
%struct.comedi_insn = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI20341_LCHAN_ADDR_REG = common dso_local global i64 0, align 8
@PCI20341_DAISY_CHAIN = common dso_local global i32 0, align 4
@PCI20341_MUX = common dso_local global i32 0, align 4
@PCI20341_CHAN_LIST = common dso_local global i64 0, align 8
@PCI20341_CC_RESET = common dso_local global i64 0, align 8
@PCI20341_CHAN_RESET = common dso_local global i64 0, align 8
@PCI20341_SOFT_PACER = common dso_local global i64 0, align 8
@PCI20341_STATUS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"comedi%d:  pci20xxx: AI interrupt channel %i polling exit !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI20341_LDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci20341_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20341_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.pci20xxx_subdev_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %19, align 8
  store %union.pci20xxx_subdev_private* %20, %union.pci20xxx_subdev_private** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %22 = bitcast %union.pci20xxx_subdev_private* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI20341_LCHAN_ADDR_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writeb(i32 1, i64 %25)
  %27 = load i32, i32* @PCI20341_DAISY_CHAIN, align 4
  %28 = load i32, i32* @PCI20341_MUX, align 4
  %29 = or i32 %27, %28
  %30 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %31 = bitcast %union.pci20xxx_subdev_private* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 3
  %35 = or i32 %29, %34
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_CHAN(i32 %38)
  %40 = or i32 %35, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %43 = bitcast %union.pci20xxx_subdev_private* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI20341_CHAN_LIST, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %41, i64 %46)
  %48 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %49 = bitcast %union.pci20xxx_subdev_private* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI20341_CC_RESET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writeb(i32 0, i64 %52)
  %54 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %55 = bitcast %union.pci20xxx_subdev_private* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI20341_CHAN_RESET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i32 0, i64 %58)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %139, %4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %63 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %142

66:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  %67 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %68 = bitcast %union.pci20xxx_subdev_private* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI20341_SOFT_PACER, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i8* @readb(i64 %71)
  %73 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %74 = bitcast %union.pci20xxx_subdev_private* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI20341_STATUS_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i8* @readb(i64 %77)
  %79 = ptrtoint i8* %78 to i8
  store i8 %79, i8* %15, align 1
  br label %80

80:                                               ; preds = %89, %66
  %81 = load i8, i8* %15, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp slt i32 %82, 128
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %85, 100
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i1 [ false, %80 ], [ %86, %84 ]
  br i1 %88, label %89, label %99

89:                                               ; preds = %87
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %93 = bitcast %union.pci20xxx_subdev_private* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCI20341_STATUS_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i8* @readb(i64 %96)
  %98 = ptrtoint i8* %97 to i8
  store i8 %98, i8* %15, align 1
  br label %80

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = icmp uge i32 %100, 100
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %144

110:                                              ; preds = %99
  %111 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %112 = bitcast %union.pci20xxx_subdev_private* %111 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI20341_LDATA, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i8* @readb(i64 %115)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load %union.pci20xxx_subdev_private*, %union.pci20xxx_subdev_private** %10, align 8
  %119 = bitcast %union.pci20xxx_subdev_private* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCI20341_LDATA, align 8
  %122 = add nsw i64 %120, %121
  %123 = add nsw i64 %122, 1
  %124 = call i8* @readb(i64 %123)
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 256, %127
  %129 = add nsw i32 %126, %128
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add i32 %130, 32768
  %132 = and i32 %131, 65535
  %133 = trunc i32 %132 to i16
  %134 = sext i16 %133 to i32
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %110
  %140 = load i32, i32* %11, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %60

142:                                              ; preds = %60
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %102
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
