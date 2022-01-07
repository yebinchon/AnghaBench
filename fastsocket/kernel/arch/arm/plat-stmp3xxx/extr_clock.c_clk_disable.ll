; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.clk*)* }

@clocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = call i32 @clk_good(%struct.clk* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @clocks_lock, i64 %13)
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.clk*, %struct.clk** %2, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %24, align 8
  %26 = icmp ne i32 (%struct.clk*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.clk*, %struct.clk** %2, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %31, align 8
  %33 = load %struct.clk*, %struct.clk** %2, align 8
  %34 = call i32 %32(%struct.clk* %33)
  br label %35

35:                                               ; preds = %27, %20, %12
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @clocks_lock, i64 %36)
  %38 = load %struct.clk*, %struct.clk** %2, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 1
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %41 = icmp ne %struct.clk* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.clk*, %struct.clk** %2, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  %45 = load %struct.clk*, %struct.clk** %44, align 8
  call void @clk_disable(%struct.clk* %45)
  br label %46

46:                                               ; preds = %11, %42, %35
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
