; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_setup_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, %struct.line_driver* }
%struct.line_driver = type { i32, i32, i32, i32 }

@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@IRQ_READ = common dso_local global i32 0, align 4
@line_interrupt = common dso_local global i32 0, align 4
@IRQ_WRITE = common dso_local global i32 0, align 4
@line_write_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_setup_irq(i32 %0, i32 %1, i32 %2, %struct.line* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.line*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.line_driver*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.line* %3, %struct.line** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.line*, %struct.line** %10, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 1
  %17 = load %struct.line_driver*, %struct.line_driver** %16, align 8
  store %struct.line_driver* %17, %struct.line_driver** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @IRQF_DISABLED, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %27 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IRQ_READ, align 4
  %31 = load i32, i32* @line_interrupt, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %34 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @um_request_irq(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %35, i8* %36)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %25, %5
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %63

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %48 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IRQ_WRITE, align 4
  %52 = load i32, i32* @line_write_interrupt, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %55 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @um_request_irq(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %56, i8* %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %46, %43
  %60 = load %struct.line*, %struct.line** %10, align 8
  %61 = getelementptr inbounds %struct.line, %struct.line* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %41
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @um_request_irq(i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
