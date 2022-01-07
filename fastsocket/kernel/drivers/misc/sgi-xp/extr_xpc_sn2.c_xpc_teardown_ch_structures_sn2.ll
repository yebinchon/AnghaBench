; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_teardown_ch_structures_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_teardown_ch_structures_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.xpc_partition = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32*, i32*, i32, i32*, i32, i32*, i32, i32 }

@xpc_vars_part_sn2 = common dso_local global %struct.TYPE_4__* null, align 8
@SGI_XPC_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_teardown_ch_structures_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_teardown_ch_structures_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %struct.xpc_partition_sn2*, align 8
  %4 = alloca i16, align 2
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %5 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.xpc_partition_sn2* %7, %struct.xpc_partition_sn2** %3, align 8
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %9 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %8)
  store i16 %9, i16* %4, align 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_vars_part_sn2, align 8
  %11 = load i16, i16* %4, align 2
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %16 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %15, i32 0, i32 7
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load i32, i32* @SGI_XPC_NOTIFY, align 4
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @free_irq(i32 %18, i8* %21)
  %23 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %24 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @kfree(i32 %25)
  %27 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %28 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %30 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %40 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %42 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  ret void
}

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
