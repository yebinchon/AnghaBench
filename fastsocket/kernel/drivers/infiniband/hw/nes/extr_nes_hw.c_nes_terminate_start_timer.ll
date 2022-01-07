; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_start_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@nes_terminate_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_qp*)* @nes_terminate_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_terminate_start_timer(%struct.nes_qp* %0) #0 {
  %2 = alloca %struct.nes_qp*, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %2, align 8
  %3 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %4 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %3, i32 0, i32 0
  %5 = call i32 @init_timer(%struct.TYPE_3__* %4)
  %6 = load i32, i32* @nes_terminate_timeout, align 4
  %7 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %8 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %14 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 %12, i64* %15, align 8
  %16 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %17 = ptrtoint %struct.nes_qp* %16 to i64
  %18 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %19 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.nes_qp*, %struct.nes_qp** %2, align 8
  %22 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %21, i32 0, i32 0
  %23 = call i32 @add_timer(%struct.TYPE_3__* %22)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
