; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@s3c_rtc_pie_lock = common dso_local global i32 0, align 4
@s3c_rtc_base = common dso_local global i64 0, align 8
@S3C2410_TICNT = common dso_local global i64 0, align 8
@S3C2410_TICNT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @s3c_rtc_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_setfreq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @is_power_of_2(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = call i32 @spin_lock_irq(i32* @s3c_rtc_pie_lock)
  %15 = load i64, i64* @s3c_rtc_base, align 8
  %16 = load i64, i64* @S3C2410_TICNT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  %19 = load i32, i32* @S3C2410_TICNT_ENABLE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 128, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* @s3c_rtc_base, align 8
  %28 = load i64, i64* @S3C2410_TICNT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i32 %26, i64 %29)
  %31 = call i32 @spin_unlock_irq(i32* @s3c_rtc_pie_lock)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %13, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
