; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { %struct.ucb1x00_irq* }
%struct.ucb1x00_irq = type { i32, i32 (i32, i32)* }

@UCB_IE_STATUS = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ucb1x00_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ucb1x00*, align 8
  %6 = alloca %struct.ucb1x00_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ucb1x00*
  store %struct.ucb1x00* %10, %struct.ucb1x00** %5, align 8
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %12 = call i32 @ucb1x00_enable(%struct.ucb1x00* %11)
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %14 = load i32, i32* @UCB_IE_STATUS, align 4
  %15 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %17 = load i32, i32* @UCB_IE_CLEAR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %16, i32 %17, i32 %18)
  %20 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %21 = load i32, i32* @UCB_IE_CLEAR, align 4
  %22 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %20, i32 %21, i32 0)
  store i32 0, i32* %8, align 4
  %23 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %24 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %23, i32 0, i32 0
  %25 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %24, align 8
  store %struct.ucb1x00_irq* %25, %struct.ucb1x00_irq** %6, align 8
  br label %26

26:                                               ; preds = %53, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %60

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %6, align 8
  %40 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = icmp ne i32 (i32, i32)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %6, align 8
  %45 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %44, i32 0, i32 1
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %6, align 8
  %49 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %38, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = lshr i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %6, align 8
  %59 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %58, i32 1
  store %struct.ucb1x00_irq* %59, %struct.ucb1x00_irq** %6, align 8
  br label %26

60:                                               ; preds = %32
  %61 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %62 = call i32 @ucb1x00_disable(%struct.ucb1x00* %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
