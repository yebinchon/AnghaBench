; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_op-rfkill.c_i2400m_radio_is.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_op-rfkill.c_i2400m_radio_is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64 }

@WIMAX_RF_OFF = common dso_local global i32 0, align 4
@I2400M_SS_RF_OFF = common dso_local global i64 0, align 8
@I2400M_SS_RF_SHUTDOWN = common dso_local global i64 0, align 8
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, i32)* @i2400m_radio_is to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_radio_is(%struct.i2400m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WIMAX_RF_OFF, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I2400M_SS_RF_OFF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I2400M_SS_RF_SHUTDOWN, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ true, %9 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WIMAX_RF_ON, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @I2400M_SS_RF_OFF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %36 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I2400M_SS_RF_SHUTDOWN, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i1 [ false, %28 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %24
  %44 = call i32 (...) @BUG()
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
