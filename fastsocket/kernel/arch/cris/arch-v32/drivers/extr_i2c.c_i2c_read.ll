; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_read(i8 zeroext %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i32 3, i32* %10, align 4
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @i2c_lock, i64 %12)
  br label %14

14:                                               ; preds = %62, %3
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @memset(i8* %15, i32 0, i64 %16)
  %18 = call i32 (...) @i2c_start()
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, 1
  %22 = trunc i32 %21 to i8
  %23 = call i32 @i2c_outbyte(i8 zeroext %22)
  %24 = call i32 (...) @i2c_getack()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %14
  store i8 0, i8* %8, align 1
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = call zeroext i8 (...) @i2c_inbyte()
  store i8 %34, i8* %7, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %35, i64 %38
  %40 = call i32 @memcpy(i8* %39, i8* %7, i32 1)
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, 1
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 (...) @i2c_sendack()
  br label %48

48:                                               ; preds = %46, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i8, i8* %8, align 1
  %51 = add i8 %50, 1
  store i8 %51, i8* %8, align 1
  br label %28

52:                                               ; preds = %28
  %53 = call i32 (...) @i2c_sendnack()
  %54 = call i32 (...) @i2c_stop()
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %59, 0
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %14, label %64

64:                                               ; preds = %62
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* @i2c_lock, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 0, %67
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local zeroext i8 @i2c_inbyte(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @i2c_sendack(...) #1

declare dso_local i32 @i2c_sendnack(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
