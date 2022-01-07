; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_buf_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_buf_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SLSB_P_OUTPUT_PENDING = common dso_local global i8 0, align 1
@SLSB_P_OUTPUT_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i8*, i32, i32, i32)* @get_buf_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buf_states(%struct.qdio_q* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qdio_q*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %18 = icmp ugt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %23 = icmp ugt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %27 = call i64 @is_qebsm(%struct.qdio_q* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @qdio_do_eqbs(%struct.qdio_q* %30, i8* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %111

36:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %104, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %107

41:                                               ; preds = %37
  %42 = load i8, i8* %14, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %46 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %14, align 1
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i8, i8* %14, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @SLSB_P_OUTPUT_PENDING, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8, i8* @SLSB_P_OUTPUT_EMPTY, align 1
  store i8 %62, i8* %14, align 1
  br label %63

63:                                               ; preds = %61, %55, %44
  br label %101

64:                                               ; preds = %41
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %69 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %14, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = load i8, i8* %14, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %107

84:                                               ; preds = %67
  br label %100

85:                                               ; preds = %64
  %86 = load %struct.qdio_q*, %struct.qdio_q** %8, align 8
  %87 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %107

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %84
  br label %101

101:                                              ; preds = %100, %63
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @next_buf(i32 %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %37

107:                                              ; preds = %98, %83, %37
  %108 = load i8, i8* %14, align 1
  %109 = load i8*, i8** %10, align 8
  store i8 %108, i8* %109, align 1
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %29
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @qdio_do_eqbs(%struct.qdio_q*, i8*, i32, i32, i32) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
