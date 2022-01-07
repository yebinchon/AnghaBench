; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_irq.c_show_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_irq.c_show_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.irqaction* }
%struct.TYPE_3__ = type { i32 }
%struct.irqaction = type { i32, %struct.irqaction* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"           CPU0\0A\00", align 1
@NR_IRQS = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%3d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%14s  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_interrupts(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NR_IRQS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.irqaction*, %struct.irqaction** %24, align 8
  store %struct.irqaction* %25, %struct.irqaction** %5, align 8
  %26 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %27 = icmp ne %struct.irqaction* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %19
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @kstat_irqs(i32 %33)
  %35 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %48 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %52 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %51, i32 0, i32 1
  %53 = load %struct.irqaction*, %struct.irqaction** %52, align 8
  store %struct.irqaction* %53, %struct.irqaction** %5, align 8
  br label %54

54:                                               ; preds = %63, %28
  %55 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %56 = icmp ne %struct.irqaction* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %60 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %65 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %64, i32 0, i32 1
  %66 = load %struct.irqaction*, %struct.irqaction** %65, align 8
  store %struct.irqaction* %66, %struct.irqaction** %5, align 8
  br label %54

67:                                               ; preds = %54
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_putc(%struct.seq_file* %68, i8 signext 10)
  br label %70

70:                                               ; preds = %67, %19
  br label %71

71:                                               ; preds = %70, %15
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @kstat_irqs(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
