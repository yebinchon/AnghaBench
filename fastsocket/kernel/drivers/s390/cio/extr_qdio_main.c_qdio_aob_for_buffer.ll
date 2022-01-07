; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_aob_for_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_aob_for_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_output_q = type { %struct.qaob**, %struct.TYPE_2__*, i32 }
%struct.qaob = type { i64 }
%struct.TYPE_2__ = type { i64, %struct.qaob*, i32 }

@QDIO_OUTBUF_STATE_FLAG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qdio_output_q*, i32)* @qdio_aob_for_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qdio_aob_for_buffer(%struct.qdio_output_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_output_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qaob*, align 8
  store %struct.qdio_output_q* %0, %struct.qdio_output_q** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %8 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %97

12:                                               ; preds = %2
  %13 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %14 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %13, i32 0, i32 0
  %15 = load %struct.qaob**, %struct.qaob*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qaob*, %struct.qaob** %15, i64 %17
  %19 = load %struct.qaob*, %struct.qaob** %18, align 8
  %20 = icmp ne %struct.qaob* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = call %struct.qaob* (...) @qdio_allocate_aob()
  store %struct.qaob* %22, %struct.qaob** %6, align 8
  %23 = load %struct.qaob*, %struct.qaob** %6, align 8
  %24 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %25 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %24, i32 0, i32 0
  %26 = load %struct.qaob**, %struct.qaob*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qaob*, %struct.qaob** %26, i64 %28
  store %struct.qaob* %23, %struct.qaob** %29, align 8
  br label %30

30:                                               ; preds = %21, %12
  %31 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %32 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %31, i32 0, i32 0
  %33 = load %struct.qaob**, %struct.qaob*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qaob*, %struct.qaob** %33, i64 %35
  %37 = load %struct.qaob*, %struct.qaob** %36, align 8
  %38 = icmp ne %struct.qaob* %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %30
  %40 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %41 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp eq %struct.TYPE_2__* %42, null
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = call i32 @BUG_ON(i64 %45)
  %47 = load i32, i32* @QDIO_OUTBUF_STATE_FLAG_NONE, align 4
  %48 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %49 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %47, i32* %54, align 8
  %55 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %56 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %55, i32 0, i32 0
  %57 = load %struct.qaob**, %struct.qaob*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.qaob*, %struct.qaob** %57, i64 %59
  %61 = load %struct.qaob*, %struct.qaob** %60, align 8
  %62 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %63 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store %struct.qaob* %61, %struct.qaob** %68, align 8
  %69 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %70 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %78 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %77, i32 0, i32 0
  %79 = load %struct.qaob**, %struct.qaob*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qaob*, %struct.qaob** %79, i64 %81
  %83 = load %struct.qaob*, %struct.qaob** %82, align 8
  %84 = getelementptr inbounds %struct.qaob, %struct.qaob* %83, i32 0, i32 0
  store i64 %76, i64* %84, align 8
  %85 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %86 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %85, i32 0, i32 0
  %87 = load %struct.qaob**, %struct.qaob*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.qaob*, %struct.qaob** %87, i64 %89
  %91 = load %struct.qaob*, %struct.qaob** %90, align 8
  %92 = call i64 @virt_to_phys(%struct.qaob* %91)
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = and i64 %93, 255
  %95 = call i32 @BUG_ON(i64 %94)
  br label %96

96:                                               ; preds = %39, %30
  br label %97

97:                                               ; preds = %96, %11
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local %struct.qaob* @qdio_allocate_aob(...) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @virt_to_phys(%struct.qaob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
