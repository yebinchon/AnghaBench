; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_smapi.c_smapi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_smapi.c_smapi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@TRACE_SMAPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smapi::smapi_init entry\0A\00", align 1
@rtc_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"smapi::smapi_init usSmapiID %x\0A\00", align 1
@g_usSmapiPort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"smapi::smapi_init, ERROR unable to read from SMAPI port\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"smapi::smapi_init, exit TRUE g_usSmapiPort %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"smapi::smapi_init, ERROR invalid usSmapiID\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smapi_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = load i32, i32* @EIO, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %1, align 4
  store i16 0, i16* %2, align 2
  %6 = load i32, i32* @TRACE_SMAPI, align 4
  %7 = call i32 @PRINTK_1(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %8)
  %10 = call i32 @CMOS_READ(i32 124)
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %2, align 2
  %12 = call i32 @CMOS_READ(i32 125)
  %13 = shl i32 %12, 8
  %14 = load i16, i16* %2, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %2, align 2
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %18)
  %20 = load i32, i32* @TRACE_SMAPI, align 4
  %21 = load i16, i16* %2, align 2
  %22 = zext i16 %21 to i32
  %23 = call i32 @PRINTK_2(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i16, i16* %2, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 21321
  br i1 %26, label %27, label %46

27:                                               ; preds = %0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %28)
  %30 = call i32 @CMOS_READ(i32 126)
  store i32 %30, i32* @g_usSmapiPort, align 4
  %31 = call i32 @CMOS_READ(i32 127)
  %32 = shl i32 %31, 8
  %33 = load i32, i32* @g_usSmapiPort, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @g_usSmapiPort, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %35)
  %37 = load i32, i32* @g_usSmapiPort, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @PRINTK_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %45

41:                                               ; preds = %27
  %42 = load i32, i32* @TRACE_SMAPI, align 4
  %43 = load i32, i32* @g_usSmapiPort, align 4
  %44 = call i32 @PRINTK_2(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %41, %39
  br label %50

46:                                               ; preds = %0
  %47 = call i32 @PRINTK_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @PRINTK_1(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PRINTK_2(i32, i8*, i32) #1

declare dso_local i32 @PRINTK_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
