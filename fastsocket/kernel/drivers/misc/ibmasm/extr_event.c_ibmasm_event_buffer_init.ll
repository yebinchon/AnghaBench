; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_event.c_ibmasm_event_buffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_event.c_ibmasm_event_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { %struct.event_buffer* }
%struct.event_buffer = type { i32, i32, %struct.ibmasm_event*, i64 }
%struct.ibmasm_event = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IBMASM_NUM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_event_buffer_init(%struct.service_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.service_processor*, align 8
  %4 = alloca %struct.event_buffer*, align 8
  %5 = alloca %struct.ibmasm_event*, align 8
  %6 = alloca i32, align 4
  store %struct.service_processor* %0, %struct.service_processor** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.event_buffer* @kmalloc(i32 24, i32 %7)
  store %struct.event_buffer* %8, %struct.event_buffer** %4, align 8
  %9 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %10 = icmp ne %struct.event_buffer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %17, i32 0, i32 2
  %19 = load %struct.ibmasm_event*, %struct.ibmasm_event** %18, align 8
  store %struct.ibmasm_event* %19, %struct.ibmasm_event** %5, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %27, %12
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IBMASM_NUM_EVENTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.ibmasm_event*, %struct.ibmasm_event** %5, align 8
  %26 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ibmasm_event*, %struct.ibmasm_event** %5, align 8
  %31 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %30, i32 1
  store %struct.ibmasm_event* %31, %struct.ibmasm_event** %5, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.event_buffer*, %struct.event_buffer** %4, align 8
  %37 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %38 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %37, i32 0, i32 0
  store %struct.event_buffer* %36, %struct.event_buffer** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.event_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
