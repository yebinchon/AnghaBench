; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_start_motor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_start_motor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i64 }

@current_drive = common dso_local global i64 0, align 8
@raw_cmd = common dso_local global %struct.TYPE_5__* null, align 8
@FD_RAW_NO_MOTOR = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@DRS = common dso_local global %struct.TYPE_7__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@motor_off_timer = common dso_local global i64 0, align 8
@fdc = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void ()*)* @start_motor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_motor(void ()* %0) #0 {
  %2 = alloca void ()*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store void ()* %0, void ()** %2, align 8
  store i32 252, i32* %3, align 4
  %5 = load i64, i64* @current_drive, align 8
  %6 = call i32 @UNIT(i64 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FD_RAW_NO_MOTOR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @current_drive, align 8
  %18 = call i32 @UNIT(i64 %17)
  %19 = shl i32 16, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %13
  %23 = call i32 (...) @set_debugt()
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @current_drive, align 8
  %30 = call i32 @UNIT(i64 %29)
  %31 = shl i32 16, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %13
  br label %52

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @current_drive, align 8
  %40 = call i32 @UNIT(i64 %39)
  %41 = shl i32 16, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i64, i64* @current_drive, align 8
  %46 = call i32 @UNIT(i64 %45)
  %47 = shl i32 16, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %35
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i64, i64* @motor_off_timer, align 8
  %54 = load i64, i64* @current_drive, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @del_timer(i64 %55)
  %57 = load i32, i32* @fdc, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @set_dor(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DP, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load void ()*, void ()** %2, align 8
  %69 = ptrtoint void ()* %68 to i32
  %70 = call i32 @fd_wait_for_completion(i64 %67, i32 %69)
  ret i32 %70
}

declare dso_local i32 @UNIT(i64) #1

declare dso_local i32 @set_debugt(...) #1

declare dso_local i32 @del_timer(i64) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @fd_wait_for_completion(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
