; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Cal_Sel_Pos_Mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Cal_Sel_Neg_Mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Mode_Mux_Mask = common dso_local global i32 0, align 4
@MSeries_AO_Bypass_AO_Cal_Sel_Mask = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@ni_reg_6143 = common dso_local global i32 0, align 4
@Calibration_Channel_6143 = common dso_local global i32 0, align 4
@ni_reg_611x = common dso_local global i32 0, align 4
@Cal_Gain_Select_611x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ai_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %112

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %108 [
    i32 128, label %24
    i32 129, label %30
  ]

24:                                               ; preds = %20
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ni_ai_config_analog_trig(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, %struct.comedi_insn* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %112

30:                                               ; preds = %20
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %32 = load i32, i32* @ni_reg_m_series_mask, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MSeries_AI_Bypass_Cal_Sel_Pos_Mask, align 4
  %40 = load i32, i32* @MSeries_AI_Bypass_Cal_Sel_Neg_Mask, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MSeries_AI_Bypass_Mode_Mux_Mask, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MSeries_AO_Bypass_AO_Cal_Sel_Mask, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %38, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %112

52:                                               ; preds = %35
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %107

58:                                               ; preds = %30
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %60 = load i32, i32* @ni_reg_6143, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ugt i32 %67, 15
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %112

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @Calibration_Channel_6143, align 4
  %78 = call i32 @ni_writew(i32 %76, i32 %77)
  br label %106

79:                                               ; preds = %58
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  store i32 %83, i32* %11, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = lshr i32 %86, 4
  %88 = and i32 %87, 255
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp uge i32 %89, 8
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %112

94:                                               ; preds = %79
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %99 = load i32, i32* @ni_reg_611x, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @Cal_Gain_Select_611x, align 4
  %104 = call i32 @ni_writeb(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %52
  store i32 2, i32* %5, align 4
  br label %112

108:                                              ; preds = %20
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %107, %91, %69, %49, %24, %17
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @ni_ai_config_analog_trig(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

declare dso_local i32 @ni_writew(i32, i32) #1

declare dso_local i32 @ni_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
