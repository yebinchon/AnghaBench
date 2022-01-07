; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp8psk_fe_state = type { i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@GET_SIGNAL_LOCK = common dso_local global i32 0, align 4
@GET_SIGNAL_STRENGTH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp8psk_fe_state*)* @gp8psk_fe_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state* %0) #0 {
  %2 = alloca %struct.gp8psk_fe_state*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.gp8psk_fe_state* %0, %struct.gp8psk_fe_state** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %6 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @time_after(i64 %4, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %12 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GET_SIGNAL_LOCK, align 4
  %15 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %16 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %15, i32 0, i32 0
  %17 = call i32 @gp8psk_usb_in_op(i32 %13, i32 %14, i32 0, i32 0, i32* %16, i32 1)
  %18 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %19 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GET_SIGNAL_STRENGTH, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %23 = call i32 @gp8psk_usb_in_op(i32 %20, i32 %21, i32 0, i32 0, i32* %22, i32 6)
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = or i32 %26, %28
  %30 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %31 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %34 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 1000
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %32, %39
  %41 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %2, align 8
  %42 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @gp8psk_usb_in_op(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
