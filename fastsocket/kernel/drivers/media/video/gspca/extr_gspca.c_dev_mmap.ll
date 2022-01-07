; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.gspca_dev* }
%struct.gspca_dev = type { i32, i32, %struct.gspca_frame*, %struct.file*, i32 }
%struct.gspca_frame = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.gspca_frame*, i32*, i32 }
%struct.page = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mmap start:%08x size:%d\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"mmap bad memory type\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mmap no frame buffer found\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"mmap bad size\00", align 1
@VM_IO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@gspca_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @dev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca %struct.gspca_frame*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  store %struct.gspca_dev* %16, %struct.gspca_dev** %6, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @D_STREAM, align 4
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i32, i8*, ...) @PDEBUG(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %173

40:                                               ; preds = %2
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %168

48:                                               ; preds = %40
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 3
  %51 = load %struct.file*, %struct.file** %50, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = icmp ne %struct.file* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %168

57:                                               ; preds = %48
  store %struct.gspca_frame* null, %struct.gspca_frame** %7, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %104, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %58
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 2
  %67 = load %struct.gspca_frame*, %struct.gspca_frame** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %67, i64 %69
  %71 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @D_STREAM, align 4
  %78 = call i32 (i32, i8*, ...) @PDEBUG(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %107

79:                                               ; preds = %64
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 2
  %82 = load %struct.gspca_frame*, %struct.gspca_frame** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %82, i64 %84
  %86 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PAGE_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %79
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 2
  %99 = load %struct.gspca_frame*, %struct.gspca_frame** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %99, i64 %101
  store %struct.gspca_frame* %102, %struct.gspca_frame** %7, align 8
  br label %107

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %58

107:                                              ; preds = %96, %76, %58
  %108 = load %struct.gspca_frame*, %struct.gspca_frame** %7, align 8
  %109 = icmp eq %struct.gspca_frame* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @D_STREAM, align 4
  %112 = call i32 (i32, i8*, ...) @PDEBUG(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %13, align 4
  br label %168

115:                                              ; preds = %107
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.gspca_frame*, %struct.gspca_frame** %7, align 8
  %118 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %116, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* @D_STREAM, align 4
  %124 = call i32 (i32, i8*, ...) @PDEBUG(i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %13, align 4
  br label %168

127:                                              ; preds = %115
  %128 = load i32, i32* @VM_IO, align 4
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.gspca_frame*, %struct.gspca_frame** %7, align 8
  %134 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %150, %127
  %137 = load i64, i64* %11, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load i64, i64* %9, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call %struct.page* @vmalloc_to_page(i8* %141)
  store %struct.page* %142, %struct.page** %8, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.page*, %struct.page** %8, align 8
  %146 = call i32 @vm_insert_page(%struct.vm_area_struct* %143, i64 %144, %struct.page* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %168

150:                                              ; preds = %139
  %151 = load i64, i64* @PAGE_SIZE, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* @PAGE_SIZE, align 8
  %158 = load i64, i64* %11, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %11, align 8
  br label %136

160:                                              ; preds = %136
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %162 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %161, i32 0, i32 4
  store i32* @gspca_vm_ops, i32** %162, align 8
  %163 = load %struct.gspca_frame*, %struct.gspca_frame** %7, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 3
  store %struct.gspca_frame* %163, %struct.gspca_frame** %165, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %167 = call i32 @gspca_vm_open(%struct.vm_area_struct* %166)
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %160, %149, %122, %110, %54, %45
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %170 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %169, i32 0, i32 1
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %37
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

declare dso_local i32 @gspca_vm_open(%struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
