; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_onesample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_onesample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i64, i16*, i64, i64, i64, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI9118_AD_DATA = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16, i32, i16)* @interrupt_pci9118_ai_onesample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_pci9118_ai_onesample(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16 zeroext %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %27 = load i16, i16* %8, align 2
  %28 = call i64 @pci9118_decode_error_status(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, i16 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %107

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI9118_AD_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call signext i16 @inw(i64 %37)
  store i16 %38, i16* %11, align 2
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = load i16, i16* %11, align 2
  %41 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %39, i16 signext %40)
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = urem i64 %65, %60
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %57
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = call i32 @pci9118_ai_cancel(%struct.comedi_device* %84, %struct.comedi_subdevice* %85)
  %87 = load i32, i32* @COMEDI_CB_EOA, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %87
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %83, %75
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %32
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %106 = call i32 @comedi_event(%struct.comedi_device* %104, %struct.comedi_subdevice* %105)
  br label %107

107:                                              ; preds = %30, %103, %96
  ret void
}

declare dso_local i64 @pci9118_decode_error_status(%struct.comedi_device*, %struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

declare dso_local i32 @pci9118_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
