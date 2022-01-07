; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7722/extr_irq.c_se7722_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7722/extr_irq.c_se7722_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQ01_STS = common dso_local global i32 0, align 4
@SE7722_FPGA_IRQ_BASE = common dso_local global i32 0, align 4
@SE7722_FPGA_IRQ_NR = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @se7722_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se7722_irq_demux(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %8 = load i32, i32* @IRQ01_STS, align 4
  %9 = call zeroext i16 @ctrl_inw(i32 %8)
  store i16 %9, i16* %5, align 2
  %10 = load i32, i32* @SE7722_FPGA_IRQ_BASE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SE7722_FPGA_IRQ_NR, align 4
  %12 = shl i32 1, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i16, i16* %5, align 2
  %20 = icmp ne i16 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i64 %29
  store %struct.irq_desc* %30, %struct.irq_desc** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %33 = call i32 @handle_level_irq(i32 %31, %struct.irq_desc* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = ashr i32 %36, 1
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %5, align 2
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %18
  ret void
}

declare dso_local zeroext i16 @ctrl_inw(i32) #1

declare dso_local i32 @handle_level_irq(i32, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
