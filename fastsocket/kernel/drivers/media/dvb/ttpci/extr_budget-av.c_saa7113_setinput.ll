; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_saa7113_setinput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_saa7113_setinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_av = type { i32, i32, %struct.budget }
%struct.budget = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_av*, i32)* @saa7113_setinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7113_setinput(%struct.budget_av* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.budget_av*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.budget*, align 8
  store %struct.budget_av* %0, %struct.budget_av** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.budget_av*, %struct.budget_av** %4, align 8
  %8 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %7, i32 0, i32 2
  store %struct.budget* %8, %struct.budget** %6, align 8
  %9 = load %struct.budget_av*, %struct.budget_av** %4, align 8
  %10 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 1, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.budget*, %struct.budget** %6, align 8
  %21 = getelementptr inbounds %struct.budget, %struct.budget* %20, i32 0, i32 0
  %22 = call i32 @i2c_writereg(i32* %21, i32 74, i32 2, i32 199)
  %23 = load %struct.budget*, %struct.budget** %6, align 8
  %24 = getelementptr inbounds %struct.budget, %struct.budget* %23, i32 0, i32 0
  %25 = call i32 @i2c_writereg(i32* %24, i32 74, i32 9, i32 128)
  br label %40

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.budget*, %struct.budget** %6, align 8
  %31 = getelementptr inbounds %struct.budget, %struct.budget* %30, i32 0, i32 0
  %32 = call i32 @i2c_writereg(i32* %31, i32 74, i32 2, i32 192)
  %33 = load %struct.budget*, %struct.budget** %6, align 8
  %34 = getelementptr inbounds %struct.budget, %struct.budget* %33, i32 0, i32 0
  %35 = call i32 @i2c_writereg(i32* %34, i32 74, i32 9, i32 0)
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.budget_av*, %struct.budget_av** %4, align 8
  %43 = getelementptr inbounds %struct.budget_av, %struct.budget_av* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @i2c_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
