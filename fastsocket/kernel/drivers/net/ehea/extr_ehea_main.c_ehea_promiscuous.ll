; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_promiscuous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hcp_ehea_port_cb7 = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb7\00", align 1
@H_PORT_CB7 = common dso_local global i32 0, align 4
@H_PORT_CB7_DUCQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ehea_promiscuous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_promiscuous(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.hcp_ehea_port_cb7*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %8)
  store %struct.ehea_port* %9, %struct.ehea_port** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %68

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.hcp_ehea_port_cb7*
  store %struct.hcp_ehea_port_cb7* %20, %struct.hcp_ehea_port_cb7** %6, align 8
  %21 = load %struct.hcp_ehea_port_cb7*, %struct.hcp_ehea_port_cb7** %6, align 8
  %22 = icmp ne %struct.hcp_ehea_port_cb7* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %64

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %30 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %28
  %39 = phi i32 [ %36, %28 ], [ 0, %37 ]
  %40 = load %struct.hcp_ehea_port_cb7*, %struct.hcp_ehea_port_cb7** %6, align 8
  %41 = getelementptr inbounds %struct.hcp_ehea_port_cb7, %struct.hcp_ehea_port_cb7* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %43 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %48 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @H_PORT_CB7, align 4
  %51 = load i32, i32* @H_PORT_CB7_DUCQPN, align 4
  %52 = load %struct.hcp_ehea_port_cb7*, %struct.hcp_ehea_port_cb7** %6, align 8
  %53 = call i64 @ehea_h_modify_ehea_port(i32 %46, i32 %49, i32 %50, i32 %51, %struct.hcp_ehea_port_cb7* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ehea_promiscuous_error(i64 %57, i32 %58)
  br label %64

60:                                               ; preds = %38
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %63 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56, %23
  %65 = load %struct.hcp_ehea_port_cb7*, %struct.hcp_ehea_port_cb7** %6, align 8
  %66 = ptrtoint %struct.hcp_ehea_port_cb7* %65 to i64
  %67 = call i32 @free_page(i64 %66)
  br label %68

68:                                               ; preds = %64, %15
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb7*) #1

declare dso_local i32 @ehea_promiscuous_error(i64, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
