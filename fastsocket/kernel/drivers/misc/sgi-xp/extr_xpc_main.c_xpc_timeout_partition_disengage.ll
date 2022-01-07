; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_timeout_partition_disengage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_timeout_partition_disengage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.xpc_partition = type { i64 }

@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xpc_timeout_partition_disengage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_timeout_partition_disengage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xpc_partition*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.xpc_partition*
  store %struct.xpc_partition* %5, %struct.xpc_partition** %3, align 8
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %7 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @time_is_after_jiffies(i64 %8)
  %10 = call i32 @DBUG_ON(i32 %9)
  %11 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %12 = call i32 @xpc_partition_disengaged(%struct.xpc_partition* %11)
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %14 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @DBUG_ON(i32 %17)
  %19 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %20 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %21 = call i32 @XPC_PARTID(%struct.xpc_partition* %20)
  %22 = call i32 %19(i32 %21)
  %23 = call i32 @DBUG_ON(i32 %22)
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @time_is_after_jiffies(i64) #1

declare dso_local i32 @xpc_partition_disengaged(%struct.xpc_partition*) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
