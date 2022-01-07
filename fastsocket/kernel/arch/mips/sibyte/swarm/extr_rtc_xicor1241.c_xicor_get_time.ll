; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_get_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_lock = common dso_local global i32 0, align 4
@X1241REG_SC = common dso_local global i32 0, align 4
@X1241REG_MN = common dso_local global i32 0, align 4
@X1241REG_HR = common dso_local global i32 0, align 4
@X1241REG_HR_MIL = common dso_local global i32 0, align 4
@X1241REG_DT = common dso_local global i32 0, align 4
@X1241REG_MO = common dso_local global i32 0, align 4
@X1241REG_YR = common dso_local global i32 0, align 4
@X1241REG_Y2K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xicor_get_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %9)
  %11 = load i32, i32* @X1241REG_SC, align 4
  %12 = call i32 @xicor_read(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @X1241REG_MN, align 4
  %14 = call i32 @xicor_read(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @X1241REG_HR, align 4
  %16 = call i32 @xicor_read(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @X1241REG_HR_MIL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 63
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %0
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 15
  %31 = add i32 %30, 18
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* @X1241REG_DT, align 4
  %35 = call i32 @xicor_read(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @X1241REG_MO, align 4
  %37 = call i32 @xicor_read(i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @X1241REG_YR, align 4
  %39 = call i32 @xicor_read(i32 %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @X1241REG_Y2K, align 4
  %41 = call i32 @xicor_read(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bcd2bin(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @bcd2bin(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @bcd2bin(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @bcd2bin(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @bcd2bin(i32 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @bcd2bin(i32 %54)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @bcd2bin(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 %58, 100
  %60 = load i32, i32* %1, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @mktime(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  ret i64 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xicor_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i64 @mktime(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
