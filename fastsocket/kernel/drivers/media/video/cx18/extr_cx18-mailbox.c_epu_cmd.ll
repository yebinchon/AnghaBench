; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_epu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.cx18_in_work_order = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unknown CPU to EPU mailbox command %#0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unknown APU to EPU mailbox command %#0x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epu_cmd(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_in_work_order*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %4, align 8
  %5 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %6 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %34 [
    i32 130, label %8
    i32 131, label %28
  ]

8:                                                ; preds = %2
  %9 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %10 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
    i32 129, label %17
  ]

13:                                               ; preds = %8
  %14 = load %struct.cx18*, %struct.cx18** %3, align 8
  %15 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %16 = call i32 @epu_dma_done(%struct.cx18* %14, %struct.cx18_in_work_order* %15)
  br label %27

17:                                               ; preds = %8
  %18 = load %struct.cx18*, %struct.cx18** %3, align 8
  %19 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %20 = call i32 @epu_debug(%struct.cx18* %18, %struct.cx18_in_work_order* %19)
  br label %27

21:                                               ; preds = %8
  %22 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %23 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CX18_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %17, %13
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %30 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CX18_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %28, %27
  ret void
}

declare dso_local i32 @epu_dma_done(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i32 @epu_debug(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i32 @CX18_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
