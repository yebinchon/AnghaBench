; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-iopoll.c_blk_iopoll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_iopoll = type { i32 }

@IOPOLL_F_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_iopoll_enable(%struct.blk_iopoll* %0) #0 {
  %2 = alloca %struct.blk_iopoll*, align 8
  store %struct.blk_iopoll* %0, %struct.blk_iopoll** %2, align 8
  %3 = load i32, i32* @IOPOLL_F_SCHED, align 4
  %4 = load %struct.blk_iopoll*, %struct.blk_iopoll** %2, align 8
  %5 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = call i32 (...) @smp_mb__before_clear_bit()
  %12 = load i32, i32* @IOPOLL_F_SCHED, align 4
  %13 = load %struct.blk_iopoll*, %struct.blk_iopoll** %2, align 8
  %14 = getelementptr inbounds %struct.blk_iopoll, %struct.blk_iopoll* %13, i32 0, i32 0
  %15 = call i32 @clear_bit_unlock(i32 %12, i32* %14)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
