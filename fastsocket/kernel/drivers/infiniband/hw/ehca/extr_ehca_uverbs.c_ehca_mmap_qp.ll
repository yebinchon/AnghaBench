; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.ehca_qp = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"qp_num=%x fw\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"remap_pfn_range() failed ret=%i qp_num=%x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"qp_num=%x rq\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ehca_mmap_queue(rq) failed rc=%i qp_num=%x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"qp_num=%x sq\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"ehca_mmap_queue(sq) failed rc=%i qp_num=%x\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"bad resource type=%x qp=num=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.ehca_qp*, i32)* @ehca_mmap_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_mmap_qp(%struct.vm_area_struct* %0, %struct.ehca_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.ehca_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.ehca_qp* %1, %struct.ehca_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %107 [
    i32 0, label %10
    i32 1, label %43
    i32 2, label %75
  ]

10:                                               ; preds = %3
  %11 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %12 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ehca_dbg(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %21, i32 0, i32 6
  %23 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %24 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %23, i32 0, i32 5
  %25 = call i32 @ehca_mmap_fw(%struct.vm_area_struct* %20, i32* %22, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @unlikely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %10
  %30 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %31 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %36 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ehca_err(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %121

42:                                               ; preds = %10
  br label %120

43:                                               ; preds = %3
  %44 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %45 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %49 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ehca_dbg(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %55 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %54, i32 0, i32 4
  %56 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %57 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %56, i32 0, i32 3
  %58 = call i32 @ehca_mmap_queue(%struct.vm_area_struct* %53, i32* %55, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @unlikely(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %43
  %63 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %64 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %69 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ehca_err(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %121

74:                                               ; preds = %43
  br label %120

75:                                               ; preds = %3
  %76 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %77 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %81 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ehca_dbg(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %86 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %87 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %86, i32 0, i32 2
  %88 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %89 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %88, i32 0, i32 1
  %90 = call i32 @ehca_mmap_queue(%struct.vm_area_struct* %85, i32* %87, i32* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @unlikely(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %75
  %95 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %96 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %101 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ehca_err(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %121

106:                                              ; preds = %75
  br label %120

107:                                              ; preds = %3
  %108 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %109 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.ehca_qp*, %struct.ehca_qp** %6, align 8
  %114 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ehca_err(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %106, %74, %42
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %107, %94, %62, %29
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @ehca_dbg(i32, i8*, i32) #1

declare dso_local i32 @ehca_mmap_fw(%struct.vm_area_struct*, i32*, i32*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ehca_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ehca_mmap_queue(%struct.vm_area_struct*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
