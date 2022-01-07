; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btmrvl_sdio_card = type { i32 }

@user_rmmod = common dso_local global i64 0, align 8
@MODULE_SHUTDOWN_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unregester dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btmrvl_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %5 = icmp ne %struct.sdio_func* %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.btmrvl_sdio_card* %8, %struct.btmrvl_sdio_card** %3, align 8
  %9 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %10 = icmp ne %struct.btmrvl_sdio_card* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = load i64, i64* @user_rmmod, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %16 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MODULE_SHUTDOWN_REQ, align 4
  %19 = call i32 @btmrvl_send_module_cfg_cmd(i32 %17, i32 %18)
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %21 = call i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %20)
  br label %22

22:                                               ; preds = %14, %11
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %25 = call i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card* %24)
  %26 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %27 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @btmrvl_remove_card(i32 %28)
  %30 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %31 = call i32 @kfree(%struct.btmrvl_sdio_card* %30)
  br label %32

32:                                               ; preds = %22, %6
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @btmrvl_send_module_cfg_cmd(i32, i32) #1

declare dso_local i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @btmrvl_remove_card(i32) #1

declare dso_local i32 @kfree(%struct.btmrvl_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
