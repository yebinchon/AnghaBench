; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64 }
%struct.usb_usbvision = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@DBG_MMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"mmap: user supplied mapping address is out of range\00", align 1
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mmap: vm_insert_page failed\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @usbvision_v4l2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_usbvision*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %21)
  store %struct.usb_usbvision* %22, %struct.usb_usbvision** %10, align 8
  %23 = load i32, i32* @DBG_MMAP, align 4
  %24 = call i32 @PDEBUG(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %26 = call i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VM_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %41 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @PAGE_ALIGN(i32 %42)
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %128

48:                                               ; preds = %38
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @PAGE_ALIGN(i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = mul i64 %59, %60
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %73

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %49

73:                                               ; preds = %68, %49
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %76 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @DBG_MMAP, align 4
  %81 = call i32 @PDEBUG(i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %128

84:                                               ; preds = %73
  %85 = load i32, i32* @VM_IO, align 4
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @VM_RESERVED, align 4
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.usb_usbvision*, %struct.usb_usbvision** %10, align 8
  %96 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %117, %84
  %103 = load i64, i64* %6, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @vmalloc_to_page(i8* %108)
  %110 = call i64 @vm_insert_page(%struct.vm_area_struct* %106, i64 %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* @DBG_MMAP, align 4
  %114 = call i32 @PDEBUG(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %128

117:                                              ; preds = %105
  %118 = load i64, i64* @PAGE_SIZE, align 8
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr i8, i8* %122, i64 %121
  store i8* %123, i8** %8, align 8
  %124 = load i64, i64* @PAGE_SIZE, align 8
  %125 = load i64, i64* %6, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %6, align 8
  br label %102

127:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %112, %79, %45, %28
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
