; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_pwm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@M_Offset_Cal_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_m_series_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_pwm_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %152 [
    i32 131, label %15
    i32 132, label %148
  ]

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %53 [
    i32 129, label %19
    i32 130, label %32
    i32 128, label %40
  ]

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 2
  %27 = add i32 %22, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = udiv i32 %27, %30
  store i32 %31, i32* %10, align 4
  br label %56

32:                                               ; preds = %15
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %35, %38
  store i32 %39, i32* %10, align 4
  br label %56

40:                                               ; preds = %15
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %43, %46
  %48 = sub i32 %47, 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = udiv i32 %48, %51
  store i32 %52, i32* %10, align 4
  br label %56

53:                                               ; preds = %15
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %155

56:                                               ; preds = %40, %32, %19
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %94 [
    i32 129, label %60
    i32 130, label %73
    i32 128, label %81
  ]

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 2
  %68 = add i32 %63, %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = udiv i32 %68, %71
  store i32 %72, i32* %11, align 4
  br label %97

73:                                               ; preds = %56
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = udiv i32 %76, %79
  store i32 %80, i32* %11, align 4
  br label %97

81:                                               ; preds = %56
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %84, %87
  %89 = sub i32 %88, 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = udiv i32 %89, %92
  store i32 %93, i32* %11, align 4
  br label %97

94:                                               ; preds = %56
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %155

97:                                               ; preds = %81, %73, %60
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul i32 %98, %101
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %108, %111
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %107, %97
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul i32 %118, %121
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul i32 %125, %128
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %155

134:                                              ; preds = %107
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @MSeries_Cal_PWM_High_Time_Bits(i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @MSeries_Cal_PWM_Low_Time_Bits(i32 %137)
  %139 = or i32 %136, %138
  %140 = load i32, i32* @M_Offset_Cal_PWM, align 4
  %141 = call i32 @ni_writel(i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  store i32 5, i32* %5, align 4
  br label %155

148:                                              ; preds = %4
  %149 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @ni_get_pwm_config(%struct.comedi_device* %149, i32* %150)
  store i32 %151, i32* %5, align 4
  br label %155

152:                                              ; preds = %4
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %152, %148, %134, %117, %94, %53
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @MSeries_Cal_PWM_High_Time_Bits(i32) #1

declare dso_local i32 @MSeries_Cal_PWM_Low_Time_Bits(i32) #1

declare dso_local i32 @ni_get_pwm_config(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
