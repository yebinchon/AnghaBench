; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_eoi_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_eoi_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@INTSTS0 = common dso_local global i32 0, align 4
@INTSTS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @eoi_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eoi_se7206_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IRQ_DISABLED, align 4
  %12 = load i32, i32* @IRQ_INPROGRESS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @enable_se7206_irq(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @INTSTS0, align 4
  %21 = call zeroext i16 @ctrl_inw(i32 %20)
  store i16 %21, i16* %3, align 2
  %22 = load i32, i32* @INTSTS1, align 4
  %23 = call zeroext i16 @ctrl_inw(i32 %22)
  store i16 %23, i16* %4, align 2
  %24 = load i32, i32* %2, align 4
  switch i32 %24, label %44 [
    i32 130, label %25
    i32 129, label %30
    i32 128, label %35
  ]

25:                                               ; preds = %19
  %26 = load i16, i16* %3, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, -17
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %3, align 2
  br label %44

30:                                               ; preds = %19
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, -16
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  br label %44

35:                                               ; preds = %19
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, -3841
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %3, align 2
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, -256
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %4, align 2
  br label %44

44:                                               ; preds = %19, %35, %30, %25
  %45 = load i16, i16* %3, align 2
  %46 = load i32, i32* @INTSTS0, align 4
  %47 = call i32 @ctrl_outw(i16 zeroext %45, i32 %46)
  %48 = load i16, i16* %4, align 2
  %49 = load i32, i32* @INTSTS1, align 4
  %50 = call i32 @ctrl_outw(i16 zeroext %48, i32 %49)
  ret void
}

declare dso_local i32 @enable_se7206_irq(i32) #1

declare dso_local zeroext i16 @ctrl_inw(i32) #1

declare dso_local i32 @ctrl_outw(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
