; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32*, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"comedi%d: das16: remove\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DAS16_DMA_SIZE = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @das16_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = call i32 @das16_reset(%struct.comedi_device* %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 4
  %20 = call i32 @subdev_8255_cleanup(%struct.comedi_device* %15, i64 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %89

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %28
  %38 = load i32, i32* @DAS16_DMA_SIZE, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pci_free_consistent(i32* null, i32 %38, i64 %45, i32 %52)
  br label %54

54:                                               ; preds = %37, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @free_dma(i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @kfree(i64 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @kfree(i64 %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %21
  %90 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %99 = call i32 @free_irq(i64 %97, %struct.comedi_device* %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 1024
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @release_region(i64 %113, i32 %116)
  br label %132

118:                                              ; preds = %105
  %119 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @release_region(i64 %121, i32 16)
  %123 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1024
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 1023
  %131 = call i32 @release_region(i64 %126, i32 %130)
  br label %132

132:                                              ; preds = %118, %110
  br label %133

133:                                              ; preds = %132, %100
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @das16_reset(%struct.comedi_device*) #1

declare dso_local i32 @subdev_8255_cleanup(%struct.comedi_device*, i64) #1

declare dso_local i32 @pci_free_consistent(i32*, i32, i64, i32) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
