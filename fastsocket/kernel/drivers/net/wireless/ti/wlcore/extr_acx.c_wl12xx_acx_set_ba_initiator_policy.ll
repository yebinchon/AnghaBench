; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_initiator_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_initiator_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_ba_initiator_policy = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acx ba initiator policy\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BA_SESSION_INIT_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"acx ba initiator policy failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_set_ba_initiator_policy(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl1271_acx_ba_initiator_policy*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wl1271_acx_ba_initiator_policy* @kzalloc(i32 16, i32 %9)
  store %struct.wl1271_acx_ba_initiator_policy* %10, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %11 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %12 = icmp ne %struct.wl1271_acx_ba_initiator_policy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %21 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, %struct.wl1271_acx_ba_initiator_policy* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %28 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, %struct.wl1271_acx_ba_initiator_policy* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %35 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, %struct.wl1271_acx_ba_initiator_policy* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %42 = getelementptr inbounds %struct.wl1271_acx_ba_initiator_policy, %struct.wl1271_acx_ba_initiator_policy* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %44 = load i32, i32* @ACX_BA_SESSION_INIT_POLICY, align 4
  %45 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %46 = call i32 @wl1271_cmd_configure(%struct.wl1271* %43, i32 %44, %struct.wl1271_acx_ba_initiator_policy* %45, i32 16)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %16
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @wl1271_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %16
  br label %53

53:                                               ; preds = %52, %49, %13
  %54 = load %struct.wl1271_acx_ba_initiator_policy*, %struct.wl1271_acx_ba_initiator_policy** %5, align 8
  %55 = call i32 @kfree(%struct.wl1271_acx_ba_initiator_policy* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ba_initiator_policy* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_ba_initiator_policy*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ba_initiator_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
