; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { %struct.cgroup* }

@blkio_root_cgroup = common dso_local global %struct.blkio_cgroup zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLKIO_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @blkiocg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @blkiocg_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.blkio_cgroup*, align 8
  %7 = alloca %struct.cgroup*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %8 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %9 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %8, i32 0, i32 0
  %10 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  store %struct.cgroup* %10, %struct.cgroup** %7, align 8
  %11 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %12 = icmp ne %struct.cgroup* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.blkio_cgroup* @blkio_root_cgroup, %struct.blkio_cgroup** %6, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.blkio_cgroup* @kzalloc(i32 20, i32 %15)
  store %struct.blkio_cgroup* %16, %struct.blkio_cgroup** %6, align 8
  %17 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %18 = icmp ne %struct.blkio_cgroup* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %21)
  store %struct.cgroup_subsys_state* %22, %struct.cgroup_subsys_state** %3, align 8
  br label %39

23:                                               ; preds = %14
  %24 = load i32, i32* @BLKIO_WEIGHT_DEFAULT, align 4
  %25 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %26 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %13
  %28 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %29 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %28, i32 0, i32 3
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %32 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %31, i32 0, i32 2
  %33 = call i32 @INIT_HLIST_HEAD(i32* %32)
  %34 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %35 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %38 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %37, i32 0, i32 0
  store %struct.cgroup_subsys_state* %38, %struct.cgroup_subsys_state** %3, align 8
  br label %39

39:                                               ; preds = %27, %19
  %40 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %40
}

declare dso_local %struct.blkio_cgroup* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
