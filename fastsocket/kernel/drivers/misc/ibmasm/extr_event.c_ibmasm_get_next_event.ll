; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_event.c_ibmasm_get_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_event.c_ibmasm_get_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32, %struct.event_buffer* }
%struct.event_buffer = type { i32, %struct.ibmasm_event* }
%struct.ibmasm_event = type { i64, i32, i32 }
%struct.event_reader = type { i64, i32, i32, i64, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@IBMASM_NUM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_get_next_event(%struct.service_processor* %0, %struct.event_reader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca %struct.event_reader*, align 8
  %6 = alloca %struct.event_buffer*, align 8
  %7 = alloca %struct.ibmasm_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store %struct.event_reader* %1, %struct.event_reader** %5, align 8
  %10 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %11 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %10, i32 0, i32 1
  %12 = load %struct.event_buffer*, %struct.event_buffer** %11, align 8
  store %struct.event_buffer* %12, %struct.event_buffer** %6, align 8
  %13 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %14 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %16 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.event_buffer*, %struct.event_buffer** %6, align 8
  %19 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %20 = call i64 @event_available(%struct.event_buffer* %18, %struct.event_reader* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %24 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @wait_event_interruptible(i32 %17, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ERESTARTSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %103

35:                                               ; preds = %27
  %36 = load %struct.event_buffer*, %struct.event_buffer** %6, align 8
  %37 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %38 = call i64 @event_available(%struct.event_buffer* %36, %struct.event_reader* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %103

41:                                               ; preds = %35
  %42 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %43 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.event_buffer*, %struct.event_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = load %struct.event_buffer*, %struct.event_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %49, i32 0, i32 1
  %51 = load %struct.ibmasm_event*, %struct.ibmasm_event** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %51, i64 %53
  store %struct.ibmasm_event* %54, %struct.ibmasm_event** %7, align 8
  br label %55

55:                                               ; preds = %63, %41
  %56 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %57 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %60 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  %66 = load i32, i32* @IBMASM_NUM_EVENTS, align 4
  %67 = urem i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.event_buffer*, %struct.event_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.event_buffer, %struct.event_buffer* %68, i32 0, i32 1
  %70 = load %struct.ibmasm_event*, %struct.ibmasm_event** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %70, i64 %72
  store %struct.ibmasm_event* %73, %struct.ibmasm_event** %7, align 8
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %76 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %79 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %82 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(i32 %77, i32 %80, i32 %83)
  %85 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %86 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %89 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %91 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.event_reader*, %struct.event_reader** %5, align 8
  %95 = getelementptr inbounds %struct.event_reader, %struct.event_reader* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %97 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %96, i32 0, i32 0
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.ibmasm_event*, %struct.ibmasm_event** %7, align 8
  %101 = getelementptr inbounds %struct.ibmasm_event, %struct.ibmasm_event* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %74, %40, %32
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @event_available(%struct.event_buffer*, %struct.event_reader*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
