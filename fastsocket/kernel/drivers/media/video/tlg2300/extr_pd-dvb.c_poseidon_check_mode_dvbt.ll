; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_check_mode_dvbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_check_mode_dvbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BULK_ALTERNATE_IFACE = common dso_local global i32 0, align 4
@TLG_MODE_CAPS_DVB_T = common dso_local global i32 0, align 4
@SGNL_SRC_SEL = common dso_local global i32 0, align 4
@TLG_SIG_SRC_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*)* @poseidon_check_mode_dvbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_check_mode_dvbt(%struct.poseidon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %7 = call i32 @set_current_state(i32 %6)
  %8 = load i32, i32* @HZ, align 4
  %9 = sdiv i32 %8, 4
  %10 = call i32 @schedule_timeout(i32 %9)
  %11 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %12 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BULK_ALTERNATE_IFACE, align 4
  %15 = call i32 @usb_set_interface(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %22 = load i32, i32* @TLG_MODE_CAPS_DVB_T, align 4
  %23 = call i32 @set_tuner_mode(%struct.poseidon* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %30 = load i32, i32* @SGNL_SRC_SEL, align 4
  %31 = load i32, i32* @TLG_SIG_SRC_ANTENNA, align 4
  %32 = call i32 @send_set_req(%struct.poseidon* %29, i32 %30, i32 %31, i32* %5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %26, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @set_tuner_mode(%struct.poseidon*, i32) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
