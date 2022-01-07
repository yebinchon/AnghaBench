; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_lock = common dso_local global i32 0, align 4
@CLOCK_LOW_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_write(i8 zeroext %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 3, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @i2c_lock, i64 %12)
  br label %14

14:                                               ; preds = %57, %3
  store i32 0, i32* %7, align 4
  %15 = call i32 (...) @i2c_start()
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 254
  %19 = trunc i32 %18 to i8
  %20 = call i32 @i2c_outbyte(i8 zeroext %19)
  %21 = call i32 (...) @i2c_getack()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %14
  store i8 0, i8* %9, align 1
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %31, i64 %34
  %36 = call i32 @memcpy(i8* %10, i8* %35, i32 1)
  %37 = load i8, i8* %10, align 1
  %38 = call i32 @i2c_outbyte(i8 zeroext %37)
  %39 = call i32 (...) @i2c_getack()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %9, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %9, align 1
  br label %25

48:                                               ; preds = %25
  %49 = call i32 (...) @i2c_stop()
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %54, 0
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %14, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %61 = call i32 @i2c_delay(i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* @i2c_lock, i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 0, %64
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
