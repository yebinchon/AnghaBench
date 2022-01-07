; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-xxxx.c_tw_poll_status_gone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-xxxx.c_tw_poll_status_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @tw_poll_status_gone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_poll_status_gone(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @TW_STATUS_REG_ADDR(i32* %10)
  %12 = call i32 @inl(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @tw_check_bits(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @tw_decode_bits(i32* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17, %3
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @TW_STATUS_REG_ADDR(i32* %28)
  %30 = call i32 @inl(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @tw_check_bits(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @tw_decode_bits(i32* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add i64 %40, %44
  %46 = call i64 @time_after(i64 %39, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %52

49:                                               ; preds = %38
  %50 = call i32 @msleep(i32 50)
  br label %22

51:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @TW_STATUS_REG_ADDR(i32*) #1

declare dso_local i64 @tw_check_bits(i32) #1

declare dso_local i32 @tw_decode_bits(i32*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
