; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_schedule_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.work_struct = type opaque
%struct.i2400m_work = type { i32, i32 }
%struct.work_struct.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_schedule_work(%struct.i2400m* %0, void (%struct.work_struct*)* %1, i32 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca void (%struct.work_struct*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2400m_work*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.i2400m_work* @kzalloc(i32 8, i32 %11)
  store %struct.i2400m_work* %12, %struct.i2400m_work** %8, align 8
  %13 = load %struct.i2400m_work*, %struct.i2400m_work** %8, align 8
  %14 = icmp eq %struct.i2400m_work* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %18 = call i32 @i2400m_get(%struct.i2400m* %17)
  %19 = load %struct.i2400m_work*, %struct.i2400m_work** %8, align 8
  %20 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i2400m_work*, %struct.i2400m_work** %8, align 8
  %22 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %21, i32 0, i32 0
  %23 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %5, align 8
  %24 = bitcast void (%struct.work_struct*)* %23 to void (%struct.work_struct.0*)*
  %25 = call i32 @INIT_WORK(i32* %22, void (%struct.work_struct.0*)* %24)
  %26 = load %struct.i2400m_work*, %struct.i2400m_work** %8, align 8
  %27 = getelementptr inbounds %struct.i2400m_work, %struct.i2400m_work* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %16
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.i2400m_work* @kzalloc(i32, i32) #1

declare dso_local i32 @i2400m_get(%struct.i2400m*) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
