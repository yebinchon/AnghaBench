; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_opendrain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_opendrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@MENELAUS_MCT_CTRL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_mmc_opendrain(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @MENELAUS_MCT_CTRL1, align 4
  %21 = call i32 @menelaus_read_reg(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, -5
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %53

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 8
  store i32 %48, i32* %7, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -9
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* @MENELAUS_MCT_CTRL1, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @menelaus_write_reg(i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %24, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
