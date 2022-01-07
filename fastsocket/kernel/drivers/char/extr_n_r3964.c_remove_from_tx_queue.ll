; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_remove_from_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_remove_from_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32*, %struct.r3964_block_header*, i32, i32 }
%struct.r3964_block_header = type { %struct.r3964_block_header*, i32, i64 }

@R3964_MSG_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"remove_from_tx_queue - kfree %p\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"remove_from_tx_queue: tx_first = %p, tx_last = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*, i32)* @remove_from_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_tx_queue(%struct.r3964_info* %0, i32 %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r3964_block_header*, align 8
  %6 = alloca i64, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %8 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %7, i32 0, i32 1
  %9 = load %struct.r3964_block_header*, %struct.r3964_block_header** %8, align 8
  store %struct.r3964_block_header* %9, %struct.r3964_block_header** %5, align 8
  %10 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %11 = icmp eq %struct.r3964_block_header* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %15 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %23 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @R3964_MSG_ACK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @add_msg(i64 %24, i32 %25, i32 0, i32 %26, i32* null)
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %30 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @R3964_MSG_ACK, align 4
  %33 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %34 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @add_msg(i64 %31, i32 %32, i32 %35, i32 %36, i32* null)
  br label %38

38:                                               ; preds = %28, %21
  %39 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %40 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %39, i32 0, i32 3
  %41 = call i32 @wake_up_interruptible(i32* %40)
  br label %42

42:                                               ; preds = %38, %13
  %43 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %44 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %43, i32 0, i32 2
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %48 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %47, i32 0, i32 0
  %49 = load %struct.r3964_block_header*, %struct.r3964_block_header** %48, align 8
  %50 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %51 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %50, i32 0, i32 1
  store %struct.r3964_block_header* %49, %struct.r3964_block_header** %51, align 8
  %52 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %53 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %52, i32 0, i32 1
  %54 = load %struct.r3964_block_header*, %struct.r3964_block_header** %53, align 8
  %55 = icmp eq %struct.r3964_block_header* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %58 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %42
  %60 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %61 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %60, i32 0, i32 2
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %65 = call i32 @kfree(%struct.r3964_block_header* %64)
  %66 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %67 = call i32 @TRACE_M(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.r3964_block_header* %66)
  %68 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %69 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %68, i32 0, i32 1
  %70 = load %struct.r3964_block_header*, %struct.r3964_block_header** %69, align 8
  %71 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %72 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @TRACE_Q(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.r3964_block_header* %70, i32* %73)
  br label %75

75:                                               ; preds = %59, %12
  ret void
}

declare dso_local i32 @add_msg(i64, i32, i32, i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.r3964_block_header*) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_block_header*) #1

declare dso_local i32 @TRACE_Q(i8*, %struct.r3964_block_header*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
