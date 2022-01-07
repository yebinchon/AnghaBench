; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_init_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }

@DMA_CH5 = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DMA_CH6 = common dso_local global i32 0, align 4
@DMA_CH7 = common dso_local global i32 0, align 4
@DMA_CH5_CH6 = common dso_local global i32 0, align 4
@DMA_CH6_CH7 = common dso_local global i32 0, align 4
@DMA_CH7_CH5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c" only supports dma channels 5 through 7\0A Dual dma only allows the following combinations:\0A dma 5,6 / 6,7 / or 7,5\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@driver_das1800 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c" failed to allocate dma channel %i\0A\00", align 1
@DMA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @das1800_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_init_dma(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %162

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %162

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 7
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 4
  %21 = or i32 %18, %20
  switch i32 %21, label %58 [
    i32 5, label %22
    i32 6, label %28
    i32 7, label %34
    i32 101, label %40
    i32 118, label %46
    i32 87, label %52
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @DMA_CH5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %62

28:                                               ; preds = %16
  %29 = load i32, i32* @DMA_CH6, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %62

34:                                               ; preds = %16
  %35 = load i32, i32* @DMA_CH7, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %62

40:                                               ; preds = %16
  %41 = load i32, i32* @DMA_CH5_CH6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %62

46:                                               ; preds = %16
  %47 = load i32, i32* @DMA_CH6_CH7, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %62

52:                                               ; preds = %16
  %53 = load i32, i32* @DMA_CH7_CH5, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %62

58:                                               ; preds = %16
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %163

62:                                               ; preds = %52, %46, %40, %34, %28, %22
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @driver_das1800, i32 0, i32 0), align 4
  %65 = call i64 @request_dma(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %163

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @driver_das1800, i32 0, i32 0), align 4
  %84 = call i64 @request_dma(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %163

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %72
  %96 = load i32, i32* @DMA_BUF_SIZE, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = load i32, i32* @GFP_DMA, align 4
  %99 = or i32 %97, %98
  %100 = call i8* @kmalloc(i32 %96, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %163

111:                                              ; preds = %95
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %111
  %120 = load i32, i32* @DMA_BUF_SIZE, align 4
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = load i32, i32* @GFP_DMA, align 4
  %123 = or i32 %121, %122
  %124 = call i8* @kmalloc(i32 %120, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %163

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %111
  %137 = call i64 (...) @claim_dma_lock()
  store i64 %137, i64* %8, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @disable_dma(i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DMA_MODE_READ, align 4
  %146 = call i32 @set_dma_mode(i32 %144, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %136
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @disable_dma(i32 %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DMA_MODE_READ, align 4
  %158 = call i32 @set_dma_mode(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %149, %136
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @release_dma_lock(i64 %160)
  br label %162

162:                                              ; preds = %159, %13, %3
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %132, %108, %86, %67, %58
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @request_dma(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
