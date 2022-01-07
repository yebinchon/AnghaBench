; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_teardown_ch_structures.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_teardown_ch_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_partition*)* }
%struct.xpc_partition = type { i64, i32*, i32*, i32*, i32, i32, i32, i32 }

@XPC_P_SS_SETUP = common dso_local global i64 0, align 8
@XPC_P_SS_WTEARDOWN = common dso_local global i64 0, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_P_SS_TORNDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_teardown_ch_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_teardown_ch_structures(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %3 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %4 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %3, i32 0, i32 7
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @DBUG_ON(i32 %7)
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %10 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i32 0, i32 6
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @DBUG_ON(i32 %13)
  %15 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %16 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XPC_P_SS_SETUP, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @DBUG_ON(i32 %20)
  %22 = load i64, i64* @XPC_P_SS_WTEARDOWN, align 8
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %24 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %26 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %29 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %28, i32 0, i32 4
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @wait_event(i32 %27, i32 %32)
  %34 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %36 = call i32 %34(%struct.xpc_partition* %35)
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %38 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %42 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %44 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %48 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i64, i64* @XPC_P_SS_TORNDOWN, align 8
  %50 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %51 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
