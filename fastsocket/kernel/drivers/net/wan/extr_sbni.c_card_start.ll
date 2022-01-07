; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sbni.c_card_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sbni.c_card_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.net_local = type { i32, i32, i64, i64, i64, i64, i64, i32 }

@CHANGE_LEVEL_START_TICKS = common dso_local global i32 0, align 4
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@FL_PREV_OK = common dso_local global i32 0, align 4
@PR_RES = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i64 0, align 8
@EN_INT = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @card_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @card_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load i32, i32* @CHANGE_LEVEL_START_TICKS, align 4
  %7 = load %struct.net_local*, %struct.net_local** %3, align 8
  %8 = getelementptr inbounds %struct.net_local, %struct.net_local* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @FL_WAIT_ACK, align 4
  %10 = load i32, i32* @FL_NEED_RESEND, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.net_local*, %struct.net_local** %3, align 8
  %14 = getelementptr inbounds %struct.net_local, %struct.net_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @FL_PREV_OK, align 4
  %18 = load %struct.net_local*, %struct.net_local** %3, align 8
  %19 = getelementptr inbounds %struct.net_local, %struct.net_local* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.net_local*, %struct.net_local** %3, align 8
  %23 = getelementptr inbounds %struct.net_local, %struct.net_local* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.net_local*, %struct.net_local** %3, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.net_local*, %struct.net_local** %3, align 8
  %27 = getelementptr inbounds %struct.net_local, %struct.net_local* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.net_local*, %struct.net_local** %3, align 8
  %29 = getelementptr inbounds %struct.net_local, %struct.net_local* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.net_local*, %struct.net_local** %3, align 8
  %31 = getelementptr inbounds %struct.net_local, %struct.net_local* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.net_local*, %struct.net_local** %3, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PR_RES, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CSR1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load i32, i32* @EN_INT, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CSR0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %43, i64 %48)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
