; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_tl_to_cores.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_tl_to_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_info = type { i32, %struct.mask_info* }
%struct.tl_info = type { i64, %union.tl_entry* }
%union.tl_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@core_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@topology_lock = common dso_local global i32 0, align 4
@machine_has_topology = common dso_local global i32 0, align 4
@book_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_info*)* @tl_to_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_to_cores(%struct.tl_info* %0) #0 {
  %2 = alloca %struct.tl_info*, align 8
  %3 = alloca %struct.mask_info*, align 8
  %4 = alloca %struct.mask_info*, align 8
  %5 = alloca %union.tl_entry*, align 8
  %6 = alloca %union.tl_entry*, align 8
  store %struct.tl_info* %0, %struct.tl_info** %2, align 8
  store %struct.mask_info* null, %struct.mask_info** %3, align 8
  store %struct.mask_info* @core_info, %struct.mask_info** %4, align 8
  %7 = call i32 @spin_lock_irq(i32* @topology_lock)
  %8 = call i32 (...) @clear_masks()
  %9 = load %struct.tl_info*, %struct.tl_info** %2, align 8
  %10 = getelementptr inbounds %struct.tl_info, %struct.tl_info* %9, i32 0, i32 1
  %11 = load %union.tl_entry*, %union.tl_entry** %10, align 8
  store %union.tl_entry* %11, %union.tl_entry** %5, align 8
  %12 = load %struct.tl_info*, %struct.tl_info** %2, align 8
  %13 = ptrtoint %struct.tl_info* %12 to i64
  %14 = load %struct.tl_info*, %struct.tl_info** %2, align 8
  %15 = getelementptr inbounds %struct.tl_info, %struct.tl_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = inttoptr i64 %17 to %union.tl_entry*
  store %union.tl_entry* %18, %union.tl_entry** %6, align 8
  br label %19

19:                                               ; preds = %45, %1
  %20 = load %union.tl_entry*, %union.tl_entry** %5, align 8
  %21 = load %union.tl_entry*, %union.tl_entry** %6, align 8
  %22 = icmp ult %union.tl_entry* %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load %union.tl_entry*, %union.tl_entry** %5, align 8
  %25 = bitcast %union.tl_entry* %24 to i32*
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 1, label %27
    i32 0, label %37
  ]

27:                                               ; preds = %23
  %28 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %29 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %28, i32 0, i32 1
  %30 = load %struct.mask_info*, %struct.mask_info** %29, align 8
  store %struct.mask_info* %30, %struct.mask_info** %4, align 8
  %31 = load %union.tl_entry*, %union.tl_entry** %5, align 8
  %32 = bitcast %union.tl_entry* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %36 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %45

37:                                               ; preds = %23
  %38 = load %union.tl_entry*, %union.tl_entry** %5, align 8
  %39 = bitcast %union.tl_entry* %38 to i32*
  %40 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %41 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %42 = call i32 @add_cpus_to_mask(i32* %39, %struct.mask_info* %40, %struct.mask_info* %41)
  br label %45

43:                                               ; preds = %23
  %44 = call i32 (...) @clear_masks()
  store i32 0, i32* @machine_has_topology, align 4
  br label %49

45:                                               ; preds = %37, %27
  %46 = load %union.tl_entry*, %union.tl_entry** %5, align 8
  %47 = call %union.tl_entry* @next_tle(%union.tl_entry* %46)
  store %union.tl_entry* %47, %union.tl_entry** %5, align 8
  br label %19

48:                                               ; preds = %19
  br label %49

49:                                               ; preds = %48, %43
  %50 = call i32 @spin_unlock_irq(i32* @topology_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_masks(...) #1

declare dso_local i32 @add_cpus_to_mask(i32*, %struct.mask_info*, %struct.mask_info*) #1

declare dso_local %union.tl_entry* @next_tle(%union.tl_entry*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
