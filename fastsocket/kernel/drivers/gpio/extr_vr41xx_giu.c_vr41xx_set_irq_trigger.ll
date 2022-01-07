; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_set_irq_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_set_irq_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIUINT_HIGH_OFFSET = common dso_local global i32 0, align 4
@IRQ_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@GIUINTTYPL = common dso_local global i32 0, align 4
@IRQ_SIGNAL_HOLD = common dso_local global i64 0, align 8
@GIUINTHTSELL = common dso_local global i32 0, align 4
@giu_flags = common dso_local global i32 0, align 4
@GPIO_HAS_INTERRUPT_EDGE_SELECT = common dso_local global i32 0, align 4
@GIUFEDGEINHL = common dso_local global i32 0, align 4
@GIUREDGEINHL = common dso_local global i32 0, align 4
@giuint_low_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@GIUINTSTATL = common dso_local global i32 0, align 4
@GIUINT_HIGH_MAX = common dso_local global i32 0, align 4
@GIUINTTYPH = common dso_local global i32 0, align 4
@GIUINTHTSELH = common dso_local global i32 0, align 4
@GIUFEDGEINHH = common dso_local global i32 0, align 4
@GIUREDGEINHH = common dso_local global i32 0, align 4
@giuint_high_irq_chip = common dso_local global i32 0, align 4
@GIUINTSTATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_set_irq_trigger(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GIUINT_HIGH_OFFSET, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %81

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IRQ_TRIGGER_LEVEL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load i32, i32* @GIUINTTYPL, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @giu_set(i32 %18, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IRQ_SIGNAL_HOLD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @GIUINTHTSELL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @giu_set(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @GIUINTHTSELL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @giu_clear(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @giu_flags, align 4
  %34 = load i32, i32* @GPIO_HAS_INTERRUPT_EDGE_SELECT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %53 [
    i32 129, label %39
    i32 128, label %46
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @GIUFEDGEINHL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @giu_set(i32 %40, i32 %41)
  %43 = load i32, i32* @GIUREDGEINHL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @giu_clear(i32 %43, i32 %44)
  br label %60

46:                                               ; preds = %37
  %47 = load i32, i32* @GIUFEDGEINHL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @giu_clear(i32 %47, i32 %48)
  %50 = load i32, i32* @GIUREDGEINHL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @giu_set(i32 %50, i32 %51)
  br label %60

53:                                               ; preds = %37
  %54 = load i32, i32* @GIUFEDGEINHL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @giu_set(i32 %54, i32 %55)
  %57 = load i32, i32* @GIUREDGEINHL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @giu_set(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %46, %39
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @GIU_IRQ(i32 %62)
  %64 = load i32, i32* @handle_edge_irq, align 4
  %65 = call i32 @set_irq_chip_and_handler(i32 %63, i32* @giuint_low_irq_chip, i32 %64)
  br label %77

66:                                               ; preds = %11
  %67 = load i32, i32* @GIUINTTYPL, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @giu_clear(i32 %67, i32 %68)
  %70 = load i32, i32* @GIUINTHTSELL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @giu_clear(i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @GIU_IRQ(i32 %73)
  %75 = load i32, i32* @handle_level_irq, align 4
  %76 = call i32 @set_irq_chip_and_handler(i32 %74, i32* @giuint_low_irq_chip, i32 %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load i32, i32* @GIUINTSTATL, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @giu_write(i32 %78, i32 %79)
  br label %158

81:                                               ; preds = %3
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @GIUINT_HIGH_MAX, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %157

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @GIUINT_HIGH_OFFSET, align 4
  %88 = sub i32 %86, %87
  %89 = shl i32 1, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @IRQ_TRIGGER_LEVEL, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %142

93:                                               ; preds = %85
  %94 = load i32, i32* @GIUINTTYPH, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @giu_set(i32 %94, i32 %95)
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @IRQ_SIGNAL_HOLD, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @GIUINTHTSELH, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @giu_set(i32 %101, i32 %102)
  br label %108

104:                                              ; preds = %93
  %105 = load i32, i32* @GIUINTHTSELH, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @giu_clear(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @giu_flags, align 4
  %110 = load i32, i32* @GPIO_HAS_INTERRUPT_EDGE_SELECT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  switch i32 %114, label %129 [
    i32 129, label %115
    i32 128, label %122
  ]

115:                                              ; preds = %113
  %116 = load i32, i32* @GIUFEDGEINHH, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @giu_set(i32 %116, i32 %117)
  %119 = load i32, i32* @GIUREDGEINHH, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @giu_clear(i32 %119, i32 %120)
  br label %136

122:                                              ; preds = %113
  %123 = load i32, i32* @GIUFEDGEINHH, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @giu_clear(i32 %123, i32 %124)
  %126 = load i32, i32* @GIUREDGEINHH, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @giu_set(i32 %126, i32 %127)
  br label %136

129:                                              ; preds = %113
  %130 = load i32, i32* @GIUFEDGEINHH, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @giu_set(i32 %130, i32 %131)
  %133 = load i32, i32* @GIUREDGEINHH, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @giu_set(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %122, %115
  br label %137

137:                                              ; preds = %136, %108
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @GIU_IRQ(i32 %138)
  %140 = load i32, i32* @handle_edge_irq, align 4
  %141 = call i32 @set_irq_chip_and_handler(i32 %139, i32* @giuint_high_irq_chip, i32 %140)
  br label %153

142:                                              ; preds = %85
  %143 = load i32, i32* @GIUINTTYPH, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @giu_clear(i32 %143, i32 %144)
  %146 = load i32, i32* @GIUINTHTSELH, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @giu_clear(i32 %146, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @GIU_IRQ(i32 %149)
  %151 = load i32, i32* @handle_level_irq, align 4
  %152 = call i32 @set_irq_chip_and_handler(i32 %150, i32* @giuint_high_irq_chip, i32 %151)
  br label %153

153:                                              ; preds = %142, %137
  %154 = load i32, i32* @GIUINTSTATH, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @giu_write(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %81
  br label %158

158:                                              ; preds = %157, %77
  ret void
}

declare dso_local i32 @giu_set(i32, i32) #1

declare dso_local i32 @giu_clear(i32, i32) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @GIU_IRQ(i32) #1

declare dso_local i32 @giu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
