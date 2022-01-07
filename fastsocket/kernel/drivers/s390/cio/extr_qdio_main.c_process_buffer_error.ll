; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_process_buffer_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_process_buffer_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i64, %struct.TYPE_4__**, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SLSB_P_INPUT_NOT_INIT = common dso_local global i8 0, align 1
@SLSB_P_OUTPUT_NOT_INIT = common dso_local global i8 0, align 1
@QDIO_ERROR_SLSB_STATE = common dso_local global i32 0, align 4
@target_full = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OUTFULL FTC:%02x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%4x BUF ERROR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"IN:%2d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"OUT:%2d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"FTC:%3d C:%3d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"F14:%2x F15:%2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32)* @process_buffer_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_buffer_error(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* @SLSB_P_INPUT_NOT_INIT, align 1
  %12 = zext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* @SLSB_P_OUTPUT_NOT_INIT, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  %19 = load i32, i32* @QDIO_ERROR_SLSB_STATE, align 4
  %20 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %25 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %16
  %29 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 15
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %55

43:                                               ; preds = %28
  %44 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %45 = load i32, i32* @target_full, align 4
  %46 = call i32 @qperf_inc(%struct.qdio_q* %44, i32 %45)
  %47 = load i32, i32* @DBF_INFO, align 4
  %48 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %49 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %52 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @DBF_DEV_EVENT(i32 %47, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %104

55:                                               ; preds = %28, %16
  %56 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %57 = call i32 @SCH_NO(%struct.qdio_q* %56)
  %58 = sext i32 %57 to i64
  %59 = call i32 (i8*, i64, ...) @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %61 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %66 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = call i32 (i8*, i64, ...) @DBF_ERROR(i8* %65, i64 %69)
  %71 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %72 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, i64, ...) @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %73, i32 %74)
  %76 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %77 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 14
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %91 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %91, align 8
  %93 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %94 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 15
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i64, ...) @DBF_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %89, i32 %102)
  br label %104

104:                                              ; preds = %55, %43
  %105 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %106 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %107 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i8, i8* %5, align 1
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @set_buf_states(%struct.qdio_q* %105, i64 %108, i8 zeroext %109, i32 %110)
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i64) #1

declare dso_local i32 @DBF_ERROR(i8*, i64, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i64, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
