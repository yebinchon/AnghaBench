; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stop_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stop_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_lpar_connection = type { i32 }
%struct.veth_port = type { i32, i32, i32 }

@HVMAXARCHITECTEDVIRTUALLANS = common dso_local global i32 0, align 4
@veth_dev = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"cnx %d: stopped queue for %s, map = 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*)* @veth_stop_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_stop_queues(%struct.veth_lpar_connection* %0) #0 {
  %2 = alloca %struct.veth_lpar_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.veth_port*, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HVMAXARCHITECTEDVIRTUALLANS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  %11 = load %struct.net_device**, %struct.net_device*** @veth_dev, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 %13
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %59

19:                                               ; preds = %10
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.veth_port* @netdev_priv(%struct.net_device* %20)
  store %struct.veth_port* %21, %struct.veth_port** %5, align 8
  %22 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %23 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %26 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %59

32:                                               ; preds = %19
  %33 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %34 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %39 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %43 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %47 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %53 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @veth_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %57 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock(i32* %57)
  br label %59

59:                                               ; preds = %32, %31, %18
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %6

62:                                               ; preds = %6
  ret void
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @veth_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
