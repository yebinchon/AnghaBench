; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_handle_aobs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_handle_aobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.qaob** }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.qaob = type { i32 }

@SLSB_P_OUTPUT_PENDING = common dso_local global i8 0, align 1
@QDIO_OUTBUF_STATE_FLAG_PENDING = common dso_local global i32 0, align 4
@SLSB_P_OUTPUT_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32, i32)* @qdio_handle_aobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_handle_aobs(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.qaob*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %12 = call i64 @contains_aobs(%struct.qdio_q* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  store i8 0, i8* %9, align 1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %99, %14
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  %21 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @get_buf_state(%struct.qdio_q* %21, i32 %22, i8* %9, i32 0)
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SLSB_P_OUTPUT_PENDING, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %20
  %30 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %31 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.qaob**, %struct.qaob*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qaob*, %struct.qaob** %34, i64 %36
  %38 = load %struct.qaob*, %struct.qaob** %37, align 8
  store %struct.qaob* %38, %struct.qaob** %10, align 8
  %39 = load %struct.qaob*, %struct.qaob** %10, align 8
  %40 = icmp eq %struct.qaob* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %99

42:                                               ; preds = %29
  %43 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %44 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32, i32* @QDIO_OUTBUF_STATE_FLAG_PENDING, align 4
  %52 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %53 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %51
  store i32 %62, i32* %60, align 8
  %63 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.qaob**, %struct.qaob*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qaob*, %struct.qaob** %67, i64 %69
  store %struct.qaob* null, %struct.qaob** %70, align 8
  br label %96

71:                                               ; preds = %20
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @SLSB_P_OUTPUT_EMPTY, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %79 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp eq %struct.TYPE_4__* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %87 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %77, %71
  br label %96

96:                                               ; preds = %95, %42
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @next_buf(i32 %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %41
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %16

102:                                              ; preds = %16
  br label %103

103:                                              ; preds = %102, %3
  ret void
}

declare dso_local i64 @contains_aobs(%struct.qdio_q*) #1

declare dso_local i32 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
