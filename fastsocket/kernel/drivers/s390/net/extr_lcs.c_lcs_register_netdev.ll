; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_register_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_register_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.lcs_card = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"regnetdv\00", align 1
@NETREG_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_register_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_register_netdev(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %5 = load i32, i32* @setup, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 2, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %7, i32 0, i32 0
  %9 = call %struct.lcs_card* @dev_get_drvdata(i32* %8)
  store %struct.lcs_card* %9, %struct.lcs_card** %4, align 8
  %10 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NETREG_UNINITIALIZED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %20 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %22, i32 0, i32 0
  %24 = call i32 @SET_NETDEV_DEV(%struct.TYPE_3__* %21, i32* %23)
  %25 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %26 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @register_netdev(%struct.TYPE_3__* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @register_netdev(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
