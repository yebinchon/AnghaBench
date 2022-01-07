; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@PCL818_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"A/D mode1/3 IRQ without DRDY!\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCL818_AD_LO = common dso_local global i64 0, align 8
@PCL818_AD_HI = common dso_local global i64 0, align 8
@PCL818_CLRINT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"comedi: A/D mode1/3 IRQ - channel dropout %x!=%x !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl818_ai_mode13_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl818_ai_mode13_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i64 0
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %7, align 8
  store i32 50, i32* %9, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCL818_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  %27 = and i32 %26, 16
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %57

30:                                               ; preds = %20
  %31 = call i32 @udelay(i32 1)
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCL818_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 0, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = call i32 @comedi_error(%struct.comedi_device* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %41, %struct.comedi_subdevice* %42)
  %44 = load i32, i32* @COMEDI_CB_EOA, align 4
  %45 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = call i32 @comedi_event(%struct.comedi_device* %53, %struct.comedi_subdevice* %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %162

57:                                               ; preds = %29
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCL818_AD_LO, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inb(i64 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCL818_AD_HI, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inb(i64 %71)
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 4
  %76 = or i32 %73, %75
  %77 = call i32 @comedi_buf_put(%struct.TYPE_4__* %66, i32 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCL818_CLRINT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 15
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %85, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %57
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 15
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %105)
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %109 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %107, %struct.comedi_subdevice* %108)
  %110 = load i32, i32* @COMEDI_CB_EOA, align 4
  %111 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 8
  %119 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %121 = call i32 @comedi_event(%struct.comedi_device* %119, %struct.comedi_subdevice* %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %162

123:                                              ; preds = %57
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %148 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %146, %struct.comedi_subdevice* %147)
  %149 = load i32, i32* @COMEDI_CB_EOA, align 4
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %149
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %145, %140
  br label %157

157:                                              ; preds = %156, %135
  %158 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %159 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %160 = call i32 @comedi_event(%struct.comedi_device* %158, %struct.comedi_subdevice* %159)
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %157, %95, %32
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pcl818_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
