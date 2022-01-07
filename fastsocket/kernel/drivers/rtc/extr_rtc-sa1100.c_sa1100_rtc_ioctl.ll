; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@sa1100_rtc_lock = common dso_local global i32 0, align 4
@RTSR_ALE = common dso_local global i32 0, align 4
@RTSR = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@OIER_E1 = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@timer_freq = common dso_local global i64 0, align 8
@rtc_freq = common dso_local global i64 0, align 8
@OSCR = common dso_local global i64 0, align 8
@OSMR1 = common dso_local global i64 0, align 8
@rtc_timer1_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @sa1100_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %70 [
    i32 135, label %9
    i32 134, label %16
    i32 129, label %22
    i32 128, label %29
    i32 131, label %35
    i32 130, label %42
    i32 133, label %53
    i32 132, label %58
  ]

9:                                                ; preds = %3
  %10 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %11 = load i32, i32* @RTSR_ALE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @RTSR, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @RTSR, align 4
  %15 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %18 = load i32, i32* @RTSR_ALE, align 4
  %19 = load i32, i32* @RTSR, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @RTSR, align 4
  %21 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %24 = load i32, i32* @RTSR_HZE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @RTSR, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* @RTSR, align 4
  %28 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

29:                                               ; preds = %3
  %30 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %31 = load i32, i32* @RTSR_HZE, align 4
  %32 = load i32, i32* @RTSR, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @RTSR, align 4
  %34 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

35:                                               ; preds = %3
  %36 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %37 = load i32, i32* @OIER_E1, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @OIER, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @OIER, align 4
  %41 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

42:                                               ; preds = %3
  %43 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  %44 = load i64, i64* @timer_freq, align 8
  %45 = load i64, i64* @rtc_freq, align 8
  %46 = udiv i64 %44, %45
  %47 = load i64, i64* @OSCR, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* @OSMR1, align 8
  %49 = load i32, i32* @OIER_E1, align 4
  %50 = load i32, i32* @OIER, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @OIER, align 4
  store i32 1, i32* @rtc_timer1_count, align 4
  %52 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  store i32 0, i32* %4, align 4
  br label %73

53:                                               ; preds = %3
  %54 = load i64, i64* @rtc_freq, align 8
  %55 = load i64, i64* %7, align 8
  %56 = inttoptr i64 %55 to i64*
  %57 = call i32 @put_user(i64 %54, i64* %56)
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %3
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %59, 1
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @timer_freq, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %61
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* @rtc_freq, align 8
  store i32 0, i32* %4, align 4
  br label %73

70:                                               ; preds = %3
  %71 = load i32, i32* @ENOIOCTLCMD, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %68, %65, %53, %42, %35, %29, %22, %16, %9
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @put_user(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
