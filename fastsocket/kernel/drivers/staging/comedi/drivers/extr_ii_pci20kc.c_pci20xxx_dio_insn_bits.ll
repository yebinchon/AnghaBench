; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI20000_DIO_0 = common dso_local global i64 0, align 8
@PCI20000_DIO_1 = common dso_local global i64 0, align 8
@PCI20000_DIO_2 = common dso_local global i64 0, align 8
@PCI20000_DIO_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci20xxx_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20xxx_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = lshr i32 %39, 0
  %41 = and i32 %40, 255
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI20000_DIO_0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %36, %4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 65280
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI20000_DIO_1, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writeb(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %52, %48
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 16711680
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI20000_DIO_2, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writeb(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %68, %64
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, -16777216
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = lshr i32 %87, 24
  %89 = and i32 %88, 255
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PCI20000_DIO_3, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writeb(i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %84, %80
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCI20000_DIO_0, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @readb(i64 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCI20000_DIO_1, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readb(i64 %109)
  %111 = shl i32 %110, 8
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCI20000_DIO_2, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readb(i64 %120)
  %122 = shl i32 %121, 16
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PCI20000_DIO_3, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @readb(i64 %131)
  %133 = shl i32 %132, 24
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  ret i32 2
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
