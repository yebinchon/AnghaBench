; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_traps.c_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_traps.c_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@INTREAD = common dso_local global i32 0, align 4
@INTENABLE = common dso_local global i32 0, align 4
@XCHAL_NUM_INTERRUPTS = common dso_local global i32 0, align 4
@INTCLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = load i32, i32* @INTREAD, align 4
  %8 = call i64 @get_sr(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @INTENABLE, align 4
  %10 = call i64 @get_sr(i32 %9)
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @XCHAL_NUM_INTERRUPTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %18, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @INTCLEAR, align 4
  %26 = call i32 @set_sr(i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = call i32 @do_IRQ(i32 %27, %struct.pt_regs* %28)
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  ret void
}

declare dso_local i64 @get_sr(i32) #1

declare dso_local i32 @set_sr(i32, i32) #1

declare dso_local i32 @do_IRQ(i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
