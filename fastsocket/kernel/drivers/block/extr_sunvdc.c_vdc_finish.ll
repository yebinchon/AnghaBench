; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vio_driver_state*, i32, i32)* @vdc_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_finish(%struct.vio_driver_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %8 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %16 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %25 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %29 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @complete(i32* %31)
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %34 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %33, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %22, %14, %3
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
