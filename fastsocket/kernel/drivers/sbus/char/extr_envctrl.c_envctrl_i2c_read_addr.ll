; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_read_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i64 0, align 8
@PCF8584_DATA = common dso_local global i64 0, align 8
@OBD_SEND_START = common dso_local global i8 0, align 1
@PCF8584_CSR = common dso_local global i64 0, align 8
@STATUS_LRB = common dso_local global i32 0, align 4
@OBD_SEND_STOP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @envctrl_i2c_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_i2c_read_addr(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = call i32 (...) @envctrl_i2c_test_bb()
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, 1
  %8 = trunc i32 %7 to i8
  %9 = load i64, i64* @i2c, align 8
  %10 = load i64, i64* @PCF8584_DATA, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writeb(i8 zeroext %8, i64 %11)
  %13 = call i32 (...) @envctrl_i2c_test_bb()
  %14 = load i8, i8* @OBD_SEND_START, align 1
  %15 = load i64, i64* @i2c, align 8
  %16 = load i64, i64* @PCF8584_CSR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb(i8 zeroext %14, i64 %17)
  %19 = call i32 (...) @envtrl_i2c_test_pin()
  %20 = load i64, i64* @i2c, align 8
  %21 = load i64, i64* @PCF8584_CSR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = load i32, i32* @STATUS_LRB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load i64, i64* @i2c, align 8
  %29 = load i64, i64* @PCF8584_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readb(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load i8, i8* @OBD_SEND_STOP, align 1
  %34 = load i64, i64* @i2c, align 8
  %35 = load i64, i64* @PCF8584_CSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i8 zeroext %33, i64 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @envctrl_i2c_test_bb(...) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local i32 @envtrl_i2c_test_pin(...) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
