; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_sda_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_sda_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i32 (%struct.qib_devdata*, i32, i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i64)* @sda_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sda_out(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 1
  %12 = load i32 (%struct.qib_devdata*, i32, i64, i64)*, i32 (%struct.qib_devdata*, i32, i64, i64)** %11, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i64 [ 0, %16 ], [ %18, %17 ]
  %21 = load i64, i64* %5, align 8
  %22 = call i32 %12(%struct.qib_devdata* %13, i32 0, i64 %20, i64 %21)
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = call i32 @i2c_wait_for_writes(%struct.qib_devdata* %23)
  %25 = call i32 @udelay(i32 2)
  ret void
}

declare dso_local i32 @i2c_wait_for_writes(%struct.qib_devdata*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
