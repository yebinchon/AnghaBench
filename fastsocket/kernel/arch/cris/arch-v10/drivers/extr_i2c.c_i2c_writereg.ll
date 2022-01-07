; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_writereg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_writereg.c"
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
  %10 = call i32 @spin_lock(i32* @i2c_lock)
  br label %11

11:                                               ; preds = %51, %3
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call i32 (...) @i2c_start()
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 254
  %18 = trunc i32 %17 to i8
  %19 = call i32 @i2c_outbyte(i8 zeroext %18)
  %20 = call i32 (...) @i2c_getack()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %11
  %24 = call i32 (...) @i2c_dir_out()
  %25 = load i8, i8* %5, align 1
  %26 = call i32 @i2c_outbyte(i8 zeroext %25)
  %27 = call i32 (...) @i2c_getack()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @i2c_outbyte(i8 zeroext %33)
  %35 = call i32 (...) @i2c_getack()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = call i32 (...) @i2c_stop()
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %48, 0
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %11, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %55 = call i32 @i2c_delay(i32 %54)
  %56 = call i32 @spin_unlock(i32* @i2c_lock)
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 0, %57
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
