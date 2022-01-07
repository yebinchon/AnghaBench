; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_lock = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @i2c_readreg(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i32 3, i32* %7, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @i2c_lock, i64 %9)
  br label %11

11:                                               ; preds = %55, %2
  store i32 0, i32* %6, align 4
  %12 = call i32 (...) @i2c_start()
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 254
  %16 = trunc i32 %15 to i8
  %17 = call i32 @i2c_outbyte(i8 zeroext %16)
  %18 = call i32 (...) @i2c_getack()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = call i32 (...) @i2c_dir_out()
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @i2c_outbyte(i8 zeroext %23)
  %25 = call i32 (...) @i2c_getack()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 2
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %32 = call i32 @i2c_delay(i32 %31)
  %33 = call i32 (...) @i2c_start()
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = call i32 @i2c_outbyte(i8 zeroext %37)
  %39 = call i32 (...) @i2c_getack()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = call zeroext i8 (...) @i2c_inbyte()
  store i8 %45, i8* %5, align 1
  %46 = call i32 (...) @i2c_sendnack()
  %47 = call i32 (...) @i2c_stop()
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %52, 0
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %11, label %57

57:                                               ; preds = %55
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @i2c_lock, i64 %58)
  %60 = load i8, i8* %5, align 1
  ret i8 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local zeroext i8 @i2c_inbyte(...) #1

declare dso_local i32 @i2c_sendnack(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
