; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_setup_partitions_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_setup_partitions_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i32, i32, i32 }

@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.TYPE_4__* null, align 8
@XPC_P_AS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xpc_setup_partitions_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_partitions_uv() #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.xpc_partition_uv*, align 8
  store i16 0, i16* %1, align 2
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i16, i16* %1, align 2
  %5 = sext i16 %4 to i32
  %6 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_partitions, align 8
  %11 = load i16, i16* %1, align 2
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.xpc_partition_uv* %15, %struct.xpc_partition_uv** %2, align 8
  %16 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %17 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %16, i32 0, i32 2
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %20 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* @XPC_P_AS_INACTIVE, align 4
  %23 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %24 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i16, i16* %1, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %1, align 2
  br label %3

28:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
