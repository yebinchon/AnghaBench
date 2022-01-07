; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_auxio_32.c_set_auxio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_auxio_32.c_set_auxio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@auxio_lock = common dso_local global i32 0, align 4
@sparc_cpu_model = common dso_local global i32 0, align 4
@auxio_register = common dso_local global i32 0, align 4
@AUXIO_ORMEIN = common dso_local global i8 0, align 1
@AUXIO_ORMEIN4M = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [42 x i8] c"Can't set AUXIO register on this machine.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_auxio(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @auxio_lock, i64 %7)
  %9 = load i32, i32* @sparc_cpu_model, align 4
  switch i32 %9, label %51 [
    i32 130, label %10
    i32 128, label %28
    i32 129, label %50
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @auxio_register, align 4
  %12 = call zeroext i8 @sbus_readb(i32 %11)
  store i8 %12, i8* %5, align 1
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = load i8, i8* @AUXIO_ORMEIN, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* @auxio_register, align 4
  %27 = call i32 @sbus_writeb(i8 zeroext %25, i32 %26)
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* @auxio_register, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %53

32:                                               ; preds = %28
  %33 = load i32, i32* @auxio_register, align 4
  %34 = call zeroext i8 @sbus_readb(i32 %33)
  store i8 %34, i8* %5, align 1
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = load i8, i8* @AUXIO_ORMEIN4M, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* @auxio_register, align 4
  %49 = call i32 @sbus_writeb(i8 zeroext %47, i32 %48)
  br label %53

50:                                               ; preds = %2
  br label %53

51:                                               ; preds = %2
  %52 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %50, %32, %31, %10
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @auxio_lock, i64 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @sbus_readb(i32) #1

declare dso_local i32 @sbus_writeb(i8 zeroext, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
