; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_segment_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_segment_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.hw_fifo_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.hw_fifo_info* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@set_ai_fifo_segment_length.increment_size = internal constant i32 256, align 4
@FIFO_SIZE_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"set hardware fifo segment length to %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @set_ai_fifo_segment_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ai_fifo_segment_length(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_fifo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.TYPE_4__* @board(%struct.comedi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %10, align 8
  store %struct.hw_fifo_info* %11, %struct.hw_fifo_info** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 256
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 256, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %5, align 8
  %18 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %5, align 8
  %23 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 128
  %28 = udiv i32 %27, 256
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %5, align 8
  %33 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %5, align 8
  %37 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FIFO_SIZE_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writew(i32 %54, i64 %60)
  %62 = load i32, i32* %6, align 4
  %63 = mul i32 %62, 256
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %73 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local %struct.TYPE_3__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
