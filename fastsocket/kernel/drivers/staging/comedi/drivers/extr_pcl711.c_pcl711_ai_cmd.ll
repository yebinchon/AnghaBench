; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32* }

@TRIG_TIMER = common dso_local global i64 0, align 8
@i8253_osc_base = common dso_local global i32 0, align 4
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@PCL711_CTRCTL = common dso_local global i64 0, align 8
@PCL711_CTR1 = common dso_local global i64 0, align 8
@PCL711_CTR2 = common dso_local global i64 0, align 8
@PCL711_CLRINTR = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCL711_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl711_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl711_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.comedi_cmd* %11, %struct.comedi_cmd** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pcl711_set_changain(%struct.comedi_device* %12, i32 %17)
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRIG_TIMER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %2
  %25 = load i32, i32* @i8253_osc_base, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %29 = call i32 @i8253_cascade_ns_to_timer(i32 %25, i32* %5, i32* %6, i32* %27, i32 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCL711_CTRCTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 116, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCL711_CTR1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCL711_CTR1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCL711_CTRCTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 180, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 255
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCL711_CTR2, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PCL711_CTR2, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCL711_CLRINTR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 0, i64 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 6
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCL711_MODE, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i32 %85, i64 %90)
  br label %103

92:                                               ; preds = %2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 3
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCL711_MODE, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 %96, i64 %101)
  br label %103

103:                                              ; preds = %92, %24
  ret i32 0
}

declare dso_local i32 @pcl711_set_changain(%struct.comedi_device*, i32) #1

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
