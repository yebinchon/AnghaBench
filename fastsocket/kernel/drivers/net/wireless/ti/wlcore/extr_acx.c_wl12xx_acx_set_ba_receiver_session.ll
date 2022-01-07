; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_receiver_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_receiver_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wl1271_acx_ba_receiver_setup = type { i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"acx ba receiver session setting\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BA_SESSION_RX_SETUP = common dso_local global i32 0, align 4
@CMD_STATUS_NO_RX_BA_SESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"acx ba receiver session failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no fw rx ba on tid %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_set_ba_receiver_session(%struct.wl1271* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl1271_acx_ba_receiver_setup*, align 8
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wl1271_acx_ba_receiver_setup* @kzalloc(i32 20, i32 %15)
  store %struct.wl1271_acx_ba_receiver_setup* %16, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %17 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %18 = icmp ne %struct.wl1271_acx_ba_receiver_setup* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %63

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %25 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %28 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %31 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %38 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %41 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %43 = load i32, i32* @ACX_BA_SESSION_RX_SETUP, align 4
  %44 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %45 = load i32, i32* @CMD_STATUS_NO_RX_BA_SESSION, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = call i32 @wlcore_cmd_configure_failsafe(%struct.wl1271* %42, i32 %43, %struct.wl1271_acx_ba_receiver_setup* %44, i32 20, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %22
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @wl1271_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %63

53:                                               ; preds = %22
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @CMD_STATUS_NO_RX_BA_SESSION, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %57, %50, %19
  %64 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %11, align 8
  %65 = call i32 @kfree(%struct.wl1271_acx_ba_receiver_setup* %64)
  %66 = load i32, i32* %12, align 4
  ret i32 %66
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ba_receiver_setup* @kzalloc(i32, i32) #1

declare dso_local i32 @wlcore_cmd_configure_failsafe(%struct.wl1271*, i32, %struct.wl1271_acx_ba_receiver_setup*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ba_receiver_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
