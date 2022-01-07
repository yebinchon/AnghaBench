; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.ehca_cq = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cq_num=%x fw\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ehca_mmap_fw() failed rc=%i cq_num=%x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cq_num=%x queue\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ehca_mmap_queue() failed rc=%i cq_num=%x\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"bad resource type=%x cq_num=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.ehca_cq*, i32)* @ehca_mmap_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_mmap_cq(%struct.vm_area_struct* %0, %struct.ehca_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.ehca_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.ehca_cq* %1, %struct.ehca_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %70 [
    i32 0, label %10
    i32 1, label %40
  ]

10:                                               ; preds = %3
  %11 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %12 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %16 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ehca_dbg(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %21 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %20, i32 0, i32 5
  %22 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %23 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %22, i32 0, i32 4
  %24 = call i32 @ehca_mmap_fw(%struct.vm_area_struct* %19, i32* %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @unlikely(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %10
  %29 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %30 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %35 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ehca_err(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %83

39:                                               ; preds = %10
  br label %82

40:                                               ; preds = %3
  %41 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %42 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %46 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ehca_dbg(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %51 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %50, i32 0, i32 3
  %52 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %53 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %52, i32 0, i32 2
  %54 = call i32 @ehca_mmap_queue(%struct.vm_area_struct* %49, i32* %51, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @unlikely(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %60 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %65 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ehca_err(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %40
  br label %82

70:                                               ; preds = %3
  %71 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %72 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ehca_cq*, %struct.ehca_cq** %6, align 8
  %77 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ehca_err(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %69, %39
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %70, %58, %28
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
