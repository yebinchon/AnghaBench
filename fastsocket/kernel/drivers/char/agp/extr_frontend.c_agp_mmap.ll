; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.agp_file_private* }
%struct.agp_file_private = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64, i32 }
%struct.agp_client = type { i32 }
%struct.agp_kern_info = type { i32, i64, i64 }

@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lx:%lx\00", align 1
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"client vm_ops=%p\00", align 1
@AGP_FF_IS_CONTROLLER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"controller vm_ops=%p\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @agp_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.agp_client*, align 8
  %10 = alloca %struct.agp_file_private*, align 8
  %11 = alloca %struct.agp_kern_info, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.agp_file_private*, %struct.agp_file_private** %13, align 8
  store %struct.agp_file_private* %14, %struct.agp_file_private** %10, align 8
  %15 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %159

19:                                               ; preds = %2
  %20 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %21 = load %struct.agp_file_private*, %struct.agp_file_private** %10, align 8
  %22 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %159

26:                                               ; preds = %19
  %27 = load i32, i32* @agp_bridge, align 4
  %28 = call i32 @agp_copy_info(i32 %27, %struct.agp_kern_info* %11)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %38, 1048576
  store i32 %39, i32* %7, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %49)
  %51 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %52 = load %struct.agp_file_private*, %struct.agp_file_private** %10, align 8
  %53 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %116

56:                                               ; preds = %26
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %163

65:                                               ; preds = %56
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.agp_client* @agp_find_client_by_pid(i32 %68)
  store %struct.agp_client* %69, %struct.agp_client** %9, align 8
  %70 = load %struct.agp_client*, %struct.agp_client** %9, align 8
  %71 = icmp eq %struct.agp_client* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %159

73:                                               ; preds = %65
  %74 = load %struct.agp_client*, %struct.agp_client** %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @agp_find_seg_in_client(%struct.agp_client* %74, i64 %75, i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %163

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %114

95:                                               ; preds = %83
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %101, %102
  %104 = load i64, i64* @PAGE_SHIFT, align 8
  %105 = lshr i64 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %96, i32 %99, i64 %105, i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %167

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %90
  %115 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  store i32 0, i32* %3, align 4
  br label %171

116:                                              ; preds = %26
  %117 = load i32, i32* @AGP_FF_IS_CONTROLLER, align 4
  %118 = load %struct.agp_file_private*, %struct.agp_file_private** %10, align 8
  %119 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %118, i32 0, i32 0
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %163

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  br label %156

139:                                              ; preds = %127
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %11, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PAGE_SHIFT, align 8
  %147 = lshr i64 %145, %146
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %140, i32 %143, i64 %147, i32 %148, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %139
  br label %167

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %134
  %157 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  store i32 0, i32* %3, align 4
  br label %171

158:                                              ; preds = %116
  br label %159

159:                                              ; preds = %158, %72, %25, %18
  %160 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  %161 = load i32, i32* @EPERM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %171

163:                                              ; preds = %126, %82, %64
  %164 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %171

167:                                              ; preds = %154, %112
  %168 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1))
  %169 = load i32, i32* @EAGAIN, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %163, %159, %156, %114
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @agp_copy_info(i32, %struct.agp_kern_info*) #1

declare dso_local i32 @DBG(i8*, i64, ...) #1

declare dso_local %struct.agp_client* @agp_find_client_by_pid(i32) #1

declare dso_local i32 @agp_find_seg_in_client(%struct.agp_client*, i64, i32, i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
