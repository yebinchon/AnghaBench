; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_dump_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_dump_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.c4iw_debugfs_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"qp id %u state %u ep tid %u state %u %pI4:%u->%pI4:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"qp id %u state %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @dump_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_qp(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c4iw_qp*, align 8
  %9 = alloca %struct.c4iw_debugfs_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.c4iw_qp*
  store %struct.c4iw_qp* %13, %struct.c4iw_qp** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.c4iw_debugfs_data*
  store %struct.c4iw_debugfs_data* %15, %struct.c4iw_debugfs_data** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %18 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

24:                                               ; preds = %3
  %25 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %26 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %29 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %134

36:                                               ; preds = %24
  %37 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %38 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %103

41:                                               ; preds = %36
  %42 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %43 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %46 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %51 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %56 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %61 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %60, i32 0, i32 2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %66 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %65, i32 0, i32 2
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %73 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %72, i32 0, i32 2
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %80 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ntohs(i32 %85)
  %87 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %88 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %87, i32 0, i32 2
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %95 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ntohs(i32 %100)
  %102 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %59, i32 %64, i32 %71, i32* %78, i32 %86, i32* %93, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %123

103:                                              ; preds = %36
  %104 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %105 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %108 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %113 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %118 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %110, i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %103, %41
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %9, align 8
  %130 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %123
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %35, %23
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
