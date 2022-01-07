; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@QDIO_SIGA_WRITE = common dso_local global i32 0, align 4
@QDIO_SIGA_WRITEQ = common dso_local global i32 0, align 4
@QDIO_SIGA_QEBSM_FLAG = common dso_local global i32 0, align 4
@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@QDIO_BUSY_BIT_PATIENCE = common dso_local global i64 0, align 8
@DBF_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%4x cc2 BB1:%1d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"count:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32*, i64)* @qdio_siga_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_siga_output(%struct.qdio_q* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %14 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @QDIO_SIGA_WRITE, align 4
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %20 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %29 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @QDIO_SIGA_WRITEQ, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %37, %34, %27
  %41 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %42 = call i64 @is_qebsm(%struct.qdio_q* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %46 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* @QDIO_SIGA_QEBSM_FLAG, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %40
  br label %54

54:                                               ; preds = %110, %102, %53
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = call i64 @queue_type(%struct.qdio_q* %58)
  %60 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %57, %54
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @QDIO_SIGA_WRITEQ, align 4
  %68 = icmp ne i32 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i1 [ true, %57 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON_ONCE(i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %77 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @do_siga_output(i64 %75, i32 %78, i32* %79, i32 %80, i64 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %71
  %87 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %88 = call i64 @queue_type(%struct.qdio_q* %87)
  %89 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 2
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi i1 [ true, %86 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ON(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %94
  %103 = call i64 (...) @get_usecs()
  store i64 %103, i64* %9, align 8
  br label %54

104:                                              ; preds = %94
  %105 = call i64 (...) @get_usecs()
  %106 = load i64, i64* %9, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load i64, i64* @QDIO_BUSY_BIT_PATIENCE, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %54

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %71
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* @DBF_WARN, align 4
  %117 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %118 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %121 = call i32 @SCH_NO(%struct.qdio_q* %120)
  %122 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %123 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, %struct.TYPE_6__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %116, %struct.TYPE_6__* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32, i32* @DBF_WARN, align 4
  %127 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %128 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i32, %struct.TYPE_6__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %126, %struct.TYPE_6__* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %115, %112
  %133 = load i32, i32* %10, align 4
  ret i32 %133
}

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @do_siga_output(i64, i32, i32*, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @get_usecs(...) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
