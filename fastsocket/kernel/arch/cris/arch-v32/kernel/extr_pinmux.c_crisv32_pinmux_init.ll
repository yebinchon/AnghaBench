; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_pinmux.c_crisv32_pinmux_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_pinmux.c_crisv32_pinmux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@crisv32_pinmux_init.initialized = internal global i32 0, align 4
@pinmux = common dso_local global i32 0, align 4
@regi_pinmux = common dso_local global i32 0, align 4
@rw_pa = common dso_local global i32 0, align 4
@regk_pinmux_yes = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@PORT_PINS = common dso_local global i64 0, align 8
@pinmux_gpio = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_init() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* @crisv32_pinmux_init.initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @pinmux, align 4
  %6 = load i32, i32* @regi_pinmux, align 4
  %7 = load i32, i32* @rw_pa, align 4
  call void @REG_RD(%struct.TYPE_4__* sret %1, i32 %5, i32 %6, i32 %7)
  store i32 1, i32* @crisv32_pinmux_init.initialized, align 4
  %8 = load i32, i32* @regk_pinmux_yes, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %8, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %8, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %8, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  store i32 %8, i32* %16, align 4
  %17 = load i32, i32* @pinmux, align 4
  %18 = load i32, i32* @regi_pinmux, align 4
  %19 = load i32, i32* @rw_pa, align 4
  %20 = call i32 @REG_WR(i32 %17, i32 %18, i32 %19, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1)
  %21 = load i32, i32* @PORT_B, align 4
  %22 = load i64, i64* @PORT_PINS, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load i32, i32* @pinmux_gpio, align 4
  %25 = call i32 @crisv32_pinmux_alloc(i32 %21, i32 0, i64 %23, i32 %24)
  %26 = load i32, i32* @PORT_C, align 4
  %27 = load i64, i64* @PORT_PINS, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i32, i32* @pinmux_gpio, align 4
  %30 = call i32 @crisv32_pinmux_alloc(i32 %26, i32 0, i64 %28, i32 %29)
  %31 = load i32, i32* @PORT_D, align 4
  %32 = load i64, i64* @PORT_PINS, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i32, i32* @pinmux_gpio, align 4
  %35 = call i32 @crisv32_pinmux_alloc(i32 %31, i32 0, i64 %33, i32 %34)
  %36 = load i32, i32* @PORT_E, align 4
  %37 = load i64, i64* @PORT_PINS, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load i32, i32* @pinmux_gpio, align 4
  %40 = call i32 @crisv32_pinmux_alloc(i32 %36, i32 0, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %4, %0
  ret i32 0
}

declare dso_local void @REG_RD(%struct.TYPE_4__* sret, i32, i32, i32) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @crisv32_pinmux_alloc(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
