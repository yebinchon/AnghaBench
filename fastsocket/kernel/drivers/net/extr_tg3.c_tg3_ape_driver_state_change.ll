; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_driver_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_driver_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_APE_HOST_SEG_SIG = common dso_local global i32 0, align 4
@APE_HOST_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@TG3_APE_HOST_SEG_LEN = common dso_local global i32 0, align 4
@APE_HOST_SEG_LEN_MAGIC = common dso_local global i32 0, align 4
@TG3_APE_HOST_INIT_COUNT = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRIVER_ID = common dso_local global i32 0, align 4
@TG3_MAJ_NUM = common dso_local global i32 0, align 4
@TG3_MIN_NUM = common dso_local global i32 0, align 4
@TG3_APE_HOST_BEHAVIOR = common dso_local global i32 0, align 4
@APE_HOST_BEHAV_NO_PHYLOCK = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_START = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_START = common dso_local global i32 0, align 4
@WOL_ENABLE = common dso_local global i32 0, align 4
@TG3_APE_HOST_WOL_SPEED = common dso_local global i32 0, align 4
@TG3_APE_HOST_WOL_SPEED_AUTO = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_WOL = common dso_local global i32 0, align 4
@TG3_APE_HOST_DRVR_STATE_UNLOAD = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_UNLOAD = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_DRIVER_EVNT = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_STATE_CHNGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_ape_driver_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_ape_driver_state_change(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = load i32, i32* @ENABLE_APE, align 4
  %9 = call i64 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %75 [
    i32 129, label %14
    i32 128, label %46
  ]

14:                                               ; preds = %12
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = load i32, i32* @TG3_APE_HOST_SEG_SIG, align 4
  %17 = load i32, i32* @APE_HOST_SEG_SIG_MAGIC, align 4
  %18 = call i32 @tg3_ape_write32(%struct.tg3* %15, i32 %16, i32 %17)
  %19 = load %struct.tg3*, %struct.tg3** %3, align 8
  %20 = load i32, i32* @TG3_APE_HOST_SEG_LEN, align 4
  %21 = load i32, i32* @APE_HOST_SEG_LEN_MAGIC, align 4
  %22 = call i32 @tg3_ape_write32(%struct.tg3* %19, i32 %20, i32 %21)
  %23 = load %struct.tg3*, %struct.tg3** %3, align 8
  %24 = load i32, i32* @TG3_APE_HOST_INIT_COUNT, align 4
  %25 = call i32 @tg3_ape_read32(%struct.tg3* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = load i32, i32* @TG3_APE_HOST_INIT_COUNT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = call i32 @tg3_ape_write32(%struct.tg3* %26, i32 %27, i32 %29)
  %31 = load %struct.tg3*, %struct.tg3** %3, align 8
  %32 = load i32, i32* @TG3_APE_HOST_DRIVER_ID, align 4
  %33 = load i32, i32* @TG3_MAJ_NUM, align 4
  %34 = load i32, i32* @TG3_MIN_NUM, align 4
  %35 = call i32 @APE_HOST_DRIVER_ID_MAGIC(i32 %33, i32 %34)
  %36 = call i32 @tg3_ape_write32(%struct.tg3* %31, i32 %32, i32 %35)
  %37 = load %struct.tg3*, %struct.tg3** %3, align 8
  %38 = load i32, i32* @TG3_APE_HOST_BEHAVIOR, align 4
  %39 = load i32, i32* @APE_HOST_BEHAV_NO_PHYLOCK, align 4
  %40 = call i32 @tg3_ape_write32(%struct.tg3* %37, i32 %38, i32 %39)
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = load i32, i32* @TG3_APE_HOST_DRVR_STATE, align 4
  %43 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_START, align 4
  %44 = call i32 @tg3_ape_write32(%struct.tg3* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @APE_EVENT_STATUS_STATE_START, align 4
  store i32 %45, i32* %5, align 4
  br label %76

46:                                               ; preds = %12
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = load i32, i32* @TG3_APE_HOST_SEG_SIG, align 4
  %49 = call i32 @tg3_ape_write32(%struct.tg3* %47, i32 %48, i32 0)
  %50 = load %struct.tg3*, %struct.tg3** %3, align 8
  %51 = getelementptr inbounds %struct.tg3, %struct.tg3* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @device_may_wakeup(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.tg3*, %struct.tg3** %3, align 8
  %58 = load i32, i32* @WOL_ENABLE, align 4
  %59 = call i64 @tg3_flag(%struct.tg3* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.tg3*, %struct.tg3** %3, align 8
  %63 = load i32, i32* @TG3_APE_HOST_WOL_SPEED, align 4
  %64 = load i32, i32* @TG3_APE_HOST_WOL_SPEED_AUTO, align 4
  %65 = call i32 @tg3_ape_write32(%struct.tg3* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_WOL, align 4
  store i32 %66, i32* %6, align 4
  br label %69

67:                                               ; preds = %56, %46
  %68 = load i32, i32* @TG3_APE_HOST_DRVR_STATE_UNLOAD, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load %struct.tg3*, %struct.tg3** %3, align 8
  %71 = load i32, i32* @TG3_APE_HOST_DRVR_STATE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @tg3_ape_write32(%struct.tg3* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @APE_EVENT_STATUS_STATE_UNLOAD, align 4
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %12
  br label %85

76:                                               ; preds = %69, %14
  %77 = load i32, i32* @APE_EVENT_STATUS_DRIVER_EVNT, align 4
  %78 = load i32, i32* @APE_EVENT_STATUS_STATE_CHNGE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.tg3*, %struct.tg3** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @tg3_ape_send_event(%struct.tg3* %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %75, %11
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @APE_HOST_DRIVER_ID_MAGIC(i32, i32) #1

declare dso_local i32 @device_may_wakeup(i32*) #1

declare dso_local i32 @tg3_ape_send_event(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
