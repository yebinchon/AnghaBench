; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_intc.c_intc_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_intc.c_intc_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"end: %d\0A\00", align 1
@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@INTC_BASE = common dso_local global i64 0, align 8
@SIE = common dso_local global i64 0, align 8
@IRQ_LEVEL = common dso_local global i32 0, align 4
@IAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = shl i32 1, %4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IRQ_DISABLED, align 4
  %16 = load i32, i32* @IRQ_INPROGRESS, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @INTC_BASE, align 8
  %22 = load i64, i64* @SIE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @out_be32(i64 %23, i64 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IRQ_LEVEL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load i64, i64* @INTC_BASE, align 8
  %37 = load i64, i64* @IAR, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @out_be32(i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %20
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @out_be32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
