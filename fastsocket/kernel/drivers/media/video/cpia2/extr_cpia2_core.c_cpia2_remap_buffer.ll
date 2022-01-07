; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_remap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_remap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64, i64, i32, i32, i64, i32 }
%struct.vm_area_struct = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mmap offset:%ld size:%ld\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_remap_buffer(%struct.camera_data* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %31 = icmp ne %struct.camera_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %141

35:                                               ; preds = %2
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %40 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %39, i32 0, i32 3
  %41 = call i64 @mutex_lock_interruptible(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %141

46:                                               ; preds = %35
  %47 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %48 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 3
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %141

57:                                               ; preds = %46
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %63 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %61, %64
  %66 = icmp ugt i64 %58, %65
  br i1 %66, label %86, label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = urem i64 %68, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %80, %83
  %85 = icmp ugt i64 %77, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %74, %67, %57
  %87 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %88 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %87, i32 0, i32 3
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %141

92:                                               ; preds = %74
  %93 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %94 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %95, %96
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %134, %92
  %99 = load i64, i64* %7, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %98
  %102 = load i64, i64* %11, align 8
  %103 = call i64 @kvirt_to_pa(i64 %102)
  store i64 %103, i64* %10, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @PAGE_SHIFT, align 8
  %108 = lshr i64 %106, %107
  %109 = load i64, i64* @PAGE_SIZE, align 8
  %110 = load i32, i32* @PAGE_SHARED, align 4
  %111 = call i64 @remap_pfn_range(%struct.vm_area_struct* %104, i64 %105, i64 %108, i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %115 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %114, i32 0, i32 3
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %141

119:                                              ; preds = %101
  %120 = load i64, i64* @PAGE_SIZE, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* @PAGE_SIZE, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i64, i64* @PAGE_SIZE, align 8
  %131 = load i64, i64* %7, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %7, align 8
  br label %134

133:                                              ; preds = %119
  store i64 0, i64* %7, align 8
  br label %134

134:                                              ; preds = %133, %129
  br label %98

135:                                              ; preds = %98
  %136 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %137 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  %138 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %139 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %138, i32 0, i32 3
  %140 = call i32 @mutex_unlock(i32* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %113, %86, %51, %43, %32
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @kvirt_to_pa(i64) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
