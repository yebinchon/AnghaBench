; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_partitions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 (...)* }

@xp_max_npartitions = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't get memory for partition structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XPC_P_AS_INACTIVE = common dso_local global i32 0, align 4
@xpc_timeout_partition_disengage = common dso_local global i32 0, align 4
@XPC_P_SS_UNSET = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xpc_setup_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_partitions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = load i32, i32* @xp_max_npartitions, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 48, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xpc_partition* @kzalloc(i32 %7, i32 %8)
  store %struct.xpc_partition* %9, %struct.xpc_partition** @xpc_partitions, align 8
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %11 = icmp eq %struct.xpc_partition* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @xpc_part, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %73

17:                                               ; preds = %0
  store i16 0, i16* %2, align 2
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i16, i16* %2, align 2
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* @xp_max_npartitions, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %18
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %25 = load i16, i16* %2, align 2
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %24, i64 %26
  store %struct.xpc_partition* %27, %struct.xpc_partition** %3, align 8
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %29 = ptrtoint %struct.xpc_partition* %28 to i64
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %31 = ptrtoint %struct.xpc_partition* %30 to i64
  %32 = call i64 @L1_CACHE_ALIGN(i64 %31)
  %33 = icmp ne i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @DBUG_ON(i32 %34)
  %36 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %38, i32 0, i32 5
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load i32, i32* @XPC_P_AS_INACTIVE, align 4
  %42 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %43 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %45 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %44, i32 0, i32 0)
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %47 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %46, i32 0, i32 3
  %48 = call i32 @init_timer(%struct.TYPE_4__* %47)
  %49 = load i32, i32* @xpc_timeout_partition_disengage, align 4
  %50 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %51 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %54 = ptrtoint %struct.xpc_partition* %53 to i64
  %55 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %56 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* @XPC_P_SS_UNSET, align 4
  %59 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %60 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %62 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %61, i32 0, i32 1
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %65 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %64, i32 0, i32 0
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  br label %67

67:                                               ; preds = %23
  %68 = load i16, i16* %2, align 2
  %69 = add i16 %68, 1
  store i16 %69, i16* %2, align 2
  br label %18

70:                                               ; preds = %18
  %71 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xpc_arch_ops, i32 0, i32 0), align 8
  %72 = call i32 (...) %71()
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %70, %12
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local %struct.xpc_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @L1_CACHE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_partition*, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
