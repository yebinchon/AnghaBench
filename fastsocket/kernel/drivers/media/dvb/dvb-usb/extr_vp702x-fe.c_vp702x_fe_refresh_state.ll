; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_refresh_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_refresh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vp702x_fe_state = type { i32, i64, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@READ_STATUS = common dso_local global i32 0, align 4
@READ_TUNER_REG_REQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vp702x_fe_state*)* @vp702x_fe_refresh_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_fe_refresh_state(%struct.vp702x_fe_state* %0) #0 {
  %2 = alloca %struct.vp702x_fe_state*, align 8
  %3 = alloca [10 x i32], align 16
  store %struct.vp702x_fe_state* %0, %struct.vp702x_fe_state** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %6 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @time_after(i64 %4, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %12 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @READ_STATUS, align 4
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %16 = call i32 @vp702x_usb_in_op(i32 %13, i32 %14, i32 0, i32 0, i32* %15, i32 10)
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 4
  %18 = load i32, i32* %17, align 16
  %19 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %20 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %22 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @READ_TUNER_REG_REQ, align 4
  %25 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %26 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %25, i32 0, i32 4
  %27 = call i32 @vp702x_usb_in_op(i32 %23, i32 %24, i32 17, i32 0, i32* %26, i32 1)
  %28 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %29 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @READ_TUNER_REG_REQ, align 4
  %32 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %33 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %32, i32 0, i32 2
  %34 = call i32 @vp702x_usb_in_op(i32 %30, i32 %31, i32 21, i32 0, i32* %33, i32 1)
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %37 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %40, 1000
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %35, %42
  %44 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %2, align 8
  %45 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @vp702x_usb_in_op(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
