; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_walk_rx_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_walk_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.vio_driver_state }
%struct.vio_driver_state = type { i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_net_desc = type { %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vio_walk_rx_one desc[%02x:%02x:%08x:%08x:%llx:%llx]\0A\00", align 1
@VIO_DESC_READY = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@VIO_DESC_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, %struct.vio_dring_state*, i32, i32*)* @vnet_walk_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_walk_rx_one(%struct.vnet_port* %0, %struct.vio_dring_state* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca %struct.vio_dring_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vio_net_desc*, align 8
  %11 = alloca %struct.vio_driver_state*, align 8
  %12 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %14 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.vio_net_desc* @get_rx_desc(%struct.vnet_port* %13, %struct.vio_dring_state* %14, i32 %15)
  store %struct.vio_net_desc* %16, %struct.vio_net_desc** %10, align 8
  %17 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %18 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %17, i32 0, i32 0
  store %struct.vio_driver_state* %18, %struct.vio_driver_state** %11, align 8
  %19 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %20 = call i64 @IS_ERR(%struct.vio_net_desc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.vio_net_desc* %23)
  store i32 %24, i32* %5, align 4
  br label %99

25:                                               ; preds = %4
  %26 = load i32, i32* @DATA, align 4
  %27 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %28 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %32 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %36 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %39 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %42 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %48 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @viodbg(i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %34, i32 %37, i32 %40, i32 %46, i32 %52)
  %54 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %55 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VIO_DESC_READY, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %99

61:                                               ; preds = %25
  %62 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %63 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %64 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %67 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %70 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @vnet_rx_one(%struct.vnet_port* %62, i32 %65, %struct.TYPE_4__* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @ECONNRESET, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %99

79:                                               ; preds = %61
  %80 = load i64, i64* @VIO_DESC_DONE, align 8
  %81 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %82 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %85 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %86 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @put_rx_desc(%struct.vnet_port* %84, %struct.vio_dring_state* %85, %struct.vio_net_desc* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %99

93:                                               ; preds = %79
  %94 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %95 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %91, %77, %60, %22
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.vio_net_desc* @get_rx_desc(%struct.vnet_port*, %struct.vio_dring_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.vio_net_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.vio_net_desc*) #1

declare dso_local i32 @viodbg(i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnet_rx_one(%struct.vnet_port*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @put_rx_desc(%struct.vnet_port*, %struct.vio_dring_state*, %struct.vio_net_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
