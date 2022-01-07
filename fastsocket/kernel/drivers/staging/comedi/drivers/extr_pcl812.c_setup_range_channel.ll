; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_setup_range_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_setup_range_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i8, i32, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCL812_MUX = common dso_local global i64 0, align 8
@PCL812_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i8)* @setup_range_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_range_channel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %11 = load i32, i32* %7, align 4
  %12 = call zeroext i8 @CR_CHAN(i32 %11)
  store i8 %12, i8* %9, align 1
  %13 = load i32, i32* %7, align 4
  %14 = call zeroext i8 @CR_RANGE(i32 %13)
  %15 = zext i8 %14 to i32
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i8, i8* %33, align 2
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %98

38:                                               ; preds = %29, %4
  %39 = load i8, i8* %9, align 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 1
  %42 = load i8, i8* %10, align 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8 %42, i8* %44, align 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, 48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  br label %75

59:                                               ; preds = %49
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, 32
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %9, align 1
  br label %74

69:                                               ; preds = %59
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, 16
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %9, align 1
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %38
  %77 = load i8, i8* %9, align 1
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCL812_MUX, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i8 zeroext %77, i64 %82)
  %84 = load i8, i8* %10, align 1
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PCL812_GAIN, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i8 zeroext %84, i64 %89)
  %91 = load i8, i8* %8, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %76
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @udelay(i32 %96)
  br label %98

98:                                               ; preds = %37, %93, %76
  ret void
}

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local zeroext i8 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
