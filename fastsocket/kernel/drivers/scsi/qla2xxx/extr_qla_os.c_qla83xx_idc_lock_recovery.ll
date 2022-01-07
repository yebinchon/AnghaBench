; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@QLA83XX_MAX_LOCK_RECOVERY_WAIT = common dso_local global i64 0, align 8
@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @qla83xx_idc_lock_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla83xx_idc_lock_recovery(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @QLA83XX_MAX_LOCK_RECOVERY_WAIT, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %44, %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %15 = call i32 @qla83xx_rd_reg(i32* %13, i32 %14, i64* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %48

19:                                               ; preds = %12
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @time_after_eq(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @qla83xx_force_lock_recovery(i32* %25)
  %27 = load i32, i32* @QLA_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %24
  %32 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %19
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %36 = call i32 @qla83xx_rd_reg(i32* %34, i32 %35, i64* %6)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @qla83xx_wait_logic()
  br label %12

46:                                               ; preds = %40
  %47 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %39, %18
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %31, %29
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @qla83xx_rd_reg(i32*, i32, i64*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @qla83xx_force_lock_recovery(i32*) #1

declare dso_local i32 @qla83xx_wait_logic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
