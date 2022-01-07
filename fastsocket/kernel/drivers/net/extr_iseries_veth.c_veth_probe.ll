; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_lpar_connection = type { i32 }
%struct.vio_dev = type { i32 }
%struct.vio_device_id = type { i32 }
%struct.veth_port = type { i32 }

@veth_dev = common dso_local global %struct.net_device** null, align 8
@HVMAXARCHITECTEDLPS = common dso_local global i32 0, align 4
@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @veth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.veth_port*, align 8
  %9 = alloca %struct.veth_lpar_connection*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %10 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %15 = call %struct.net_device* @veth_probe_one(i32 %13, %struct.vio_dev* %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = icmp eq %struct.net_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %20 = call i32 @veth_remove(%struct.vio_dev* %19)
  store i32 1, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = load %struct.net_device**, %struct.net_device*** @veth_dev, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %25
  store %struct.net_device* %22, %struct.net_device** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call i64 @netdev_priv(%struct.net_device* %27)
  %29 = inttoptr i64 %28 to %struct.veth_port*
  store %struct.veth_port* %29, %struct.veth_port** %8, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %58, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HVMAXARCHITECTEDLPS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load %struct.veth_port*, %struct.veth_port** %8, align 8
  %36 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %58

43:                                               ; preds = %34
  %44 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %44, i64 %46
  %48 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %47, align 8
  store %struct.veth_lpar_connection* %48, %struct.veth_lpar_connection** %9, align 8
  %49 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %9, align 8
  %50 = icmp ne %struct.veth_lpar_connection* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %9, align 8
  %54 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %53, i32 0, i32 0
  %55 = call i32 @kobject_get(i32* %54)
  %56 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %9, align 8
  %57 = call i32 @veth_kick_statemachine(%struct.veth_lpar_connection* %56)
  br label %58

58:                                               ; preds = %52, %51, %42
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %30

61:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.net_device* @veth_probe_one(i32, %struct.vio_dev*) #1

declare dso_local i32 @veth_remove(%struct.vio_dev*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @veth_kick_statemachine(%struct.veth_lpar_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
