; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_init_add_tg_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_init_add_tg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.blkio_cgroup = type { i32 }

@BLKIO_POLICY_THROTL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*, %struct.blkio_cgroup*)* @throtl_init_add_tg_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_init_add_tg_lists(%struct.throtl_data* %0, %struct.throtl_grp* %1, %struct.blkio_cgroup* %2) #0 {
  %4 = alloca %struct.throtl_data*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.blkio_cgroup*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %4, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %5, align 8
  store %struct.blkio_cgroup* %2, %struct.blkio_cgroup** %6, align 8
  %7 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %8 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %9 = call i32 @__throtl_tg_fill_dev_details(%struct.throtl_data* %7, %struct.throtl_grp* %8)
  %10 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %11 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %12 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %11, i32 0, i32 0
  %13 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %14 = bitcast %struct.throtl_data* %13 to i8*
  %15 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %16 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BLKIO_POLICY_THROTL, align 4
  %20 = call i32 @blkiocg_add_blkio_group(%struct.blkio_cgroup* %10, %struct.TYPE_2__* %12, i8* %14, i32 %18, i32 %19)
  %21 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %22 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %23 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @blkcg_get_read_bps(%struct.blkio_cgroup* %21, i32 %25)
  %27 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %28 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @READ, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %34 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @blkcg_get_write_bps(%struct.blkio_cgroup* %32, i32 %36)
  %38 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %39 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @WRITE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %37, i32* %42, align 4
  %43 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %44 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %45 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @blkcg_get_read_iops(%struct.blkio_cgroup* %43, i32 %47)
  %49 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %50 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @READ, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %55 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %56 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @blkcg_get_write_iops(%struct.blkio_cgroup* %54, i32 %58)
  %60 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %61 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @WRITE, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %66 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %67 = call i32 @throtl_add_group_to_td_list(%struct.throtl_data* %65, %struct.throtl_grp* %66)
  ret void
}

declare dso_local i32 @__throtl_tg_fill_dev_details(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @blkiocg_add_blkio_group(%struct.blkio_cgroup*, %struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @blkcg_get_read_bps(%struct.blkio_cgroup*, i32) #1

declare dso_local i32 @blkcg_get_write_bps(%struct.blkio_cgroup*, i32) #1

declare dso_local i32 @blkcg_get_read_iops(%struct.blkio_cgroup*, i32) #1

declare dso_local i32 @blkcg_get_write_iops(%struct.blkio_cgroup*, i32) #1

declare dso_local i32 @throtl_add_group_to_td_list(%struct.throtl_data*, %struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
