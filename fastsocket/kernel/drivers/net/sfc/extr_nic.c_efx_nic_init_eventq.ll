; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_init_eventq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_init_eventq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.TYPE_4__, %struct.efx_nic* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.efx_nic = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.efx_channel*)*, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"channel %d event queue in special buffers %d-%d\0A\00", align 1
@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@FRF_CZ_TIMER_Q_EN = common dso_local global i32 0, align 4
@FRF_CZ_HOST_NOTIFY_MODE = common dso_local global i32 0, align 4
@FRF_CZ_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_DIS = common dso_local global i64 0, align 8
@FR_BZ_TIMER_TBL = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_EVQ_BUF_BASE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_init_eventq(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 2
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = load i32, i32* @hw, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %17 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %21 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %25 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @netif_dbg(%struct.efx_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %19, i64 %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %32 = call i64 @efx_nic_rev(%struct.efx_nic* %31)
  %33 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @FRF_CZ_TIMER_Q_EN, align 4
  %38 = load i32, i32* @FRF_CZ_HOST_NOTIFY_MODE, align 4
  %39 = load i32, i32* @FRF_CZ_TIMER_MODE, align 4
  %40 = load i64, i64* @FFE_CZ_TIMER_MODE_DIS, align 8
  %41 = call i32 @EFX_POPULATE_OWORD_3(i32 %36, i32 %37, i32 1, i32 %38, i32 0, i32 %39, i64 %40)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %43 = load i32, i32* @FR_BZ_TIMER_TBL, align 4
  %44 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %45 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @efx_writeo_table(%struct.efx_nic* %42, i32* %3, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %35, %1
  %49 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %50 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %51 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %50, i32 0, i32 1
  %52 = call i32 @efx_init_special_buffer(%struct.efx_nic* %49, %struct.TYPE_4__* %51)
  %53 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %54 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %58 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memset(i32 %56, i32 255, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @FRF_AZ_EVQ_EN, align 4
  %64 = load i32, i32* @FRF_AZ_EVQ_SIZE, align 4
  %65 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %66 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @__ffs(i64 %68)
  %70 = load i32, i32* @FRF_AZ_EVQ_BUF_BASE_ID, align 4
  %71 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %72 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @EFX_POPULATE_OWORD_3(i32 %62, i32 %63, i32 1, i32 %64, i32 %69, i32 %70, i64 %74)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %77 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %83 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @efx_writeo_table(%struct.efx_nic* %76, i32* %3, i32 %81, i32 %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.efx_channel*)*, i32 (%struct.efx_channel*)** %89, align 8
  %91 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %92 = call i32 %90(%struct.efx_channel* %91)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_init_special_buffer(%struct.efx_nic*, %struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
