; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.xpc_channel* }
%struct.xpc_channel = type { i32 }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_initiate_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.xpc_partition*, align 8
  %5 = alloca %struct.xpc_channel*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %11 = icmp sge i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @DBUG_ON(i32 %14)
  store i16 0, i16* %3, align 2
  br label %16

16:                                               ; preds = %42, %12
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @xp_max_npartitions, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %24 = load i16, i16* %3, align 2
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %23, i64 %25
  store %struct.xpc_partition* %26, %struct.xpc_partition** %4, align 8
  %27 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %28 = call i64 @xpc_part_ref(%struct.xpc_partition* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %32 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %31, i32 0, i32 0
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i64 %35
  store %struct.xpc_channel* %36, %struct.xpc_channel** %5, align 8
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %38 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %37)
  %39 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %40 = call i32 @xpc_part_deref(%struct.xpc_partition* %39)
  br label %41

41:                                               ; preds = %30, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i16, i16* %3, align 2
  %44 = add i16 %43, 1
  store i16 %44, i16* %3, align 2
  br label %16

45:                                               ; preds = %16
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
