; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32*, %struct.file*, %struct.vino_framebuffer*, i32 }
%struct.vino_framebuffer = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }
%struct.vino_channel_settings = type { i32, i32, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"mmap():\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"mmap(): app bug: PROT_WRITE please\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"mmap(): app bug: MAP_SHARED please\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"mmap(): queue not initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"mmap(): vino_queue_get_buffer() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"mmap(): invalid offset = %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"mmap(): buffer = %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"mmap(): failed: size = %lu > %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"mmap(): remap_pfn_range() failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@vino_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vino_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vino_channel_settings*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vino_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %15)
  store %struct.vino_channel_settings* %16, %struct.vino_channel_settings** %6, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = shl i64 %29, %30
  store i64 %31, i64* %9, align 8
  store %struct.vino_framebuffer* null, %struct.vino_framebuffer** %10, align 8
  store i32 0, i32* %13, align 4
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %34 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %33, i32 0, i32 0
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINTR, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %213

40:                                               ; preds = %2
  %41 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %42 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %208

48:                                               ; preds = %40
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VM_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %208

59:                                               ; preds = %48
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @VM_SHARED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %208

70:                                               ; preds = %59
  %71 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %72 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %71, i32 0, i32 1
  %73 = call i32 @vino_queue_get_length(i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %208

80:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %87 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %86, i32 0, i32 1
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.vino_framebuffer* @vino_queue_get_buffer(i32* %87, i32 %88)
  store %struct.vino_framebuffer* %89, %struct.vino_framebuffer** %10, align 8
  %90 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %91 = icmp eq %struct.vino_framebuffer* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %208

96:                                               ; preds = %85
  %97 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %98 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %112

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load i64, i64* %9, align 8
  %109 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %208

112:                                              ; preds = %102
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %117 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PAGE_SIZE, align 8
  %121 = mul i64 %119, %120
  %122 = icmp ugt i64 %115, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %112
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %126 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PAGE_SIZE, align 8
  %130 = mul i64 %128, %129
  %131 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %124, i64 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %208

134:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %181, %134
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %139 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %137, %141
  br i1 %142, label %143, label %184

143:                                              ; preds = %135
  %144 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %145 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i64 @virt_to_phys(i8* %152)
  %154 = load i64, i64* @PAGE_SHIFT, align 8
  %155 = lshr i64 %153, %154
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @PAGE_SIZE, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %184

160:                                              ; preds = %143
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* @PAGE_SIZE, align 8
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @remap_pfn_range(%struct.vm_area_struct* %161, i64 %162, i64 %163, i64 %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %13, align 4
  br label %208

174:                                              ; preds = %160
  %175 = load i64, i64* @PAGE_SIZE, align 8
  %176 = load i64, i64* %7, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %7, align 8
  %178 = load i64, i64* @PAGE_SIZE, align 8
  %179 = load i64, i64* %8, align 8
  %180 = sub i64 %179, %178
  store i64 %180, i64* %8, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %135

184:                                              ; preds = %159, %135
  %185 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %186 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %185, i32 0, i32 1
  store i32 1, i32* %186, align 8
  %187 = load i32, i32* @VM_DONTEXPAND, align 4
  %188 = load i32, i32* @VM_RESERVED, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %191 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i32, i32* @VM_IO, align 4
  %195 = xor i32 %194, -1
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %197 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %202 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %201, i32 0, i32 6
  store %struct.vino_framebuffer* %200, %struct.vino_framebuffer** %202, align 8
  %203 = load %struct.file*, %struct.file** %4, align 8
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %205 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %204, i32 0, i32 5
  store %struct.file* %203, %struct.file** %205, align 8
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %207 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %206, i32 0, i32 4
  store i32* @vino_vm_ops, i32** %207, align 8
  br label %208

208:                                              ; preds = %184, %170, %123, %107, %92, %76, %66, %55, %45
  %209 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %6, align 8
  %210 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %208, %37
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vino_queue_get_length(i32*) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_get_buffer(i32*, i32) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
