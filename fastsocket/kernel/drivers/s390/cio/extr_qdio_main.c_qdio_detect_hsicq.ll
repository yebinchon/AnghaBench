; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_detect_hsicq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_detect_hsicq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, i32, %struct.TYPE_4__**, %struct.qdio_q** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qdio_output_q }
%struct.qdio_output_q = type { i32 }
%struct.qdio_q = type { i32 }

@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"use_cq:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*)* @qdio_detect_hsicq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_detect_hsicq(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qdio_q*, align 8
  %6 = alloca %struct.qdio_output_q*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %7 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %8 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %16 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %21 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %20, i32 0, i32 3
  %22 = load %struct.qdio_q**, %struct.qdio_q*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %22, i64 %24
  %26 = load %struct.qdio_q*, %struct.qdio_q** %25, align 8
  store %struct.qdio_q* %26, %struct.qdio_q** %5, align 8
  %27 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %28 = call i64 @queue_type(%struct.qdio_q* %27)
  %29 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %31, %13
  br label %37

37:                                               ; preds = %36, %11
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %41 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %46 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store %struct.qdio_output_q* %53, %struct.qdio_output_q** %6, align 8
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load %struct.qdio_output_q*, %struct.qdio_output_q** %6, align 8
  %58 = call i64 @qdio_enable_async_operation(%struct.qdio_output_q* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  br label %66

61:                                               ; preds = %56
  br label %65

62:                                               ; preds = %44
  %63 = load %struct.qdio_output_q*, %struct.qdio_output_q** %6, align 8
  %64 = call i32 @qdio_disable_async_operation(%struct.qdio_output_q* %63)
  br label %65

65:                                               ; preds = %62, %61
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %38

69:                                               ; preds = %38
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %70)
  ret void
}

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i64 @qdio_enable_async_operation(%struct.qdio_output_q*) #1

declare dso_local i32 @qdio_disable_async_operation(%struct.qdio_output_q*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
