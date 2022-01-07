; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_lpar_connection = type { i32 }
%struct.vio_dev = type { i64 }
%struct.veth_port = type { i32, i32 }

@veth_dev = common dso_local global %struct.net_device** null, align 8
@HVMAXARCHITECTEDLPS = common dso_local global i32 0, align 4
@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @veth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.veth_lpar_connection*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.veth_port*, align 8
  %7 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %8 = load %struct.net_device**, %struct.net_device*** @veth_dev, align 8
  %9 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %8, i64 %11
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.veth_port* @netdev_priv(%struct.net_device* %18)
  store %struct.veth_port* %19, %struct.veth_port** %6, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %45, %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HVMAXARCHITECTEDLPS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %25, i64 %27
  %29 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %28, align 8
  store %struct.veth_lpar_connection* %29, %struct.veth_lpar_connection** %4, align 8
  %30 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %31 = icmp ne %struct.veth_lpar_connection* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.veth_port*, %struct.veth_port** %6, align 8
  %34 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %42 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %41, i32 0, i32 0
  %43 = call i32 @kobject_put(i32* %42)
  br label %44

44:                                               ; preds = %40, %32, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.net_device**, %struct.net_device*** @veth_dev, align 8
  %50 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %51 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.net_device*, %struct.net_device** %49, i64 %52
  store %struct.net_device* null, %struct.net_device** %53, align 8
  %54 = load %struct.veth_port*, %struct.veth_port** %6, align 8
  %55 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %54, i32 0, i32 1
  %56 = call i32 @kobject_del(i32* %55)
  %57 = load %struct.veth_port*, %struct.veth_port** %6, align 8
  %58 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %57, i32 0, i32 1
  %59 = call i32 @kobject_put(i32* %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @unregister_netdev(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @free_netdev(%struct.net_device* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %48, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
