; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_tx_sched_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_tx_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.sched* }
%struct.sched = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"tx_sched_init\0A\00", align 1
@restart_sched = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge*)* @tx_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_sched_init(%struct.sge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.sched*, align 8
  %5 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sched* @kzalloc(i32 16, i32 %6)
  store %struct.sched* %7, %struct.sched** %4, align 8
  %8 = load %struct.sched*, %struct.sched** %4, align 8
  %9 = icmp ne %struct.sched* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sched*, %struct.sched** %4, align 8
  %16 = getelementptr inbounds %struct.sched, %struct.sched* %15, i32 0, i32 1
  %17 = load i32, i32* @restart_sched, align 4
  %18 = load %struct.sge*, %struct.sge** %3, align 8
  %19 = ptrtoint %struct.sge* %18 to i64
  %20 = call i32 @tasklet_init(i32* %16, i32 %17, i64 %19)
  %21 = load %struct.sched*, %struct.sched** %4, align 8
  %22 = load %struct.sge*, %struct.sge** %3, align 8
  %23 = getelementptr inbounds %struct.sge, %struct.sge* %22, i32 0, i32 0
  store %struct.sched* %21, %struct.sched** %23, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %40, %13
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAX_NPORTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.sched*, %struct.sched** %4, align 8
  %30 = getelementptr inbounds %struct.sched, %struct.sched* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @skb_queue_head_init(i32* %35)
  %37 = load %struct.sge*, %struct.sge** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @t1_sched_update_parms(%struct.sge* %37, i32 %38, i32 1500, i32 1000)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %24

43:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.sched* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @t1_sched_update_parms(%struct.sge*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
