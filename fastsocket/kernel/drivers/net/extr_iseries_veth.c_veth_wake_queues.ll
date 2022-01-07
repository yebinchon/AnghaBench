; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_wake_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_wake_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_lpar_connection = type { i32 }
%struct.veth_port = type { i32, i32, i32 }

@HVMAXARCHITECTEDVIRTUALLANS = common dso_local global i32 0, align 4
@veth_dev = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [28 x i8] c"cnx %d: woke queue for %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*)* @veth_wake_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_wake_queues(%struct.veth_lpar_connection* %0) #0 {
  %2 = alloca %struct.veth_lpar_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.veth_port*, align 8
  %6 = alloca i64, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %70, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HVMAXARCHITECTEDVIRTUALLANS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %73

11:                                               ; preds = %7
  %12 = load %struct.net_device**, %struct.net_device*** @veth_dev, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 %14
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %70

20:                                               ; preds = %11
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.veth_port* @netdev_priv(%struct.net_device* %21)
  store %struct.veth_port* %22, %struct.veth_port** %5, align 8
  %23 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %24 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %27 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %70

33:                                               ; preds = %20
  %34 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %35 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %34, i32 0, i32 2
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %39 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %44 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %48 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 0, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %33
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i64 @netif_queue_stopped(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %57 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @veth_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @netif_wake_queue(%struct.net_device* %63)
  br label %65

65:                                               ; preds = %55, %51, %33
  %66 = load %struct.veth_port*, %struct.veth_port** %5, align 8
  %67 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %66, i32 0, i32 2
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %32, %19
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %7

73:                                               ; preds = %7
  ret void
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @veth_debug(i8*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
