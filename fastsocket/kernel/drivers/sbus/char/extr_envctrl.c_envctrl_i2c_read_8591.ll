; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_read_8591.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_read_8591.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i64 0, align 8
@PCF8584_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i8)* @envctrl_i2c_read_8591 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @envctrl_i2c_read_8591(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = call i32 @envctrl_i2c_write_addr(i8 zeroext %5)
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @envctrl_i2c_write_data(i8 zeroext %7)
  %9 = call i32 (...) @envctrl_i2c_stop()
  %10 = load i8, i8* %3, align 1
  %11 = call i32 @envctrl_i2c_read_addr(i8 zeroext %10)
  %12 = call i32 (...) @envctrl_i2c_read_data()
  %13 = call i32 (...) @envctrl_i2c_stop()
  %14 = load i64, i64* @i2c, align 8
  %15 = load i64, i64* @PCF8584_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call zeroext i8 @readb(i64 %16)
  ret i8 %17
}

declare dso_local i32 @envctrl_i2c_write_addr(i8 zeroext) #1

declare dso_local i32 @envctrl_i2c_write_data(i8 zeroext) #1

declare dso_local i32 @envctrl_i2c_stop(...) #1

declare dso_local i32 @envctrl_i2c_read_addr(i8 zeroext) #1

declare dso_local i32 @envctrl_i2c_read_data(...) #1

declare dso_local zeroext i8 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
