; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_calc_expire_secs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_calc_expire_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_JIFFY_OFFSET = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @calc_expire_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_expire_secs(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @time_after(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* @MAX_JIFFY_OFFSET, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @MAX_JIFFY_OFFSET, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @B43_WARN_ON(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* @HZ, align 8
  %37 = udiv i64 %35, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %27, %15
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
