; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i64, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCL812_MODE = common dso_local global i64 0, align 8
@PCL812_SOFTTRIG = common dso_local global i64 0, align 8
@PCL812_AD_HI = common dso_local global i64 0, align 8
@PCL812_DRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"comedi%d: pcl812: (%s at 0x%lx) A/D insn read timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@PCL812_AD_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcl812_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, 1
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCL812_MODE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @setup_range_channel(%struct.comedi_device* %23, %struct.comedi_subdevice* %24, i32 %27, i32 1)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %98, %4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %32 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %29
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCL812_SOFTTRIG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 255, i64 %40)
  %42 = call i32 @udelay(i32 5)
  store i32 50, i32* %11, align 4
  br label %43

43:                                               ; preds = %59, %35
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCL812_AD_HI, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @PCL812_DRDY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %83

59:                                               ; preds = %47
  %60 = call i32 @udelay(i32 1)
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i64 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCL812_MODE, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %74, i64 %79)
  %81 = load i32, i32* @ETIME, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %112

83:                                               ; preds = %58
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 15
  %86 = shl i32 %85, 8
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCL812_AD_LO, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @inb(i64 %91)
  %93 = or i32 %86, %92
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %29

101:                                              ; preds = %29
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCL812_MODE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outb(i32 %104, i64 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %101, %61
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @setup_range_channel(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
