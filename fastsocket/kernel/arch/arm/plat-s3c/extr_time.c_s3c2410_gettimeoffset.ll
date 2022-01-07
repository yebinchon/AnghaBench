; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_time.c_s3c2410_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_time.c_s3c2410_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_startval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @s3c2410_gettimeoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s3c2410_gettimeoffset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @S3C2410_TCNTO(i32 4)
  %4 = call i64 @__raw_readl(i32 %3)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* @timer_startval, align 8
  %6 = load i64, i64* %2, align 8
  %7 = sub i64 %5, %6
  store i64 %7, i64* %1, align 8
  %8 = call i64 (...) @s3c24xx_ostimer_pending()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %11 = call i32 @S3C2410_TCNTO(i32 4)
  %12 = call i64 @__raw_readl(i32 %11)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* @timer_startval, align 8
  %14 = load i64, i64* %2, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i64, i64* @timer_startval, align 8
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i64, i64* %1, align 8
  %25 = call i64 @timer_ticks_to_usec(i64 %24)
  ret i64 %25
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @S3C2410_TCNTO(i32) #1

declare dso_local i64 @s3c24xx_ostimer_pending(...) #1

declare dso_local i64 @timer_ticks_to_usec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
