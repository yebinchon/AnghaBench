; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_link_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.slave* }
%struct.slave = type { i64, i32 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@AD_LINK_SPEED_BITMASK_10MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_BITMASK_100MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_BITMASK_1000MBPS = common dso_local global i64 0, align 8
@AD_LINK_SPEED_BITMASK_10000MBPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Port %d Received link speed %d update from adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port*)* @__get_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_link_speed(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.slave*, align 8
  %4 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 1
  %7 = load %struct.slave*, %struct.slave** %6, align 8
  store %struct.slave* %7, %struct.slave** %3, align 8
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BOND_LINK_UP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.slave*, %struct.slave** %3, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %14
  %19 = load i64, i64* @AD_LINK_SPEED_BITMASK_10MBPS, align 8
  store i64 %19, i64* %4, align 8
  br label %27

20:                                               ; preds = %14
  %21 = load i64, i64* @AD_LINK_SPEED_BITMASK_100MBPS, align 8
  store i64 %21, i64* %4, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load i64, i64* @AD_LINK_SPEED_BITMASK_1000MBPS, align 8
  store i64 %23, i64* %4, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i64, i64* @AD_LINK_SPEED_BITMASK_10000MBPS, align 8
  store i64 %25, i64* %4, align 8
  br label %27

26:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %26, %24, %22, %20, %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.port*, %struct.port** %2, align 8
  %30 = getelementptr inbounds %struct.port, %struct.port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
