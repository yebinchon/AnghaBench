; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_iopoll = type { i32, i32, i32*, i32 }

@IOPOLL_F_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_iopoll_init(%struct.blk_iopoll* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.blk_iopoll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.blk_iopoll* %0, %struct.blk_iopoll** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.blk_iopoll*, %struct.blk_iopoll** %4, align 8
  %8 = call i32 @memset(%struct.blk_iopoll* %7, i32 0, i32 24)
  %9 = load %struct.blk_iopoll*, %struct.blk_iopoll** %4, align 8
  %10 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.blk_iopoll*, %struct.blk_iopoll** %4, align 8
  %14 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.blk_iopoll*, %struct.blk_iopoll** %4, align 8
  %17 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @IOPOLL_F_SCHED, align 4
  %19 = load %struct.blk_iopoll*, %struct.blk_iopoll** %4, align 8
  %20 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  ret void
}

declare dso_local i32 @memset(%struct.blk_iopoll*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
