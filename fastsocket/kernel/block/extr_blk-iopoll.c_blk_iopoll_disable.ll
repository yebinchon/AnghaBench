; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_iopoll = type { i32 }

@IOPOLL_F_DISABLE = common dso_local global i32 0, align 4
@IOPOLL_F_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_iopoll_disable(%struct.blk_iopoll* %0) #0 {
  %2 = alloca %struct.blk_iopoll*, align 8
  store %struct.blk_iopoll* %0, %struct.blk_iopoll** %2, align 8
  %3 = load i32, i32* @IOPOLL_F_DISABLE, align 4
  %4 = load %struct.blk_iopoll*, %struct.blk_iopoll** %2, align 8
  %5 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  br label %7

7:                                                ; preds = %13, %1
  %8 = load i32, i32* @IOPOLL_F_SCHED, align 4
  %9 = load %struct.blk_iopoll*, %struct.blk_iopoll** %2, align 8
  %10 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %9, i32 0, i32 0
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @msleep(i32 1)
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* @IOPOLL_F_DISABLE, align 4
  %17 = load %struct.blk_iopoll*, %struct.blk_iopoll** %2, align 8
  %18 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
