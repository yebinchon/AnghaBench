; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_find_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_find_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_cgroup = type { i32 }
%struct.throtl_grp = type { i32 }
%struct.throtl_data = type { %struct.throtl_grp* }

@blkio_root_cgroup = common dso_local global %struct.blkio_cgroup zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.throtl_data*, %struct.blkio_cgroup*)* @throtl_find_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @throtl_find_tg(%struct.throtl_data* %0, %struct.blkio_cgroup* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.blkio_cgroup*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca i8*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.blkio_cgroup* %1, %struct.blkio_cgroup** %4, align 8
  store %struct.throtl_grp* null, %struct.throtl_grp** %5, align 8
  %7 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %8 = bitcast %struct.throtl_data* %7 to i8*
  store i8* %8, i8** %6, align 8
  %9 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %4, align 8
  %10 = icmp eq %struct.blkio_cgroup* %9, @blkio_root_cgroup
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %13 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %12, i32 0, i32 0
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %13, align 8
  store %struct.throtl_grp* %14, %struct.throtl_grp** %5, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @blkiocg_lookup_group(%struct.blkio_cgroup* %16, i8* %17)
  %19 = call %struct.throtl_grp* @tg_of_blkg(i32 %18)
  store %struct.throtl_grp* %19, %struct.throtl_grp** %5, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %22 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %23 = call i32 @__throtl_tg_fill_dev_details(%struct.throtl_data* %21, %struct.throtl_grp* %22)
  %24 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  ret %struct.throtl_grp* %24
}

declare dso_local %struct.throtl_grp* @tg_of_blkg(i32) #1

declare dso_local i32 @blkiocg_lookup_group(%struct.blkio_cgroup*, i8*) #1

declare dso_local i32 @__throtl_tg_fill_dev_details(%struct.throtl_data*, %struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
