; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_update_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_update_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9013_update_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_update_statistics(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9013_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.af9013_state*, %struct.af9013_state** %7, align 8
  store %struct.af9013_state* %8, %struct.af9013_state** %4, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %11 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @time_before(i64 %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i64 @msecs_to_jiffies(i32 1200)
  %19 = add nsw i64 %17, %18
  %20 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %21 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = call i32 @af9013_update_signal_strength(%struct.dvb_frontend* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %40

27:                                               ; preds = %16
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = call i32 @af9013_update_snr(%struct.dvb_frontend* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %40

33:                                               ; preds = %27
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 @af9013_update_ber_unc(%struct.dvb_frontend* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %38, %32, %26
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @af9013_update_signal_strength(%struct.dvb_frontend*) #1

declare dso_local i32 @af9013_update_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @af9013_update_ber_unc(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
