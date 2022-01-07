; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_vma_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64 }
%struct.vm_fault = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sg_vma_fault: offset=%lu, scatg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @sg_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_vma_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = icmp eq %struct.vm_area_struct* null, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %10, align 8
  %27 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %24
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44)
  %46 = call i32 @SCSI_LOG_TIMEOUT(i32 3, i32 %45)
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = shl i32 1, %54
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %115, %40
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i1 [ false, %56 ], [ %67, %62 ]
  br i1 %69, label %70, label %118

70:                                               ; preds = %68
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i64, i64* %8, align 8
  br label %85

82:                                               ; preds = %70
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i64 [ %81, %80 ], [ %84, %82 ]
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %98, %100
  %102 = call %struct.page* @nth_page(i32 %97, i64 %101)
  store %struct.page* %102, %struct.page** %13, align 8
  %103 = load %struct.page*, %struct.page** %13, align 8
  %104 = call i32 @get_page(%struct.page* %103)
  %105 = load %struct.page*, %struct.page** %13, align 8
  %106 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %107 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %106, i32 0, i32 1
  store %struct.page* %105, %struct.page** %107, align 8
  store i32 0, i32* %3, align 4
  br label %120

108:                                              ; preds = %85
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %7, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %56

118:                                              ; preds = %68
  %119 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %90, %38, %22
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

declare dso_local %struct.page* @nth_page(i32, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
