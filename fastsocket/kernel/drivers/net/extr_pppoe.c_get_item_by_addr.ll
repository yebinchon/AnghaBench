; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_get_item_by_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_get_item_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppox_sock = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_pppox = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.pppoe_net = type { i32 }

@pppoe_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppox_sock* (%struct.net*, %struct.sockaddr_pppox*)* @get_item_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppox_sock* @get_item_by_addr(%struct.net* %0, %struct.sockaddr_pppox* %1) #0 {
  %3 = alloca %struct.pppox_sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sockaddr_pppox*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pppoe_net*, align 8
  %8 = alloca %struct.pppox_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sockaddr_pppox* %1, %struct.sockaddr_pppox** %5, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net_device* @dev_get_by_name(%struct.net* %10, i32 %15)
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.pppox_sock* null, %struct.pppox_sock** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = load i32, i32* @pppoe_net_id, align 4
  %26 = call %struct.pppoe_net* @net_generic(%struct.net* %24, i32 %25)
  store %struct.pppoe_net* %26, %struct.pppoe_net** %7, align 8
  %27 = load %struct.pppoe_net*, %struct.pppoe_net** %7, align 8
  %28 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %5, align 8
  %29 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %27, i32 %32, i32 %37, i32 %38)
  store %struct.pppox_sock* %39, %struct.pppox_sock** %8, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @dev_put(%struct.net_device* %40)
  %42 = load %struct.pppox_sock*, %struct.pppox_sock** %8, align 8
  store %struct.pppox_sock* %42, %struct.pppox_sock** %3, align 8
  br label %43

43:                                               ; preds = %20, %19
  %44 = load %struct.pppox_sock*, %struct.pppox_sock** %3, align 8
  ret %struct.pppox_sock* %44
}

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i32) #1

declare dso_local %struct.pppoe_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
