; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_do_sqbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_do_sqbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_2__*, i32, i32 (i32, i32, i32, i32, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@sqbs = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SQBS again:%2d\00", align 1
@sqbs_partial = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x SQBS ERROR\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%3d%3d%2d\00", align 1
@QDIO_ERROR_ACTIVATE_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i8, i32, i32)* @qdio_do_sqbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_do_sqbs(%struct.qdio_q* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %18 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

23:                                               ; preds = %4
  %24 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %25 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %34 = load i32, i32* @sqbs, align 4
  %35 = call i32 @qperf_inc(%struct.qdio_q* %33, i32 %34)
  %36 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %23
  %41 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %42 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %40, %23
  br label %51

51:                                               ; preds = %77, %50
  %52 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %53 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8, i8* %7, align 1
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @do_sqbs(i32 %56, i8 zeroext %57, i32 %58, i32* %12, i32* %11)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @qdio_check_ccq(%struct.qdio_q* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %117

71:                                               ; preds = %51
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %87

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @DBF_INFO, align 4
  %79 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @DBF_DEV_EVENT(i32 %78, %struct.TYPE_2__* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %85 = load i32, i32* @sqbs_partial, align 4
  %86 = call i32 @qperf_inc(%struct.qdio_q* %84, i32 %85)
  br label %51

87:                                               ; preds = %74
  %88 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %89 = call i32 @SCH_NO(%struct.qdio_q* %88)
  %90 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %96 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %95, i32 0, i32 3
  %97 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %96, align 8
  %98 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %99 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @QDIO_ERROR_ACTIVATE_CHECK_CONDITION, align 4
  %104 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %105 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %108 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %112 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %97(i32 %102, i32 %103, i32 %106, i32 %109, i32 %110, i32 %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %87, %65, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @do_sqbs(i32, i8 zeroext, i32, i32*, i32*) #1

declare dso_local i32 @qdio_check_ccq(%struct.qdio_q*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
