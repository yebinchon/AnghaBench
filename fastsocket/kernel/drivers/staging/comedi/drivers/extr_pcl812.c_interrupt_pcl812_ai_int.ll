; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_interrupt_pcl812_ai_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_interrupt_pcl812_ai_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64 }
%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@ACL8216_STATUS = common dso_local global i64 0, align 8
@ACL8216_DRDY = common dso_local global i32 0, align 4
@PCL812_AD_HI = common dso_local global i64 0, align 8
@PCL812_DRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"comedi%d: pcl812: (%s at 0x%lx) A/D cmd IRQ without DRDY!\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCL812_AD_LO = common dso_local global i64 0, align 8
@PCL812_CLRINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl812_ai_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl812_ai_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8 1, i8* %6, align 1
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i64 0
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %10, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  store i32 50, i32* %8, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  store i32 65535, i32* %7, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACL8216_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  %37 = load i32, i32* @ACL8216_DRDY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  store i8 0, i8* %6, align 1
  br label %43

41:                                               ; preds = %30
  %42 = call i32 @udelay(i32 1)
  br label %26

43:                                               ; preds = %40, %26
  br label %63

44:                                               ; preds = %2
  store i32 4095, i32* %7, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCL812_AD_HI, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inb(i64 %54)
  %56 = load i32, i32* @PCL812_DRDY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store i8 0, i8* %6, align 1
  br label %62

60:                                               ; preds = %49
  %61 = call i32 @udelay(i32 1)
  br label %45

62:                                               ; preds = %59, %45
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i8, i8* %6, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i64 %75)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %79 = call i32 @pcl812_ai_cancel(%struct.comedi_device* %77, %struct.comedi_subdevice* %78)
  %80 = load i32, i32* @COMEDI_CB_EOA, align 4
  %81 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %91 = call i32 @comedi_event(%struct.comedi_device* %89, %struct.comedi_subdevice* %90)
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %3, align 4
  br label %161

93:                                               ; preds = %63
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCL812_AD_HI, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @inb(i64 %101)
  %103 = shl i32 %102, 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %105 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PCL812_AD_LO, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @inb(i64 %108)
  %110 = or i32 %103, %109
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %110, %111
  %113 = call i32 @comedi_buf_put(%struct.TYPE_4__* %96, i32 %112)
  %114 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PCL812_CLRINT, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outb(i32 0, i64 %118)
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %93
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %126
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %135
  %144 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %146 = call i32 @pcl812_ai_cancel(%struct.comedi_device* %144, %struct.comedi_subdevice* %145)
  %147 = load i32, i32* @COMEDI_CB_EOA, align 4
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %143, %135
  br label %155

155:                                              ; preds = %154, %126
  br label %156

156:                                              ; preds = %155, %93
  %157 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %159 = call i32 @comedi_event(%struct.comedi_device* %157, %struct.comedi_subdevice* %158)
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %66
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

declare dso_local i32 @pcl812_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
