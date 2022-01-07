; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32*, i32 }
%struct.claw_privbk = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32*, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: shutting down \0A\00", align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @claw_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_shutdown_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.claw_privbk*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %7 = load i32, i32* @setup, align 4
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 1
  %10 = call i32 @dev_name(i32* %9)
  %11 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %12, i32 0, i32 1
  %14 = call %struct.claw_privbk* @dev_get_drvdata(i32* %13)
  store %struct.claw_privbk* %14, %struct.claw_privbk** %4, align 8
  %15 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %16 = icmp ne %struct.claw_privbk* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %22 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* @READ, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %75

30:                                               ; preds = %20
  %31 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %32 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %31, i32 0, i32 1
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFF_RUNNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @claw_release(%struct.net_device* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* @IFF_RUNNING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @unregister_netdev(%struct.net_device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @claw_free_netdevice(%struct.net_device* %57, i32 1)
  %59 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %60 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* @READ, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %64, align 8
  %65 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %66 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* @WRITE, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %70, align 8
  %71 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %72 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %46, %20
  %76 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ccw_device_set_offline(i32 %80)
  %82 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %83 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ccw_device_set_offline(i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %75, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.claw_privbk* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @claw_release(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @claw_free_netdevice(%struct.net_device*, i32) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
