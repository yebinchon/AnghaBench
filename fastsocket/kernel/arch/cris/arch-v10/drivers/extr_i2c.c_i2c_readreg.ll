; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_readreg.c"
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
  %9 = call i32 @spin_lock(i32* @i2c_lock)
  br label %10

10:                                               ; preds = %54, %2
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = call i32 (...) @i2c_start()
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 254
  %17 = trunc i32 %16 to i8
  %18 = call i32 @i2c_outbyte(i8 zeroext %17)
  %19 = call i32 (...) @i2c_getack()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = call i32 (...) @i2c_dir_out()
  %24 = load i8, i8* %4, align 1
  %25 = call i32 @i2c_outbyte(i8 zeroext %24)
  %26 = call i32 (...) @i2c_getack()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* @CLOCK_LOW_TIME, align 4
  %31 = call i32 @i2c_delay(i32 %30)
  %32 = call i32 (...) @i2c_start()
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 1
  %36 = trunc i32 %35 to i8
  %37 = call i32 @i2c_outbyte(i8 zeroext %36)
  %38 = call i32 (...) @i2c_getack()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = call zeroext i8 (...) @i2c_inbyte()
  store i8 %42, i8* %5, align 1
  %43 = call i32 (...) @i2c_sendnack()
  %44 = call i32 (...) @i2c_stop()
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %51, 0
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %10, label %56

56:                                               ; preds = %54
  %57 = call i32 @spin_unlock(i32* @i2c_lock)
  %58 = load i8, i8* %5, align 1
  ret i8 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @i2c_start(...) #1

declare dso_local i32 @i2c_outbyte(i8 zeroext) #1

declare dso_local i32 @i2c_getack(...) #1

declare dso_local i32 @i2c_dir_out(...) #1

declare dso_local i32 @i2c_delay(i32) #1

declare dso_local zeroext i8 @i2c_inbyte(...) #1

declare dso_local i32 @i2c_sendnack(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
