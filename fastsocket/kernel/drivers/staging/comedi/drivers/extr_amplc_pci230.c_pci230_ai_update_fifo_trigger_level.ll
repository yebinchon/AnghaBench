; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_update_fifo_trigger_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_update_fifo_trigger_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i16, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI230_ADC_FIFOLEVEL_HALFFULL = common dso_local global i32 0, align 4
@PCI230_ADC_INT_FIFO_HALF = common dso_local global i16 0, align 2
@PCI230P_ADCFFTH = common dso_local global i64 0, align 8
@PCI230P_ADC_INT_FIFO_THRESH = common dso_local global i16 0, align 2
@PCI230_ADC_INT_FIFO_NEMPTY = common dso_local global i16 0, align 2
@PCI230_ADC_INT_FIFO_MASK = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_update_fifo_trigger_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.comedi_cmd* %13, %struct.comedi_cmd** %5, align 8
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub i32 %24, %27
  store i32 %28, i32* %7, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %34, %29
  %45 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %45, i32* %7, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul i32 %49, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub i32 %51, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %46, %44
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i16, i16* @PCI230_ADC_INT_FIFO_HALF, align 2
  store i16 %62, i16* %8, align 2
  br label %94

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = trunc i32 %81 to i16
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI230P_ADCFFTH, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outw(i16 zeroext %82, i64 %87)
  br label %89

89:                                               ; preds = %77, %71
  %90 = load i16, i16* @PCI230P_ADC_INT_FIFO_THRESH, align 2
  store i16 %90, i16* %8, align 2
  br label %93

91:                                               ; preds = %66, %63
  %92 = load i16, i16* @PCI230_ADC_INT_FIFO_NEMPTY, align 2
  store i16 %92, i16* %8, align 2
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %61
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i16, i16* %96, align 4
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @PCI230_ADC_INT_FIFO_MASK, align 2
  %100 = zext i16 %99 to i32
  %101 = xor i32 %100, -1
  %102 = and i32 %98, %101
  %103 = load i16, i16* %8, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %9, align 2
  %107 = load i16, i16* %9, align 2
  %108 = zext i16 %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i16, i16* %110, align 4
  %112 = zext i16 %111 to i32
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %94
  %115 = load i16, i16* %9, align 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  store i16 %115, i16* %117, align 4
  %118 = load i16, i16* %9, align 2
  %119 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PCI230_ADCCON, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outw(i16 zeroext %118, i64 %123)
  br label %125

125:                                              ; preds = %114, %94
  ret void
}

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
