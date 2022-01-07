; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (%struct.comedi_device*, i64, i32, i32, i32)*, i64, i32, i32, i64, i64 }
%struct.comedi_device = type { i64, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PCI9118_INTSRC = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@ANY_S593X_INT = common dso_local global i32 0, align 4
@PCI9118_ADSTAT = common dso_local global i64 0, align 8
@AdStatus_DTH = common dso_local global i32 0, align 4
@Int_DTrg = common dso_local global i32 0, align 4
@START_AI_EXT = common dso_local global i32 0, align 4
@STOP_AI_EXT = common dso_local global i32 0, align 4
@EXTTRG_AI = common dso_local global i32 0, align 4
@PCI9118_ADCNTRL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pci9118 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pci9118(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %158

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI9118_INTSRC, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inl(i64 %23)
  %25 = and i32 %24, 15
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inl(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ANY_S593X_INT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %158

41:                                               ; preds = %34, %18
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, 16711680
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outl(i32 %43, i64 %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI9118_ADSTAT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inw(i64 %54)
  %56 = and i32 %55, 511
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %156

61:                                               ; preds = %41
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %143

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AdStatus_DTH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %142

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @Int_DTrg, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %142

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @START_AI_EXT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %76
  %84 = load i32, i32* @START_AI_EXT, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @STOP_AI_EXT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %83
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = load i32, i32* @EXTTRG_AI, align 4
  %99 = call i32 @pci9118_exttrg_del(%struct.comedi_device* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %83
  %101 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @start_pacer(%struct.comedi_device* %101, i64 %104, i32 %107, i32 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outl(i32 %114, i64 %119)
  br label %141

121:                                              ; preds = %76
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @STOP_AI_EXT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load i32, i32* @STOP_AI_EXT, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %136 = load i32, i32* @EXTTRG_AI, align 4
  %137 = call i32 @pci9118_exttrg_del(%struct.comedi_device* %135, i32 %136)
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %128, %121
  br label %141

141:                                              ; preds = %140, %100
  br label %142

142:                                              ; preds = %141, %71, %66
  br label %143

143:                                              ; preds = %142, %61
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32 (%struct.comedi_device*, i64, i32, i32, i32)*, i32 (%struct.comedi_device*, i64, i32, i32, i32)** %145, align 8
  %147 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 0
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 %146(%struct.comedi_device* %147, i64 %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %143, %41
  %157 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %39, %16
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pci9118_exttrg_del(%struct.comedi_device*, i32) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
