; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_writereg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_lock = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_writereg(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 3, i32* %8, align 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @i2c_lock, i64 %10)
  br label %12

12:                                               ; preds = %48, %3
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @i2c_start()
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 254
  %17 = trunc i32 %16 to i8
  %18 = call i32 @i2c_outbyte(i8 zeroext %17)
  %19 = call i32 (...) @i2c_getack()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %12
  %23 = call i32 (...) @i2c_dir_out()
  %24 = load i8, i8* %5, align 1
  %25 = call i32 @i2c_outbyte(i8 zeroext %24)
  %26 = call i32 (...) @i2c_getack()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i8, i8* %6, align 1
  %33 = call i32 @i2c_outbyte(i8 zeroext %32)
  %34 = call i32 (...) @i2c_getack()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 (...) @i2c_stop()
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %45, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %12, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %52 = call i32 @i2c_delay(i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @i2c_lock, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 0, %55
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
