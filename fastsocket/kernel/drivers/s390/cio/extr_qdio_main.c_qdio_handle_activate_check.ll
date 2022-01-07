; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_handle_activate_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_handle_activate_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { i32, %struct.qdio_q**, i64, %struct.qdio_q**, i64, %struct.TYPE_5__ }
%struct.qdio_q = type { i32, i32, %struct.TYPE_6__*, i32 (i32, i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%4x ACT CHECK\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"intp :%lx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ds: %2x cs:%2x\00", align 1
@QDIO_ERROR_ACTIVATE_CHECK_CONDITION = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, i32, i32)* @qdio_handle_activate_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_handle_activate_check(%struct.ccw_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qdio_irq*, align 8
  %10 = alloca %struct.qdio_q*, align 8
  %11 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %15, align 8
  store %struct.qdio_irq* %16, %struct.qdio_irq** %9, align 8
  %17 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %18 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %29 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %34 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %33, i32 0, i32 3
  %35 = load %struct.qdio_q**, %struct.qdio_q*** %34, align 8
  %36 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %35, i64 0
  %37 = load %struct.qdio_q*, %struct.qdio_q** %36, align 8
  store %struct.qdio_q* %37, %struct.qdio_q** %10, align 8
  br label %52

38:                                               ; preds = %4
  %39 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %40 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %45 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %44, i32 0, i32 1
  %46 = load %struct.qdio_q**, %struct.qdio_q*** %45, align 8
  %47 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %46, i64 0
  %48 = load %struct.qdio_q*, %struct.qdio_q** %47, align 8
  store %struct.qdio_q* %48, %struct.qdio_q** %10, align 8
  br label %51

49:                                               ; preds = %38
  %50 = call i32 (...) @dump_stack()
  br label %80

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %54 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %57 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sub_buf(i32 %55, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %61 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %60, i32 0, i32 3
  %62 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %61, align 8
  %63 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @QDIO_ERROR_ACTIVATE_CHECK_CONDITION, align 4
  %69 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %70 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %73 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %77 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %62(i32 %67, i32 %68, i32 %71, i32 %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %52, %49
  %81 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  %82 = load i32, i32* @QDIO_IRQ_STATE_STOPPED, align 4
  %83 = call i32 @qdio_set_state(%struct.qdio_irq* %81, i32 %82)
  %84 = call i32 (...) @lgr_info_log()
  ret void
}

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @sub_buf(i32, i32) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @lgr_info_log(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
