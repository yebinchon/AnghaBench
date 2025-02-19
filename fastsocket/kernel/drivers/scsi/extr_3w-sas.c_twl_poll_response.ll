; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_poll_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_poll_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @twl_poll_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_poll_response(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %41, %3
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @TWL_HOBQPL_REG_ADDR(i32* %20)
  %22 = call i8* @readl(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @TW_RESID_OUT(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add i64 %32, %36
  %38 = call i64 @time_after(i64 %31, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %44

41:                                               ; preds = %30
  %42 = call i32 @msleep(i32 50)
  br label %15

43:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @TWL_HOBQPL_REG_ADDR(i32*) #1

declare dso_local i32 @TW_RESID_OUT(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
