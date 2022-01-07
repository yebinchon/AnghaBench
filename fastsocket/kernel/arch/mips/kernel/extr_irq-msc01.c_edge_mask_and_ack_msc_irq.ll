; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_edge_mask_and_ack_msc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_irq-msc01.c_edge_mask_and_ack_msc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_veic = common dso_local global i32 0, align 4
@MSC01_IC_EOI = common dso_local global i64 0, align 8
@MSC01_IC_SUP = common dso_local global i64 0, align 8
@MSC01_IC_SUP_EDGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @edge_mask_and_ack_msc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edge_mask_and_ack_msc_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @mask_msc_irq(i32 %4)
  %6 = load i32, i32* @cpu_has_veic, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @MSC01_IC_EOI, align 8
  %10 = call i32 @MSCIC_WRITE(i64 %9, i32 0)
  br label %36

11:                                               ; preds = %1
  %12 = load i64, i64* @MSC01_IC_SUP, align 8
  %13 = load i32, i32* %2, align 4
  %14 = mul i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @MSCIC_READ(i64 %16, i32 %17)
  %19 = load i64, i64* @MSC01_IC_SUP, align 8
  %20 = load i32, i32* %2, align 4
  %21 = mul i32 %20, 8
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MSC01_IC_SUP_EDGE_BIT, align 4
  %26 = xor i32 %25, -1
  %27 = or i32 %24, %26
  %28 = call i32 @MSCIC_WRITE(i64 %23, i32 %27)
  %29 = load i64, i64* @MSC01_IC_SUP, align 8
  %30 = load i32, i32* %2, align 4
  %31 = mul i32 %30, 8
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MSCIC_WRITE(i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %11, %8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @smtc_im_ack_irq(i32 %37)
  ret void
}

declare dso_local i32 @mask_msc_irq(i32) #1

declare dso_local i32 @MSCIC_WRITE(i64, i32) #1

declare dso_local i32 @MSCIC_READ(i64, i32) #1

declare dso_local i32 @smtc_im_ack_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
