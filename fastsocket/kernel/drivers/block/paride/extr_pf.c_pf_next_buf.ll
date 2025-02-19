; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_pf_next_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pf.c_pf_next_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pf_count = common dso_local global i64 0, align 8
@pf_run = common dso_local global i32 0, align 4
@pf_buf = common dso_local global i32 0, align 4
@pf_block = common dso_local global i32 0, align 4
@pf_spin_lock = common dso_local global i32 0, align 4
@pf_req = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pf_next_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_next_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @pf_count, align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* @pf_count, align 8
  %5 = load i32, i32* @pf_run, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @pf_run, align 4
  %7 = load i32, i32* @pf_buf, align 4
  %8 = add nsw i32 %7, 512
  store i32 %8, i32* @pf_buf, align 4
  %9 = load i32, i32* @pf_block, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pf_block, align 4
  %11 = load i32, i32* @pf_run, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %33

14:                                               ; preds = %0
  %15 = load i64, i64* @pf_count, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @pf_spin_lock, i64 %18)
  %20 = call i32 @pf_end_request(i32 0)
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @pf_spin_lock, i64 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_req, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_req, align 8
  %28 = call i64 @blk_rq_cur_sectors(%struct.TYPE_3__* %27)
  store i64 %28, i64* @pf_count, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pf_req, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @pf_buf, align 4
  br label %32

32:                                               ; preds = %26, %14
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %25, %13
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pf_end_request(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @blk_rq_cur_sectors(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
