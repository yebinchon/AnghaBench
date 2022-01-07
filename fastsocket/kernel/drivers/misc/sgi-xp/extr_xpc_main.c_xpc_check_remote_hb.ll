; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_check_remote_hb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_check_remote_hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.xpc_partition*)* }

@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_exiting = common dso_local global i64 0, align 8
@xp_partition_id = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xpc_check_remote_hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_check_remote_hb() #0 {
  %1 = alloca %struct.xpc_partition*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 0, i16* %2, align 2
  br label %4

4:                                                ; preds = %50, %0
  %5 = load i16, i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* @xp_max_npartitions, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %4
  %11 = load i64, i64* @xpc_exiting, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %53

14:                                               ; preds = %10
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @xp_partition_id, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %23 = load i16, i16* %2, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i64 %24
  store %struct.xpc_partition* %25, %struct.xpc_partition** %1, align 8
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %33 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %21
  br label %50

38:                                               ; preds = %31
  %39 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %40 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %41 = call i32 %39(%struct.xpc_partition* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @xpSuccess, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %37, %20
  %51 = load i16, i16* %2, align 2
  %52 = add i16 %51, 1
  store i16 %52, i16* %2, align 2
  br label %4

53:                                               ; preds = %13, %4
  ret void
}

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
