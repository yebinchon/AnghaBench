; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_extint.c_eic_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_extint.c_eic_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.eic = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@MODE = common dso_local global i32 0, align 4
@EDGE = common dso_local global i32 0, align 4
@LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_LEVEL = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @eic_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eic_set_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.eic*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.eic* @get_irq_chip_data(i32 %12)
  store %struct.eic* %13, %struct.eic** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.eic*, %struct.eic** %5, align 8
  %16 = getelementptr inbounds %struct.eic, %struct.eic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 128, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i64 %29
  store %struct.irq_desc* %30, %struct.irq_desc** %6, align 8
  %31 = load %struct.eic*, %struct.eic** %5, align 8
  %32 = load i32, i32* @MODE, align 4
  %33 = call i32 @eic_readl(%struct.eic* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.eic*, %struct.eic** %5, align 8
  %35 = load i32, i32* @EDGE, align 4
  %36 = call i32 @eic_readl(%struct.eic* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.eic*, %struct.eic** %5, align 8
  %38 = load i32, i32* @LEVEL, align 4
  %39 = call i32 @eic_readl(%struct.eic* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %81 [
    i32 128, label %41
    i32 129, label %51
    i32 130, label %60
    i32 131, label %70
  ]

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %84

51:                                               ; preds = %26
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %84

60:                                               ; preds = %26
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %84

70:                                               ; preds = %26
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 1, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %84

81:                                               ; preds = %26
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %81, %70, %60, %51, %41
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load %struct.eic*, %struct.eic** %5, align 8
  %89 = load i32, i32* @MODE, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @eic_writel(%struct.eic* %88, i32 %89, i32 %90)
  %92 = load %struct.eic*, %struct.eic** %5, align 8
  %93 = load i32, i32* @EDGE, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @eic_writel(%struct.eic* %92, i32 %93, i32 %94)
  %96 = load %struct.eic*, %struct.eic** %5, align 8
  %97 = load i32, i32* @LEVEL, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @eic_writel(%struct.eic* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, 129
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %87
  %104 = load i32, i32* @IRQ_LEVEL, align 4
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @handle_level_irq, align 4
  %109 = call i32 @__set_irq_handler_unlocked(i32 %107, i32 %108)
  br label %114

110:                                              ; preds = %87
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @handle_edge_irq, align 4
  %113 = call i32 @__set_irq_handler_unlocked(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %116 = load i32, i32* @IRQ_LEVEL, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %120 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %125 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %114, %84
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local %struct.eic* @get_irq_chip_data(i32) #1

declare dso_local i32 @eic_readl(%struct.eic*, i32) #1

declare dso_local i32 @eic_writel(%struct.eic*, i32, i32) #1

declare dso_local i32 @__set_irq_handler_unlocked(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
