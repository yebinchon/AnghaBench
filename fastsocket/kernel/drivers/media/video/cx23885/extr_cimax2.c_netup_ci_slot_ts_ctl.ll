; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_slot_ts_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_slot_ts_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.netup_ci_state* }
%struct.netup_ci_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netup_ci_slot_ts_ctl(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netup_ci_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %8, i32 0, i32 0
  %10 = load %struct.netup_ci_state*, %struct.netup_ci_state** %9, align 8
  store %struct.netup_ci_state* %10, %struct.netup_ci_state** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 0, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %18 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %21 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netup_read_i2c(i32 %19, i32 %22, i32 0, i32* %7, i32 1)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 96
  store i32 %25, i32* %7, align 4
  %26 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %27 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %30 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netup_write_i2c(i32 %28, i32 %31, i32 0, i32* %7, i32 1)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @netup_read_i2c(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netup_write_i2c(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
