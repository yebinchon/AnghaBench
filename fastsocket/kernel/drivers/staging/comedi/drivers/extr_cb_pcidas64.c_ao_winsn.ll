; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i64 }
%struct.TYPE_4__ = type { i64 }

@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@DAC_CONTROL1_REG = common dso_local global i64 0, align 8
@LAYOUT_4020 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_RANGE(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 0, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @set_dac_range_bits(%struct.comedi_device* %26, i32* %29, i32 %30, i32 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %34 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DAC_CONTROL1_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %36, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = call %struct.TYPE_4__* @board(%struct.comedi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LAYOUT_4020, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @dac_lsb_4020_reg(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @writew(i32 %54, i64 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 8
  %67 = and i32 %66, 15
  %68 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %69 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @dac_msb_4020_reg(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @writew(i32 %67, i64 %74)
  br label %88

76:                                               ; preds = %4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %81 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @dac_convert_reg(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @writew(i32 %79, i64 %86)
  br label %88

88:                                               ; preds = %76, %50
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %93 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %91, i32* %98, align 4
  ret i32 1
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_3__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @set_dac_range_bits(%struct.comedi_device*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i64 @dac_lsb_4020_reg(i32) #1

declare dso_local i64 @dac_msb_4020_reg(i32) #1

declare dso_local i64 @dac_convert_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
