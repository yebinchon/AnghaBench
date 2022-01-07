; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_do_eqbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_do_eqbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_2__*, i32, i32 (i32, i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@eqbs = common dso_local global i32 0, align 4
@DBF_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"EQBS again:%2d\00", align 1
@eqbs_partial = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"EQBS part:%02x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%4x EQBS ERROR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%3d%3d%2d\00", align 1
@QDIO_ERROR_ACTIVATE_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i8*, i32, i32, i32)* @qdio_do_eqbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_do_eqbs(%struct.qdio_q* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qdio_q*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %24 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %33 = load i32, i32* @eqbs, align 4
  %34 = call i32 @qperf_inc(%struct.qdio_q* %32, i32 %33)
  %35 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %5
  %40 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %41 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %39, %5
  br label %50

50:                                               ; preds = %100, %72, %49
  %51 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %52 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @do_eqbs(i32 %55, i8* %56, i32 %57, i32* %14, i32* %13, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @qdio_check_ccq(%struct.qdio_q* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %6, align 4
  br label %135

69:                                               ; preds = %50
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @DBF_WARN, align 4
  %74 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %75 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @DBF_DEV_EVENT(i32 %73, %struct.TYPE_2__* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %50

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %89 = load i32, i32* @eqbs_partial, align 4
  %90 = call i32 @qperf_inc(%struct.qdio_q* %88, i32 %89)
  %91 = load i32, i32* @DBF_WARN, align 4
  %92 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %93 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @DBF_DEV_EVENT(i32 %91, %struct.TYPE_2__* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %82
  br label %50

101:                                              ; preds = %82
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %6, align 4
  br label %135

105:                                              ; preds = %79
  %106 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %107 = call i32 @SCH_NO(%struct.qdio_q* %106)
  %108 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %114 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %113, i32 0, i32 3
  %115 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %114, align 8
  %116 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %117 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @QDIO_ERROR_ACTIVATE_CHECK_CONDITION, align 4
  %122 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %123 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %126 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.qdio_q*, %struct.qdio_q** %7, align 8
  %130 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %115(i32 %120, i32 %121, i32 %124, i32 %127, i32 %128, i32 %133)
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %105, %101, %65
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @do_eqbs(i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @qdio_check_ccq(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
