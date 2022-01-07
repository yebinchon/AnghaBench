; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_stop_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_stop_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.qib_pportdata*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.qib_pportdata = type { %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_stop_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_stop_timers(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 3
  %13 = call i32 @del_timer_sync(%struct.TYPE_2__* %12)
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 2
  %26 = call i32 @del_timer_sync(%struct.TYPE_2__* %25)
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %17
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %77, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 1
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %40, i64 %42
  store %struct.qib_pportdata* %43, %struct.qib_pportdata** %3, align 8
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 3
  %52 = call i32 @del_timer_sync(%struct.TYPE_2__* %51)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %61 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i32 0, i32 2
  %62 = call i32 @del_timer_sync(%struct.TYPE_2__* %61)
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %63, i32 0, i32 1
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 0
  %75 = call i32 @del_timer_sync(%struct.TYPE_2__* %74)
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %31

80:                                               ; preds = %31
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
