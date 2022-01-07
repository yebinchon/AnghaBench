; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_connection_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_connection_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.xpnet_message = type { i32 }

@xp_max_npartitions = common dso_local global i16 0, align 2
@XPC_NET_CHANNEL = common dso_local global i32 0, align 4
@xpnet_broadcast_lock = common dso_local global i32 0, align 4
@xpnet_broadcast_partitions = common dso_local global i64 0, align 8
@xpnet_device = common dso_local global %struct.TYPE_4__* null, align 8
@xpnet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s connected to partition %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s disconnected from partition %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i32, i8*, i8*)* @xpnet_connection_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpnet_connection_activity(i32 %0, i16 signext %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i16, i16* %7, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i16, i16* %7, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @xp_max_npartitions, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp sge i32 %16, %18
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i1 [ true, %5 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @DBUG_ON(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @XPC_NET_CHANNEL, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @DBUG_ON(i32 %27)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %54 [
    i32 128, label %30
    i32 129, label %40
  ]

30:                                               ; preds = %20
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @DBUG_ON(i32 %33)
  %35 = load i16, i16* %7, align 2
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to %struct.xpnet_message*
  %39 = call i32 @xpnet_receive(i16 signext %35, i32 %36, %struct.xpnet_message* %38)
  br label %75

40:                                               ; preds = %20
  %41 = call i32 @spin_lock_bh(i32* @xpnet_broadcast_lock)
  %42 = load i16, i16* %7, align 2
  %43 = load i64, i64* @xpnet_broadcast_partitions, align 8
  %44 = call i32 @__set_bit(i16 signext %42, i64 %43)
  %45 = call i32 @spin_unlock_bh(i32* @xpnet_broadcast_lock)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpnet_device, align 8
  %47 = call i32 @netif_carrier_on(%struct.TYPE_4__* %46)
  %48 = load i32, i32* @xpnet, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpnet_device, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i16, i16* %7, align 2
  %53 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51, i16 signext %52)
  br label %75

54:                                               ; preds = %20
  %55 = call i32 @spin_lock_bh(i32* @xpnet_broadcast_lock)
  %56 = load i16, i16* %7, align 2
  %57 = load i64, i64* @xpnet_broadcast_partitions, align 8
  %58 = call i32 @__clear_bit(i16 signext %56, i64 %57)
  %59 = call i32 @spin_unlock_bh(i32* @xpnet_broadcast_lock)
  %60 = load i64, i64* @xpnet_broadcast_partitions, align 8
  %61 = inttoptr i64 %60 to i64*
  %62 = load i16, i16* @xp_max_npartitions, align 2
  %63 = call i32 @bitmap_empty(i64* %61, i16 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpnet_device, align 8
  %67 = call i32 @netif_carrier_off(%struct.TYPE_4__* %66)
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* @xpnet, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpnet_device, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i16, i16* %7, align 2
  %74 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72, i16 signext %73)
  br label %75

75:                                               ; preds = %68, %40, %30
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpnet_receive(i16 signext, i32, %struct.xpnet_message*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__set_bit(i16 signext, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i16 signext) #1

declare dso_local i32 @__clear_bit(i16 signext, i64) #1

declare dso_local i32 @bitmap_empty(i64*, i16 signext) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
