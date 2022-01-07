; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_schedule_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_schedule_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@STATE_RECOVERY = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"recovering: skip scheduling %s reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"scheduling %s reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"scheduling %s reset for %s\0A\00", align 1
@STATE_READY = common dso_local global i64 0, align 8
@reset_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_schedule_reset(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STATE_RECOVERY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* @drv, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @RESET_TYPE(i32 %17)
  %19 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.efx_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %70

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %32 [
    i32 131, label %22
    i32 133, label %22
    i32 130, label %22
    i32 128, label %22
    i32 132, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = load i32, i32* @drv, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RESET_TYPE(i32 %29)
  %31 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.efx_nic* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %50

32:                                               ; preds = %20
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %37(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = load i32, i32* @drv, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @RESET_TYPE(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @RESET_TYPE(i32 %47)
  %49 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.efx_nic* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %32, %22
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 2
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = call i32 (...) @smp_mb()
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @ACCESS_ONCE(i64 %58)
  %60 = load i64, i64* @STATE_READY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %70

63:                                               ; preds = %50
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = call i32 @efx_mcdi_mode_poll(%struct.efx_nic* %64)
  %66 = load i32, i32* @reset_workqueue, align 4
  %67 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 1
  %69 = call i32 @queue_work(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %63, %62, %11
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @RESET_TYPE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @ACCESS_ONCE(i64) #1

declare dso_local i32 @efx_mcdi_mode_poll(%struct.efx_nic*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
