; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_insn_counter_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_insn_counter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@PCI171x_CNT0 = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI171x_CNTCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci171x_insn_counter_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci171x_insn_counter_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 65280
  %21 = lshr i32 %20, 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI171x_CNT0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %22, i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI171x_CNT0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 %29, i64 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %4
  store i32 226, i32* %11, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI171x_CNTCTRL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outw(i32 %42, i64 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI171x_CNT0, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inw(i64 %53)
  %55 = and i32 %54, 255
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 64
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %41, label %60

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %4
  %62 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  ret i32 %64
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
