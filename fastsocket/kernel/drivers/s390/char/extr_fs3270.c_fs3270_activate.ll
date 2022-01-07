; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { i32 }
%struct.fs3270 = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*, i32*)*, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i8** }

@TC_EWRITEA = common dso_local global i32 0, align 4
@TW_KR = common dso_local global i8 0, align 1
@TO_SBA = common dso_local global i8 0, align 1
@TO_IC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270_view*)* @fs3270_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_activate(%struct.raw3270_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raw3270_view*, align 8
  %4 = alloca %struct.fs3270*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %3, align 8
  %7 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %8 = bitcast %struct.raw3270_view* %7 to %struct.fs3270*
  store %struct.fs3270* %8, %struct.fs3270** %4, align 8
  %9 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %10 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = call i32 @raw3270_request_final(%struct.TYPE_11__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %17 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %22 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load i32, i32* @TC_EWRITEA, align 4
  %25 = call i32 @raw3270_request_set_cmd(%struct.TYPE_11__* %23, i32 %24)
  %26 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %27 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32 (%struct.TYPE_11__*, i32*)* @fs3270_reset_callback, i32 (%struct.TYPE_11__*, i32*)** %29, align 8
  br label %92

30:                                               ; preds = %15
  %31 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %32 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load i32, i32* @TC_EWRITEA, align 4
  %35 = call i32 @raw3270_request_set_cmd(%struct.TYPE_11__* %33, i32 %34)
  %36 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %37 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %40 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @raw3270_request_set_idal(%struct.TYPE_11__* %38, %struct.TYPE_12__* %41)
  %43 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %44 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %47 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %52 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %5, align 8
  %58 = load i8, i8* @TW_KR, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load i8, i8* @TO_SBA, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %63, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 6
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 %71, i8* %73, align 1
  %74 = load i8, i8* @TO_IC, align 1
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8 %74, i8* %76, align 1
  %77 = load i8, i8* @TO_SBA, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  store i8 %77, i8* %79, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  store i8 64, i8* %81, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 7
  store i8 64, i8* %83, align 1
  %84 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %85 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %89 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32 (%struct.TYPE_11__*, i32*)* @fs3270_restore_callback, i32 (%struct.TYPE_11__*, i32*)** %91, align 8
  br label %92

92:                                               ; preds = %30, %20
  %93 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %94 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %95 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %94, i32 0, i32 2
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = call i32 @raw3270_start_locked(%struct.raw3270_view* %93, %struct.TYPE_11__* %96)
  %98 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %99 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  store i32 %97, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %92
  %105 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %106 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %108, align 8
  %110 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %111 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = call i32 %109(%struct.TYPE_11__* %112, i32* null)
  br label %117

114:                                              ; preds = %92
  %115 = load %struct.fs3270*, %struct.fs3270** %4, align 8
  %116 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %104
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @raw3270_request_final(%struct.TYPE_11__*) #1

declare dso_local i32 @raw3270_request_set_cmd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fs3270_reset_callback(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @raw3270_request_set_idal(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @fs3270_restore_callback(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @raw3270_start_locked(%struct.raw3270_view*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
