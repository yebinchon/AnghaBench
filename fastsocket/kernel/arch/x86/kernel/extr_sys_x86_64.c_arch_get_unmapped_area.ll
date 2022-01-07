; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@sysctl_unmap_area_factor = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@MAP_32BIT = common dso_local global i64 0, align 8
@TIF_IA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %12, align 8
  %21 = load i32, i32* @sysctl_unmap_area_factor, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @MAP_FIXED, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %6, align 8
  br label %187

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @find_start_end(i64 %29, i64* %15, i64* %16)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @ENOMEM, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %187

37:                                               ; preds = %28
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @PAGE_ALIGN(i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %43, i64 %44)
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %13, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %40
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %53 = icmp ne %struct.vm_area_struct* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54, %51
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @mmap_min_addr, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %6, align 8
  br label %187

68:                                               ; preds = %62, %54, %40
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @MAP_32BIT, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @TIF_IA32, align 4
  %76 = call i64 @test_thread_flag(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ule i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %81, %78
  %91 = load i64, i64* %15, align 8
  %92 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %93 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %74
  %95 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %96 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i64, i64* %15, align 8
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %101, %94
  %104 = load i64, i64* %8, align 8
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %133, %103
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.file*, %struct.file** %7, align 8
  %108 = call i64 @align_addr(i64 %106, %struct.file* %107, i32 0)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %109, i64 %110)
  store %struct.vm_area_struct* %111, %struct.vm_area_struct** %13, align 8
  br label %112

112:                                              ; preds = %183, %105
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %113, %114
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %112
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i64, i64* %15, align 8
  store i64 %123, i64* %8, align 8
  store i64 %123, i64* %14, align 8
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @likely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %132 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %122
  br label %105

134:                                              ; preds = %118
  %135 = load i64, i64* @ENOMEM, align 8
  %136 = sub i64 0, %135
  store i64 %136, i64* %6, align 8
  br label %187

137:                                              ; preds = %112
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %139 = icmp ne %struct.vm_area_struct* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %141, %142
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ule i64 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %140, %137
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %149, %150
  %152 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %153 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %8, align 8
  store i64 %154, i64* %6, align 8
  br label %187

155:                                              ; preds = %140
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %155
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %161 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ult i64 %163, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %158
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %170 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = sub i64 %171, %172
  %174 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %175 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %168, %158, %155
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %8, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load %struct.file*, %struct.file** %7, align 8
  %182 = call i64 @align_addr(i64 %180, %struct.file* %181, i32 0)
  store i64 %182, i64* %8, align 8
  br label %183

183:                                              ; preds = %176
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %185 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %184, i32 0, i32 2
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %185, align 8
  store %struct.vm_area_struct* %186, %struct.vm_area_struct** %13, align 8
  br label %112

187:                                              ; preds = %148, %134, %66, %34, %26
  %188 = load i64, i64* %6, align 8
  ret i64 %188
}

declare dso_local i32 @find_start_end(i64, i64*, i64*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @align_addr(i64, %struct.file*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
