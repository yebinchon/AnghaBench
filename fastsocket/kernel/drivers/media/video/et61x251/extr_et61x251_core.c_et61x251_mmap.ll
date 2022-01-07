; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.et61x251_device = type { i32, i64, i64, i32, %struct.TYPE_6__* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device not present\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"The camera is misconfigured. Close and open it again.\00", align 1
@EIO = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IO_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@et61x251_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @et61x251_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et61x251_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.et61x251_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.et61x251_device* @video_drvdata(%struct.file* %11)
  store %struct.et61x251_device* %12, %struct.et61x251_device** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %24 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %23, i32 0, i32 3
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %195

30:                                               ; preds = %2
  %31 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %32 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DEV_DISCONNECTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %40 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %195

44:                                               ; preds = %30
  %45 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %46 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %54 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %53, i32 0, i32 3
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %195

58:                                               ; preds = %44
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VM_WRITE, align 4
  %63 = load i32, i32* @VM_READ, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %69 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %68, i32 0, i32 3
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @EACCES, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %195

73:                                               ; preds = %58
  %74 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %75 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IO_MMAP, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %82 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @PAGE_ALIGN(i32 %87)
  %89 = icmp ne i64 %80, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %79, %73
  %91 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %92 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %91, i32 0, i32 3
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %195

96:                                               ; preds = %79
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %100 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %97
  %104 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %105 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %104, i32 0, i32 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PAGE_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %124

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %97

124:                                              ; preds = %119, %97
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %127 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %132 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %131, i32 0, i32 3
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %195

136:                                              ; preds = %124
  %137 = load i32, i32* @VM_IO, align 4
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @VM_RESERVED, align 4
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %148 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %147, i32 0, i32 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %9, align 8
  br label %154

154:                                              ; preds = %170, %136
  %155 = load i64, i64* %7, align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %154
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 @vmalloc_to_page(i8* %160)
  %162 = call i64 @vm_insert_page(%struct.vm_area_struct* %158, i64 %159, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %166 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %165, i32 0, i32 3
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %195

170:                                              ; preds = %157
  %171 = load i64, i64* @PAGE_SIZE, align 8
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %8, align 8
  %174 = load i64, i64* @PAGE_SIZE, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr i8, i8* %175, i64 %174
  store i8* %176, i8** %9, align 8
  %177 = load i64, i64* @PAGE_SIZE, align 8
  %178 = load i64, i64* %7, align 8
  %179 = sub i64 %178, %177
  store i64 %179, i64* %7, align 8
  br label %154

180:                                              ; preds = %154
  %181 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %182 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %181, i32 0, i32 5
  store i32* @et61x251_vm_ops, i32** %182, align 8
  %183 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %184 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %183, i32 0, i32 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %186
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %189 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %188, i32 0, i32 4
  store %struct.TYPE_6__* %187, %struct.TYPE_6__** %189, align 8
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %191 = call i32 @et61x251_vm_open(%struct.vm_area_struct* %190)
  %192 = load %struct.et61x251_device*, %struct.et61x251_device** %6, align 8
  %193 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %192, i32 0, i32 3
  %194 = call i32 @mutex_unlock(i32* %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %180, %164, %130, %90, %67, %51, %37, %27
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.et61x251_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i32 @et61x251_vm_open(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
