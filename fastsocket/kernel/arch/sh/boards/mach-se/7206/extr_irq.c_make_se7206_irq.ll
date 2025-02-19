; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_make_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_make_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@se7206_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_se7206_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @disable_irq_nosync(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @handle_level_irq, align 4
  %7 = call i32 @set_irq_chip_and_handler_name(i32 %5, i32* @se7206_irq_chip, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @disable_se7206_irq(i32 %8)
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @disable_se7206_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
