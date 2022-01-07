; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_interrupt_pcl816_ai_mode13_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_interrupt_pcl816_ai_mode13_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@PCL816_STATUS = common dso_local global i64 0, align 8
@PCL816_STATUS_DRDY_MASK = common dso_local global i32 0, align 4
@PCL816_CLRINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"A/D mode1/3 IRQ without DRDY!\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCL816_AD_LO = common dso_local global i64 0, align 8
@PCL816_AD_HI = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl816_ai_mode13_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl816_ai_mode13_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i64 0
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  store i32 50, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %2
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCL816_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  %28 = load i32, i32* @PCL816_STATUS_DRDY_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %34

32:                                               ; preds = %21
  %33 = call i32 @udelay(i32 1)
  br label %17

34:                                               ; preds = %31, %17
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCL816_CLRINT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = call i32 @comedi_error(%struct.comedi_device* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = call i32 @pcl816_ai_cancel(%struct.comedi_device* %46, %struct.comedi_subdevice* %47)
  %49 = load i32, i32* @COMEDI_CB_EOA, align 4
  %50 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 8
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = call i32 @comedi_event(%struct.comedi_device* %58, %struct.comedi_subdevice* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %142

62:                                               ; preds = %34
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCL816_AD_LO, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inb(i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCL816_AD_HI, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @inb(i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @comedi_buf_put(%struct.TYPE_4__* %77, i32 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCL816_CLRINT, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 0, i64 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %62
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %62
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %128 = call i32 @pcl816_ai_cancel(%struct.comedi_device* %126, %struct.comedi_subdevice* %127)
  %129 = load i32, i32* @COMEDI_CB_EOA, align 4
  %130 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %125, %117
  br label %137

137:                                              ; preds = %136, %112
  %138 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %140 = call i32 @comedi_event(%struct.comedi_device* %138, %struct.comedi_subdevice* %139)
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %37
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pcl816_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
