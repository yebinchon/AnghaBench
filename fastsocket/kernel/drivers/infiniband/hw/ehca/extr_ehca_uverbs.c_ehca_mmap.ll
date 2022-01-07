; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.ehca_cq = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_ucontext* }
%struct.ehca_qp = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.ib_uobject* }
%struct.ib_uobject = type { %struct.ib_ucontext* }
%struct.TYPE_7__ = type { %struct.ib_uobject* }

@ehca_cq_idr_lock = common dso_local global i32 0, align 4
@ehca_cq_idr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ehca_mmap_cq() failed rc=%i cq_num=%x\00", align 1
@ehca_qp_idr_lock = common dso_local global i32 0, align 4
@ehca_qp_idr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ehca_mmap_qp() failed rc=%i qp_num=%x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bad queue type %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehca_cq*, align 8
  %12 = alloca %struct.ehca_qp*, align 8
  %13 = alloca %struct.ib_uobject*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 33554431
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 27
  %21 = and i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 25
  %24 = and i32 %23, 3
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %134 [
    i32 0, label %26
    i32 1, label %75
  ]

26:                                               ; preds = %2
  %27 = call i32 @read_lock(i32* @ehca_cq_idr_lock)
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @idr_find(i32* @ehca_cq_idr, i32 %28)
  %30 = bitcast i8* %29 to %struct.ehca_cq*
  store %struct.ehca_cq* %30, %struct.ehca_cq** %11, align 8
  %31 = call i32 @read_unlock(i32* @ehca_cq_idr_lock)
  %32 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %33 = icmp ne %struct.ehca_cq* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %140

37:                                               ; preds = %26
  %38 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %39 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %45 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.ib_ucontext*, %struct.ib_ucontext** %48, align 8
  %50 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %51 = icmp ne %struct.ib_ucontext* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43, %37
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %140

55:                                               ; preds = %43
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ehca_mmap_cq(%struct.vm_area_struct* %56, %struct.ehca_cq* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @unlikely(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %65 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ehca_cq*, %struct.ehca_cq** %11, align 8
  %70 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ehca_err(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %140

74:                                               ; preds = %55
  br label %139

75:                                               ; preds = %2
  %76 = call i32 @read_lock(i32* @ehca_qp_idr_lock)
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @idr_find(i32* @ehca_qp_idr, i32 %77)
  %79 = bitcast i8* %78 to %struct.ehca_qp*
  store %struct.ehca_qp* %79, %struct.ehca_qp** %12, align 8
  %80 = call i32 @read_unlock(i32* @ehca_qp_idr_lock)
  %81 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %82 = icmp ne %struct.ehca_qp* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %140

86:                                               ; preds = %75
  %87 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %88 = call i32 @IS_SRQ(%struct.ehca_qp* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %92 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.ib_uobject*, %struct.ib_uobject** %93, align 8
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %97 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load %struct.ib_uobject*, %struct.ib_uobject** %98, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi %struct.ib_uobject* [ %94, %90 ], [ %99, %95 ]
  store %struct.ib_uobject* %101, %struct.ib_uobject** %13, align 8
  %102 = load %struct.ib_uobject*, %struct.ib_uobject** %13, align 8
  %103 = icmp ne %struct.ib_uobject* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load %struct.ib_uobject*, %struct.ib_uobject** %13, align 8
  %106 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %105, i32 0, i32 0
  %107 = load %struct.ib_ucontext*, %struct.ib_ucontext** %106, align 8
  %108 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %109 = icmp ne %struct.ib_ucontext* %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %100
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %140

113:                                              ; preds = %104
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %115 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ehca_mmap_qp(%struct.vm_area_struct* %114, %struct.ehca_qp* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @unlikely(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %123 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.ehca_qp*, %struct.ehca_qp** %12, align 8
  %128 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ehca_err(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %130)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %140

133:                                              ; preds = %113
  br label %139

134:                                              ; preds = %2
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %140

139:                                              ; preds = %133, %74
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %134, %121, %110, %83, %63, %52, %34
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i8* @idr_find(i32*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ehca_mmap_cq(%struct.vm_area_struct*, %struct.ehca_cq*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ehca_err(i32, i8*, i32, i32) #1

declare dso_local i32 @IS_SRQ(%struct.ehca_qp*) #1

declare dso_local i32 @ehca_mmap_qp(%struct.vm_area_struct*, %struct.ehca_qp*, i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
