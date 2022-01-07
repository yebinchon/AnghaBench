; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_add_blkio_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_add_blkio_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_cgroup = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.blkio_group = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkiocg_add_blkio_group(%struct.blkio_cgroup* %0, %struct.blkio_group* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.blkio_cgroup*, align 8
  %7 = alloca %struct.blkio_group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.blkio_cgroup* %0, %struct.blkio_cgroup** %6, align 8
  store %struct.blkio_group* %1, %struct.blkio_group** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %13 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %12, i32 0, i32 1
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %17 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %16, i32 0, i32 6
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %20 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @rcu_assign_pointer(i32 %21, i8* %22)
  %24 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %25 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %24, i32 0, i32 0
  %26 = call i32 @css_id(%struct.TYPE_2__* %25)
  %27 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %28 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %30 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %29, i32 0, i32 3
  %31 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %32 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %31, i32 0, i32 2
  %33 = call i32 @hlist_add_head_rcu(i32* %30, i32* %32)
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %36 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %38 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %37, i32 0, i32 1
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %42 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %46 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cgroup_path(i32 %44, i32 %47, i32 4)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.blkio_group*, %struct.blkio_group** %7, align 8
  %51 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i8*) #1

declare dso_local i32 @css_id(%struct.TYPE_2__*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cgroup_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
