; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.happy_meal = type { i32, i64 }

@GREG_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"happy_meal_interrupt: status=%08x \00", align 1
@GREG_STAT_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ERRORS \00", align 1
@GREG_STAT_MIFIRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MIFIRQ \00", align 1
@GREG_STAT_TXALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"TXALL \00", align 1
@GREG_STAT_RXTOHOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"RXTOHOST \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @happy_meal_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @happy_meal_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.happy_meal*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %10)
  store %struct.happy_meal* %11, %struct.happy_meal** %6, align 8
  %12 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %13 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %14 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GREG_STAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @hme_read32(%struct.happy_meal* %12, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @HMD(i8* %21)
  %23 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %24 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GREG_STAT_ERRORS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = call i32 @HMD(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @happy_meal_is_not_so_happy(%struct.happy_meal* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %68

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GREG_STAT_MIFIRQ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @HMD(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %46 = call i32 @happy_meal_mif_interrupt(%struct.happy_meal* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GREG_STAT_TXALL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @HMD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %55 = call i32 @happy_meal_tx(%struct.happy_meal* %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GREG_STAT_RXTOHOST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = call i32 @HMD(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @happy_meal_rx(%struct.happy_meal* %63, %struct.net_device* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = call i32 @HMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %36
  %69 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %70 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hme_read32(%struct.happy_meal*, i64) #1

declare dso_local i32 @HMD(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @happy_meal_is_not_so_happy(%struct.happy_meal*, i32) #1

declare dso_local i32 @happy_meal_mif_interrupt(%struct.happy_meal*) #1

declare dso_local i32 @happy_meal_tx(%struct.happy_meal*) #1

declare dso_local i32 @happy_meal_rx(%struct.happy_meal*, %struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
