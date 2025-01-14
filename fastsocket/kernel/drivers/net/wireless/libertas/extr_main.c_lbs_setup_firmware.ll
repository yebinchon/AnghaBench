; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i8*, i8*, i8*, i32 }

@LBS_DEB_FW = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_setup_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_setup_firmware(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 -1, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* @LBS_DEB_FW, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i32 @memset(i32 %11, i32 255, i32 %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = call i32 @lbs_update_hw_spec(%struct.lbs_private* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = call i32 @lbs_get_tx_power(%struct.lbs_private* %20, i8** %4, i8** %5, i8** %6)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %36 = call i32 @lbs_set_mac_control(%struct.lbs_private* %35)
  br label %37

37:                                               ; preds = %34, %18
  %38 = load i32, i32* @LBS_DEB_FW, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @lbs_deb_leave_args(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @lbs_update_hw_spec(%struct.lbs_private*) #1

declare dso_local i32 @lbs_get_tx_power(%struct.lbs_private*, i8**, i8**, i8**) #1

declare dso_local i32 @lbs_set_mac_control(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
