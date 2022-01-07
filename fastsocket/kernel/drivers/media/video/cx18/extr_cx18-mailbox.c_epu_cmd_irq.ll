; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_cmd_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_cmd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.cx18_in_work_order = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unknown CPU to EPU mailbox command %#0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unknown APU to EPU mailbox command %#0x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_cmd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epu_cmd_irq(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_in_work_order*, align 8
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %7 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 130, label %9
    i32 131, label %29
  ]

9:                                                ; preds = %2
  %10 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %11 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 129, label %18
  ]

14:                                               ; preds = %9
  %15 = load %struct.cx18*, %struct.cx18** %3, align 8
  %16 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %17 = call i32 @epu_dma_done_irq(%struct.cx18* %15, %struct.cx18_in_work_order* %16)
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %9
  %19 = load %struct.cx18*, %struct.cx18** %3, align 8
  %20 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %21 = call i32 @epu_debug_irq(%struct.cx18* %19, %struct.cx18_in_work_order* %20)
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %9
  %23 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %24 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CX18_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %18, %14
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %31 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CX18_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %29, %28
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @epu_dma_done_irq(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i32 @epu_debug_irq(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i32 @CX18_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
