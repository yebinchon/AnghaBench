; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_control0_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_control0_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@DAC_ENABLE_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_ENABLE_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_SELECT_BIT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@WAVEFORM_TRIG_EXT_BITS = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@WAVEFORM_TRIG_FALLING_BIT = common dso_local global i32 0, align 4
@WAVEFORM_TRIG_SOFT_BITS = common dso_local global i32 0, align 4
@DAC_EXT_UPDATE_ENABLE_BIT = common dso_local global i32 0, align 4
@DAC_EXT_UPDATE_FALLING_BIT = common dso_local global i32 0, align 4
@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @set_dac_control0_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dac_control0_reg(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %6 = load i32, i32* @DAC_ENABLE_BIT, align 4
  %7 = load i32, i32* @WAVEFORM_GATE_LEVEL_BIT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WAVEFORM_GATE_ENABLE_BIT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAVEFORM_GATE_SELECT_BIT, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRIG_EXT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @WAVEFORM_TRIG_EXT_BITS, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CR_INVERT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @WAVEFORM_TRIG_FALLING_BIT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %18
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @WAVEFORM_TRIG_SOFT_BITS, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_EXT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* @DAC_EXT_UPDATE_ENABLE_BIT, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CR_INVERT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @DAC_EXT_UPDATE_FALLING_BIT, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %43
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 %59, i64 %65)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
