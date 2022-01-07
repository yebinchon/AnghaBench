; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i64*, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_ai_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_poll(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %37, %15
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %21, 10
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @get_dma_residue(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_dma_residue(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %3, align 4
  br label %113

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 1, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %64, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i32 0, i32* %3, align 4
  br label %113

76:                                               ; preds = %49
  %77 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @transfer_from_dma_buf(%struct.comedi_device* %77, %struct.comedi_subdevice* %78, i8* %89, i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %106, %111
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %76, %71, %44, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @transfer_from_dma_buf(%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
