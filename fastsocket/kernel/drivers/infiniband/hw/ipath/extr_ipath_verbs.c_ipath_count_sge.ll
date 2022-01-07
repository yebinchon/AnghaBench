; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_count_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_count_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_sge_state = type { i64, %struct.ipath_sge, %struct.ipath_sge* }
%struct.ipath_sge = type { i32, i32, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@IPATH_SEGSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_sge_state*, i32)* @ipath_count_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_count_sge(%struct.ipath_sge_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_sge_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipath_sge*, align 8
  %6 = alloca %struct.ipath_sge, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipath_sge_state* %0, %struct.ipath_sge_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %3, align 8
  %11 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %10, i32 0, i32 2
  %12 = load %struct.ipath_sge*, %struct.ipath_sge** %11, align 8
  store %struct.ipath_sge* %12, %struct.ipath_sge** %5, align 8
  %13 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %13, i32 0, i32 1
  %15 = bitcast %struct.ipath_sge* %6 to i8*
  %16 = bitcast %struct.ipath_sge* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 40, i1 false)
  %17 = load %struct.ipath_sge_state*, %struct.ipath_sge_state** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_sge_state, %struct.ipath_sge_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %148, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %152

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, 3
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 3
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %39
  store i32 0, i32* %8, align 4
  br label %152

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %62
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, %66
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %58
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.ipath_sge*, %struct.ipath_sge** %5, align 8
  %83 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %82, i32 1
  store %struct.ipath_sge* %83, %struct.ipath_sge** %5, align 8
  %84 = bitcast %struct.ipath_sge* %6 to i8*
  %85 = bitcast %struct.ipath_sge* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 40, i1 false)
  br label %86

86:                                               ; preds = %81, %77
  br label %148

87:                                               ; preds = %58
  %88 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %147

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %95, label %147

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* @IPATH_SEGSZ, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %152

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %111, %95
  %114 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 5
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %132, align 8
  %134 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %133, i64 %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.ipath_sge, %struct.ipath_sge* %6, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  br label %147

147:                                              ; preds = %113, %91, %87
  br label %148

148:                                              ; preds = %147, %86
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %4, align 4
  br label %20

152:                                              ; preds = %110, %57, %20
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
