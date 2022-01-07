; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c___i2400m_dev_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c___i2400m_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32 (%struct.i2400m*)*, i64, %struct.wimax_dev }
%struct.wimax_dev = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@__WIMAX_ST_QUIESCING = common dso_local global i32 0, align 4
@WIMAX_ST_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"(i2400m %p) = 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @__i2400m_dev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__i2400m_dev_stop(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %5 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %6 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %5, i32 0, i32 3
  store %struct.wimax_dev* %6, %struct.wimax_dev** %3, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = call %struct.device* @i2400m_dev(%struct.i2400m* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %10)
  %12 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %13 = load i32, i32* @__WIMAX_ST_QUIESCING, align 4
  %14 = call i32 @wimax_state_change(%struct.wimax_dev* %12, i32 %13)
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = call i32 @i2400m_dev_shutdown(%struct.i2400m* %15)
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 1
  %21 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %20, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %23 = call i32 %21(%struct.i2400m* %22)
  %24 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @destroy_workqueue(i32 %26)
  %28 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %29 = call i32 @i2400m_rx_release(%struct.i2400m* %28)
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = call i32 @i2400m_tx_release(%struct.i2400m* %30)
  %32 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %33 = load i32, i32* @WIMAX_ST_DOWN, align 4
  %34 = call i32 @wimax_state_change(%struct.wimax_dev* %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %37 = call i32 @d_fnend(i32 3, %struct.device* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %36)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @i2400m_dev_shutdown(%struct.i2400m*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @i2400m_rx_release(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_release(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
