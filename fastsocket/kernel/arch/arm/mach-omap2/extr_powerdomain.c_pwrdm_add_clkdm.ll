; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_clkdm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { %struct.clockdomain**, i32 }
%struct.clockdomain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"powerdomain: associating clockdomain %s with powerdomain %s\0A\00", align 1
@pwrdm_rwlock = common dso_local global i32 0, align 4
@PWRDM_MAX_CLKDMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"powerdomain: increase PWRDM_MAX_CLKDMS for pwrdm %s clkdm %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_add_clkdm(%struct.powerdomain* %0, %struct.clockdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca %struct.clockdomain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store %struct.clockdomain* %1, %struct.clockdomain** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %12 = icmp ne %struct.powerdomain* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %15 = icmp ne %struct.clockdomain* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %13
  %20 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %21 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %24 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @write_lock_irqsave(i32* @pwrdm_rwlock, i64 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %44, %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PWRDM_MAX_CLKDMS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %35 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %34, i32 0, i32 0
  %36 = load %struct.clockdomain**, %struct.clockdomain*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.clockdomain*, %struct.clockdomain** %36, i64 %38
  %40 = load %struct.clockdomain*, %struct.clockdomain** %39, align 8
  %41 = icmp ne %struct.clockdomain* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PWRDM_MAX_CLKDMS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %53 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %56 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = call i32 @WARN_ON(i32 1)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %70

62:                                               ; preds = %47
  %63 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %64 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %65 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %64, i32 0, i32 0
  %66 = load %struct.clockdomain**, %struct.clockdomain*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.clockdomain*, %struct.clockdomain** %66, i64 %68
  store %struct.clockdomain* %63, %struct.clockdomain** %69, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %51
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @write_unlock_irqrestore(i32* @pwrdm_rwlock, i64 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
