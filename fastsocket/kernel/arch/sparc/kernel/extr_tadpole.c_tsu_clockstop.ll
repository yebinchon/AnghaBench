; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_tadpole.c_tsu_clockstop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_tadpole.c_tsu_clockstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_ctrl = common dso_local global i32* null, align 8
@clk_state = common dso_local global i32 0, align 4
@CLOCK_INIT_DONE = common dso_local global i32 0, align 4
@MACIO_SCSI_CSR_ADDR = common dso_local global i32 0, align 4
@MACIO_EN_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tsu_clockstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsu_clockstop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32*, i32** @clk_ctrl, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %43

6:                                                ; preds = %0
  %7 = load i32, i32* @clk_state, align 4
  %8 = load i32, i32* @CLOCK_INIT_DONE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call i32 (...) @clk_init()
  %15 = load i32, i32* @CLOCK_INIT_DONE, align 4
  %16 = load i32, i32* @clk_state, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @clk_state, align 4
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  br label %43

20:                                               ; preds = %6
  %21 = load i32*, i32** @clk_ctrl, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %43

27:                                               ; preds = %20
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load i32, i32* @MACIO_SCSI_CSR_ADDR, align 4
  %31 = call i32 @ldphys(i32 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @MACIO_EN_DMA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  br label %43

39:                                               ; preds = %27
  %40 = call i32 (...) @clk_slow()
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  br label %43

43:                                               ; preds = %39, %36, %26, %11, %5
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @clk_init(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @ldphys(i32) #1

declare dso_local i32 @clk_slow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
