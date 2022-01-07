; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_reset_atmio16d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_reset_atmio16d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i64 }

@COM_REG_1 = common dso_local global i64 0, align 8
@COM_REG_2 = common dso_local global i64 0, align 8
@MUX_GAIN_REG = common dso_local global i64 0, align 8
@AM9513A_COM_REG = common dso_local global i64 0, align 8
@AM9513A_DATA_REG = common dso_local global i64 0, align 8
@AD_CLEAR_REG = common dso_local global i64 0, align 8
@INT2CLR_REG = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@adc_straight = common dso_local global i32 0, align 4
@DAC0_REG = common dso_local global i64 0, align 8
@DAC1_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @reset_atmio16d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_atmio16d(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @COM_REG_1, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outw(i32 0, i64 %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COM_REG_2, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outw(i32 0, i64 %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MUX_GAIN_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 0, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AM9513A_COM_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 65535, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AM9513A_COM_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 65519, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AM9513A_COM_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outw(i32 65303, i64 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AM9513A_DATA_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 61440, i64 %44)
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %78, %1
  %47 = load i32, i32* %3, align 4
  %48 = icmp sle i32 %47, 5
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 65280, %50
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AM9513A_COM_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %51, i64 %56)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AM9513A_DATA_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 4, i64 %62)
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 65288, %64
  %66 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AM9513A_COM_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outw(i32 %65, i64 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AM9513A_DATA_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 3, i64 %76)
  br label %78

78:                                               ; preds = %49
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %46

81:                                               ; preds = %46
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AM9513A_COM_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 65375, i64 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AD_CLEAR_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outw(i32 0, i64 %92)
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @INT2CLR_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i32 0, i64 %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COM_REG_1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outw(i32 %106, i64 %111)
  %113 = load i32, i32* @adc_straight, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DAC0_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outw(i32 2048, i64 %120)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DAC1_REG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outw(i32 2048, i64 %126)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
