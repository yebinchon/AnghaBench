; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_fd_block_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_fd_block_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@block_flag = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@writepending = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@post_write_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@selected = common dso_local global i32 0, align 4
@wait_fd_block = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fd_block_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_block_done(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @block_flag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 16384, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @custom, i32 0, i32 0), align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, i32* @block_flag, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  store i32 2, i32* @writepending, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @post_write_timer, i32 0, i32 1), align 8
  %14 = load i32, i32* @selected, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @post_write_timer, i32 0, i32 0), align 8
  %15 = call i32 @add_timer(%struct.TYPE_4__* @post_write_timer)
  br label %18

16:                                               ; preds = %8
  store i32 0, i32* @block_flag, align 4
  %17 = call i32 @wake_up(i32* @wait_fd_block)
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %19
}

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
