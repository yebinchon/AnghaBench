; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_add_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_add_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net = type { %struct.net_device**, i32, %struct.TYPE_4__* }
%struct.net_device = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dvb_net_priv = type { i32, i32, i32, i32, i64, i64, i32, i8*, i32, %struct.net_device* }

@DVB_NET_FEEDTYPE_MPE = common dso_local global i64 0, align 8
@DVB_NET_FEEDTYPE_ULE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@dvb_net_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dvb%d%u%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dvb%d_%d\00", align 1
@RX_MODE_UNI = common dso_local global i32 0, align 4
@wq_set_multicast_list = common dso_local global i32 0, align 4
@wq_restart_net_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"dvb_net: created network interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net*, i8*, i64)* @dvb_net_add_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_add_if(%struct.dvb_net* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.dvb_net_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_net* %0, %struct.dvb_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @DVB_NET_FEEDTYPE_MPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DVB_NET_FEEDTYPE_ULE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %156

22:                                               ; preds = %15, %3
  %23 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %24 = call i32 @get_if(%struct.dvb_net* %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %156

29:                                               ; preds = %22
  %30 = load i32, i32* @dvb_net_setup, align 4
  %31 = call %struct.net_device* @alloc_netdev(i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %156

37:                                               ; preds = %29
  %38 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFNAMSIZ, align 4
  %49 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %50 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60, i32 %61)
  br label %77

63:                                               ; preds = %37
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFNAMSIZ, align 4
  %68 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %66, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %63, %44
  %78 = load %struct.net_device*, %struct.net_device** %8, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  store i32 6, i32* %79, align 8
  %80 = load %struct.net_device*, %struct.net_device** %8, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %82, i32 %89, i32 6)
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %93 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %92, i32 0, i32 0
  %94 = load %struct.net_device**, %struct.net_device*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.net_device*, %struct.net_device** %94, i64 %96
  store %struct.net_device* %91, %struct.net_device** %97, align 8
  %98 = load %struct.net_device*, %struct.net_device** %8, align 8
  %99 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %98)
  store %struct.dvb_net_priv* %99, %struct.dvb_net_priv** %9, align 8
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %102 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %101, i32 0, i32 9
  store %struct.net_device* %100, %struct.net_device** %102, align 8
  %103 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %104 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %107 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %110 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* @RX_MODE_UNI, align 4
  %112 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %113 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %115 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %117 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %120 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %122 = call i32 @reset_ule(%struct.dvb_net_priv* %121)
  %123 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %124 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %123, i32 0, i32 3
  %125 = load i32, i32* @wq_set_multicast_list, align 4
  %126 = call i32 @INIT_WORK(i32* %124, i32 %125)
  %127 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %128 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %127, i32 0, i32 2
  %129 = load i32, i32* @wq_restart_net_feed, align 4
  %130 = call i32 @INIT_WORK(i32* %128, i32 %129)
  %131 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %132 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %131, i32 0, i32 1
  %133 = call i32 @mutex_init(i32* %132)
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = call i32 @register_netdev(%struct.net_device* %137)
  store i32 %138, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %77
  %141 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %142 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %141, i32 0, i32 0
  %143 = load %struct.net_device**, %struct.net_device*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.net_device*, %struct.net_device** %143, i64 %145
  store %struct.net_device* null, %struct.net_device** %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %8, align 8
  %148 = call i32 @free_netdev(%struct.net_device* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %156

150:                                              ; preds = %77
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %150, %140, %34, %26, %19
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @get_if(%struct.dvb_net*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @reset_ule(%struct.dvb_net_priv*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
