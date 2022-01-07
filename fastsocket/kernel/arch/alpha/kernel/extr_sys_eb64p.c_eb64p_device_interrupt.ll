; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_eb64p.c_eb64p_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_eb64p.c_eb64p_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @eb64p_device_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eb64p_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 @inb(i32 38)
  %6 = call i32 @inb(i32 39)
  %7 = shl i32 %6, 8
  %8 = or i32 %5, %7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = xor i64 %14, -1
  %16 = call i32 @ffz(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %17, 1
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @isa_device_interrupt(i64 %24)
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = add i32 16, %27
  %29 = call i32 @handle_irq(i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @isa_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
