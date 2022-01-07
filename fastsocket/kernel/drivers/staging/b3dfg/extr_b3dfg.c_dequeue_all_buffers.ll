; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_dequeue_all_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_dequeue_all_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { %struct.b3dfg_buffer* }
%struct.b3dfg_buffer = type { i32, i32 }

@b3dfg_nbuf = common dso_local global i32 0, align 4
@B3DFG_BUFFER_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b3dfg_dev*)* @dequeue_all_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_all_buffers(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca %struct.b3dfg_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.b3dfg_buffer*, align 8
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @b3dfg_nbuf, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %11 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %10, i32 0, i32 0
  %12 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %12, i64 %14
  store %struct.b3dfg_buffer* %15, %struct.b3dfg_buffer** %4, align 8
  %16 = load i32, i32* @B3DFG_BUFFER_POLLED, align 4
  %17 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %19, i32 0, i32 0
  %21 = call i32 @list_del_init(i32* %20)
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
