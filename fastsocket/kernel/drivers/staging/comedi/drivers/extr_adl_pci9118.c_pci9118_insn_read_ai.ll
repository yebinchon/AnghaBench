; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_insn_read_ai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_insn_read_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AdControl_Int = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AdFunction_PDTrg = common dso_local global i32 0, align 4
@AdFunction_PETrg = common dso_local global i32 0, align 4
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCI9118_DELFIFO = common dso_local global i64 0, align 8
@PCI9118_SOFTTRG = common dso_local global i64 0, align 8
@PCI9118_ADSTAT = common dso_local global i64 0, align 8
@AdStatus_ADrdy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"A/D insn timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@PCI9118_AD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9118_insn_read_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_insn_read_ai(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @AdControl_Int, align 4
  %13 = and i32 %12, 255
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @AdFunction_PDTrg, align 4
  %17 = load i32, i32* @AdFunction_PETrg, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI9118_ADFUNC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outl(i32 %23, i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = call i32 @setup_channel_list(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, i32 1, i32* %33, i32 0, i32 0, i32 0, i32 0, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %135

39:                                               ; preds = %4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI9118_DELFIFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outl(i32 0, i64 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %124, %39
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %127

52:                                               ; preds = %46
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCI9118_SOFTTRG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outw(i32 0, i64 %57)
  %59 = call i32 @udelay(i32 2)
  store i32 100, i32* %11, align 4
  br label %60

60:                                               ; preds = %75, %52
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCI9118_ADSTAT, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @inl(i64 %69)
  %71 = load i32, i32* @AdStatus_ADrdy, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %92

75:                                               ; preds = %64
  %76 = call i32 @udelay(i32 1)
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = call i32 @comedi_error(%struct.comedi_device* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCI9118_DELFIFO, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outl(i32 0, i64 %88)
  %90 = load i32, i32* @ETIME, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %135

92:                                               ; preds = %74
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PCI9118_AD_DATA, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @inl(i64 %102)
  %104 = and i32 %103, 65535
  %105 = xor i32 %104, 32768
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %123

110:                                              ; preds = %92
  %111 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI9118_AD_DATA, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @inw(i64 %115)
  %117 = ashr i32 %116, 4
  %118 = and i32 %117, 4095
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %110, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %46

127:                                              ; preds = %46
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PCI9118_DELFIFO, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outl(i32 0, i64 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %127, %77, %36
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
