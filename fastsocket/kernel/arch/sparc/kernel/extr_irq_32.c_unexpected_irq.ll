; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_unexpected_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_unexpected_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irqaction* }
%struct.irqaction = type { i64, i32 }
%struct.pt_regs = type { i32*, i32, i32 }

@NR_IRQS = common dso_local global i32 0, align 4
@sparc_irq = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"IO device interrupt, irq = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"PC = %08lx NPC = %08lx FP=%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Expecting: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"[%s:%d:0x%x] \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"AIEEE\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"bogus interrupt received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unexpected_irq(i32 %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irqaction*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NR_IRQS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_irq, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.irqaction*, %struct.irqaction** %18, align 8
  store %struct.irqaction* %19, %struct.irqaction** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 14
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %32)
  %34 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %35 = icmp ne %struct.irqaction* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %3
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %36
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %43 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %48 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %52 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %3
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
