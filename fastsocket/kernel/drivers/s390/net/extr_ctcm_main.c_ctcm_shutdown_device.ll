; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32*, i32 }
%struct.ctcm_priv = type { %struct.TYPE_3__**, i64 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_shutdown_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 1
  %8 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %7)
  store %struct.ctcm_priv* %8, %struct.ctcm_priv** %4, align 8
  %9 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %10 = icmp ne %struct.ctcm_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %142

14:                                               ; preds = %1
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = load i64, i64* @READ, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %14
  %23 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i64, i64* @READ, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %5, align 8
  %31 = load i32, i32* @SETUP, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @CTCM_DBF_DEV(i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @ctcm_close(%struct.net_device* %34)
  %36 = load i32, i32* @IFF_RUNNING, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %43 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %42, i32 0, i32 1
  %44 = call i32 @ctcm_remove_attributes(i32* %43)
  %45 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = load i64, i64* @READ, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @channel_free(%struct.TYPE_3__* %50)
  br label %53

52:                                               ; preds = %14
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %55 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i64, i64* @WRITE, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %63 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i64, i64* @WRITE, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @channel_free(%struct.TYPE_3__* %67)
  br label %69

69:                                               ; preds = %61, %53
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @unregister_netdev(%struct.net_device* %73)
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @ctcm_free_netdevice(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %79 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @kfree_fsm(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %89 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ccw_device_set_offline(i32 %92)
  %94 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %95 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ccw_device_set_offline(i32 %98)
  %100 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %101 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %101, align 8
  %103 = load i64, i64* @READ, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = icmp ne %struct.TYPE_3__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %87
  %108 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %109 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %109, align 8
  %111 = load i64, i64* @READ, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i32 @channel_remove(%struct.TYPE_3__* %113)
  br label %115

115:                                              ; preds = %107, %87
  %116 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %117, align 8
  %119 = load i64, i64* @WRITE, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %118, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = icmp ne %struct.TYPE_3__* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %125 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %125, align 8
  %127 = load i64, i64* @WRITE, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %126, i64 %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = call i32 @channel_remove(%struct.TYPE_3__* %129)
  br label %131

131:                                              ; preds = %123, %115
  %132 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %133 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %133, align 8
  %135 = load i64, i64* @WRITE, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %134, i64 %135
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %136, align 8
  %137 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %138 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %138, align 8
  %140 = load i64, i64* @READ, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %139, i64 %140
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %141, align 8
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %131, %11
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @ctcm_close(%struct.net_device*) #1

declare dso_local i32 @ctcm_remove_attributes(i32*) #1

declare dso_local i32 @channel_free(%struct.TYPE_3__*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ctcm_free_netdevice(%struct.net_device*) #1

declare dso_local i32 @kfree_fsm(i64) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @channel_remove(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
