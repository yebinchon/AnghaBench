; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_is_cnic_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_is_cnic_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ethtool_drvinfo*)* }
%struct.ethtool_drvinfo = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"bnx2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bnx2x\00", align 1
@cnic_dev_lock = common dso_local global i32 0, align 4
@cnic_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_dev* (%struct.net_device*)* @is_cnic_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_dev* @is_cnic_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ethtool_drvinfo, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.cnic_dev* null, %struct.cnic_dev** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*, %struct.ethtool_drvinfo*)** %13, align 8
  %15 = icmp ne i32 (%struct.net_device*, %struct.ethtool_drvinfo*)* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %9
  %17 = call i32 @memset(%struct.ethtool_drvinfo* %3, i32 0, i32 4)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*, %struct.ethtool_drvinfo*)** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 %22(%struct.net_device* %23, %struct.ethtool_drvinfo* %3)
  %25 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call %struct.cnic_dev* @init_bnx2_cnic(%struct.net_device* %30)
  store %struct.cnic_dev* %31, %struct.cnic_dev** %4, align 8
  br label %32

32:                                               ; preds = %29, %16
  %33 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call %struct.cnic_dev* @init_bnx2x_cnic(%struct.net_device* %38)
  store %struct.cnic_dev* %39, %struct.cnic_dev** %4, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %42 = icmp ne %struct.cnic_dev* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = call i32 @write_lock(i32* @cnic_dev_lock)
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %46 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %45, i32 0, i32 0
  %47 = call i32 @list_add(i32* %46, i32* @cnic_dev_list)
  %48 = call i32 @write_unlock(i32* @cnic_dev_lock)
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49, %9, %1
  %51 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  ret %struct.cnic_dev* %51
}

declare dso_local i32 @memset(%struct.ethtool_drvinfo*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.cnic_dev* @init_bnx2_cnic(%struct.net_device*) #1

declare dso_local %struct.cnic_dev* @init_bnx2x_cnic(%struct.net_device*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
