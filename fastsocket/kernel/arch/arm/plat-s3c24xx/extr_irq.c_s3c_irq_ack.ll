; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irq_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_EINT0 = common dso_local global i32 0, align 4
@S3C2410_SRCPND = common dso_local global i32 0, align 4
@S3C2410_INTPND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s3c_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IRQ_EINT0, align 4
  %6 = sub i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = shl i64 1, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @S3C2410_SRCPND, align 4
  %11 = call i32 @__raw_writel(i64 %9, i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @S3C2410_INTPND, align 4
  %14 = call i32 @__raw_writel(i64 %12, i32 %13)
  ret void
}

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
