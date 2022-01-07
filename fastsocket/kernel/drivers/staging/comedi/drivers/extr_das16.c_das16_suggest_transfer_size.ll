; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_suggest_transfer_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_suggest_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64, i32, i64, i32, i32, i32, i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAS16_DMA_SIZE = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@sample_size = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @das16_suggest_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_suggest_transfer_size(%struct.comedi_device* %0, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DAS16_DMA_SIZE, align 4
  store i32 %12, i32* %3, align 4
  br label %86

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRIG_TIMER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 1000000000, %20
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRIG_TIMER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 1000000000, %29
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %18
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @sample_size, align 4
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %43, %45
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = udiv i32 %48, 3
  %50 = load i32, i32* @sample_size, align 4
  %51 = mul i32 %49, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @DAS16_DMA_SIZE, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @DAS16_DMA_SIZE, align 4
  %58 = load i32, i32* @DAS16_DMA_SIZE, align 4
  %59 = load i32, i32* @sample_size, align 4
  %60 = urem i32 %58, %59
  %61 = sub i32 %57, %60
  store i32 %61, i32* %5, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @sample_size, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @sample_size, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %56
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRIG_COUNT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %74, %69
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
