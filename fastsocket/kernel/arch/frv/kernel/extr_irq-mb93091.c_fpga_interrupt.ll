; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_irq-mb93091.c_fpga_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_irq-mb93091.c_fpga_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_BASE_FPGA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fpga_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @__get_IMR()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 (...) @__get_IFR()
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %21, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = call i32 asm "scan $1,gr0,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %22) #2, !srcloc !2
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 31, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @IRQ_BASE_FPGA, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @generic_handle_irq(i64 %34)
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @__get_IMR(...) #1

declare dso_local i32 @__get_IFR(...) #1

declare dso_local i32 @generic_handle_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 534}
