; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.ctcm_priv = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"removing device %p, proto : %d\00", align 1
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @ctcm_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.ctcm_priv*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 1
  %6 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %5)
  store %struct.ctcm_priv* %6, %struct.ctcm_priv** %3, align 8
  %7 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %8 = icmp eq %struct.ctcm_priv* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* @SETUP, align 4
  %12 = load i32, i32* @CTC_DBF_INFO, align 4
  %13 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CTCM_DBF_TEXT_(i32 %11, i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ccwgroup_device* %13, i32 %16)
  %18 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %19 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %25 = call i32 @ctcm_shutdown_device(%struct.ccwgroup_device* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %27, i32 0, i32 1
  %29 = call i32 @ctcm_remove_files(i32* %28)
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %31 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %30, i32 0, i32 1
  %32 = call i32 @dev_set_drvdata(i32* %31, i32* null)
  %33 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %34 = call i32 @kfree(%struct.ctcm_priv* %33)
  %35 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %36 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %35, i32 0, i32 1
  %37 = call i32 @put_device(i32* %36)
  ret void
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, %struct.ccwgroup_device*, i32) #1

declare dso_local i32 @ctcm_shutdown_device(%struct.ccwgroup_device*) #1

declare dso_local i32 @ctcm_remove_files(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ctcm_priv*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
