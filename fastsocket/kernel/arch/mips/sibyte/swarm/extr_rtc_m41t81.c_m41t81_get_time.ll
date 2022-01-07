; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_get_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_lock = common dso_local global i32 0, align 4
@M41T81REG_SC = common dso_local global i32 0, align 4
@M41T81REG_MN = common dso_local global i32 0, align 4
@M41T81REG_HR = common dso_local global i32 0, align 4
@M41T81REG_DT = common dso_local global i32 0, align 4
@M41T81REG_MO = common dso_local global i32 0, align 4
@M41T81REG_YR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @m41t81_get_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  br label %8

8:                                                ; preds = %20, %0
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %9)
  %11 = load i32, i32* @M41T81REG_SC, align 4
  %12 = call i32 @m41t81_read(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @M41T81REG_MN, align 4
  %14 = call i32 @m41t81_read(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @M41T81REG_SC, align 4
  %17 = call i32 @m41t81_read(i32 %16)
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %23

20:                                               ; preds = %8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %21)
  br label %8

23:                                               ; preds = %19
  %24 = load i32, i32* @M41T81REG_HR, align 4
  %25 = call i32 @m41t81_read(i32 %24)
  %26 = and i32 %25, 63
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @M41T81REG_DT, align 4
  %28 = call i32 @m41t81_read(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @M41T81REG_MO, align 4
  %30 = call i32 @m41t81_read(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @M41T81REG_YR, align 4
  %32 = call i32 @m41t81_read(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bcd2bin(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bcd2bin(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bcd2bin(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @bcd2bin(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @bcd2bin(i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @bcd2bin(i32 %45)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = add i32 %47, 2000
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @mktime(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  ret i64 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @m41t81_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i64 @mktime(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
