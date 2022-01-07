; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@clk_lock = common dso_local global i32 0, align 4
@CLK_MODE_XTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.clk*, %struct.clk** %5, align 8
  %12 = icmp ne %struct.clk* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %84

16:                                               ; preds = %10
  %17 = load %struct.clk*, %struct.clk** %5, align 8
  %18 = call i32 @clk_is_primary(%struct.clk* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = call i32 @clk_is_bypassable(%struct.clk* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %20
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %27
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 2
  %38 = load %struct.clk*, %struct.clk** %37, align 8
  %39 = load %struct.clk*, %struct.clk** %5, align 8
  %40 = icmp eq %struct.clk* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %84

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @clk_lock, i64 %43)
  %45 = load %struct.clk*, %struct.clk** %4, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 2
  %47 = load %struct.clk*, %struct.clk** %46, align 8
  store %struct.clk* %47, %struct.clk** %7, align 8
  %48 = load %struct.clk*, %struct.clk** %5, align 8
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 2
  store %struct.clk* %48, %struct.clk** %50, align 8
  %51 = load %struct.clk*, %struct.clk** %5, align 8
  %52 = call i64 @clk_is_using_xtal(%struct.clk* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @CLK_MODE_XTAL, align 4
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %67

60:                                               ; preds = %42
  %61 = load i32, i32* @CLK_MODE_XTAL, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.clk*, %struct.clk** %4, align 8
  %64 = getelementptr inbounds %struct.clk, %struct.clk* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.clk*, %struct.clk** %4, align 8
  %69 = getelementptr inbounds %struct.clk, %struct.clk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.clk*, %struct.clk** %4, align 8
  %74 = getelementptr inbounds %struct.clk, %struct.clk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.clk*, %struct.clk** %4, align 8
  %78 = call i32 @__clk_enable(%struct.clk* %77)
  %79 = load %struct.clk*, %struct.clk** %7, align 8
  %80 = call i32 @__clk_disable(%struct.clk* %79)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* @clk_lock, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %41, %32, %24, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @clk_is_primary(%struct.clk*) #1

declare dso_local i32 @clk_is_bypassable(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @clk_is_using_xtal(%struct.clk*) #1

declare dso_local i32 @__clk_enable(%struct.clk*) #1

declare dso_local i32 @__clk_disable(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
