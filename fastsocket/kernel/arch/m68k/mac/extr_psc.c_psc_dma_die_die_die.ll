; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_psc.c_psc_dma_die_die_die.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_psc.c_psc_dma_die_die_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Killing all PSC DMA channels...\00", align 1
@PSC_CTL_BASE = common dso_local global i64 0, align 8
@PSC_CMD_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @psc_dma_die_die_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc_dma_die_die_die() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 9
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load i64, i64* @PSC_CTL_BASE, align 8
  %8 = load i32, i32* %1, align 4
  %9 = shl i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = call i32 @psc_write_word(i64 %11, i32 34816)
  %13 = load i64, i64* @PSC_CTL_BASE, align 8
  %14 = load i32, i32* %1, align 4
  %15 = shl i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @psc_write_word(i64 %17, i32 4096)
  %19 = load i64, i64* @PSC_CMD_BASE, align 8
  %20 = load i32, i32* %1, align 4
  %21 = shl i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @psc_write_word(i64 %23, i32 4352)
  %25 = load i64, i64* @PSC_CMD_BASE, align 8
  %26 = load i32, i32* %1, align 4
  %27 = shl i32 %26, 5
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = add nsw i64 %29, 16
  %31 = call i32 @psc_write_word(i64 %30, i32 4352)
  br label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3

35:                                               ; preds = %3
  %36 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @psc_write_word(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
