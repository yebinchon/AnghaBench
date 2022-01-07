; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_disconnect_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_disconnect_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, %struct.TYPE_2__, %struct.xpc_channel* }
%struct.TYPE_2__ = type { i32* }
%struct.xpc_channel = type { i32, i32, i64, i32, i32 }

@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_C_WDISCONNECT = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_disconnect_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i16 0, i16* %4, align 2
  br label %8

8:                                                ; preds = %108, %1
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @xp_max_npartitions, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %111

14:                                               ; preds = %8
  %15 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %15, i64 %17
  store %struct.xpc_partition* %18, %struct.xpc_partition** %5, align 8
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %20 = call i32 @xpc_part_ref(%struct.xpc_partition* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %108

23:                                               ; preds = %14
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %24, i32 0, i32 3
  %26 = load %struct.xpc_channel*, %struct.xpc_channel** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %26, i64 %28
  store %struct.xpc_channel* %29, %struct.xpc_channel** %6, align 8
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %38 = call i32 @xpc_part_deref(%struct.xpc_partition* %37)
  br label %108

39:                                               ; preds = %23
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 4
  %42 = call i32 @wait_for_completion(i32* %41)
  %43 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %44 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %43, i32 0, i32 3
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %48 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @DBUG_ON(i32 %54)
  store i32 0, i32* %7, align 4
  %56 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %57 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %39
  %61 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %62 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %68 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %71 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %74 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %72
  store i32 %82, i32* %80, align 4
  %83 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %84 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %66, %60
  %87 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %88 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %39
  %90 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %93 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %97 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %96, i32 0, i32 3
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %104 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %103)
  br label %105

105:                                              ; preds = %102, %89
  %106 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %107 = call i32 @xpc_part_deref(%struct.xpc_partition* %106)
  br label %108

108:                                              ; preds = %105, %36, %22
  %109 = load i16, i16* %4, align 2
  %110 = add i16 %109, 1
  store i16 %110, i16* %4, align 2
  br label %8

111:                                              ; preds = %8
  ret void
}

declare dso_local i32 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
