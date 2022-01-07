; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_irq_pyxis.c_pyxis_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_irq_pyxis.c_pyxis_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PYXIS_INT_REQ = common dso_local global i64 0, align 8
@cached_irq_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pyxis_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @PYXIS_INT_REQ, align 8
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @cached_irq_mask, align 8
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = xor i64 %15, -1
  %17 = call i32 @ffz(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* %3, align 8
  %19 = sub i64 %18, 1
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @isa_device_interrupt(i64 %25)
  br label %31

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = add i32 16, %28
  %30 = call i32 @handle_irq(i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %11

32:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @isa_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
