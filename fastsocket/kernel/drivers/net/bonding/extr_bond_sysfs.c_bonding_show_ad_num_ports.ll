; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_ad_num_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_ad_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bonding = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ad_info = type { i32 }

@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bonding_show_ad_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_show_ad_num_ports(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bonding*, align 8
  %9 = alloca %struct.ad_info, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.bonding* @to_bond(%struct.device* %10)
  store %struct.bonding* %11, %struct.bonding** %8, align 8
  %12 = load %struct.bonding*, %struct.bonding** %8, align 8
  %13 = getelementptr inbounds %struct.bonding, %struct.bonding* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BOND_MODE_8023AD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.bonding*, %struct.bonding** %8, align 8
  %21 = call i64 @bond_3ad_get_active_agg_info(%struct.bonding* %20, %struct.ad_info* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  %29 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.bonding* @to_bond(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @bond_3ad_get_active_agg_info(%struct.bonding*, %struct.ad_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
