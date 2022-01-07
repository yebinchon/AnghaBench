; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_init_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_init_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32, i32*, i32*, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @throtl_init_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_init_group(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %3 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %4 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %3, i32 0, i32 6
  %5 = call i32 @INIT_HLIST_NODE(i32* %4)
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 5
  %8 = call i32 @RB_CLEAR_NODE(i32* %7)
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i32 @bio_list_init(i32* %12)
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @bio_list_init(i32* %17)
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %20 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %22 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %26 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 -1, i32* %28, align 4
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %30 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %34 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %38 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %37, i32 0, i32 3
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  ret void
}

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
