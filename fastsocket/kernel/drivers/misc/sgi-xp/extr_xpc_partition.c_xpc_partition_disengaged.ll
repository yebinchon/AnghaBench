; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_partition_disengaged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_partition_disengaged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_partition*)*, i32 (i16)*, i32 (i16)* }
%struct.xpc_partition = type { i64, i32, i64 }

@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"deactivate request to remote partition %d timed out\0A\00", align 1
@xpc_disengage_timedout = common dso_local global i32 0, align 4
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_partition_disengaged(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %7 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %6)
  store i16 %7, i16* %4, align 2
  %8 = load i32 (i16)*, i32 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 2), align 8
  %9 = load i16, i16* %4, align 2
  %10 = call i32 %8(i16 signext %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @time_is_after_jiffies(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %74

28:                                               ; preds = %21
  %29 = load i32, i32* @xpc_part, align 4
  %30 = load i16, i16* %4, align 2
  %31 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i16 signext %30)
  store i32 1, i32* @xpc_disengage_timedout, align 4
  %32 = load i32 (i16)*, i32 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %33 = load i16, i16* %4, align 2
  %34 = call i32 %32(i16 signext %33)
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %18
  %36 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = call i32 (...) @in_interrupt()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %42 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %41, i32 0, i32 1
  %43 = call i32 @del_singleshot_timer_sync(i32* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %46 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %52 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i1 [ false, %44 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @DBUG_ON(i32 %58)
  %60 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %61 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %67 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %70 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %71 = call i32 %69(%struct.xpc_partition* %70)
  br label %72

72:                                               ; preds = %68, %1
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %27
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i16 signext) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @del_singleshot_timer_sync(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
