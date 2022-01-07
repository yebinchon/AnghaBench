; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@VA_EXCLUDE_START = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@VA_EXCLUDE_END = common dso_local global i64 0, align 8

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
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %12, align 8
  %20 = load i64, i64* @TASK_SIZE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @MAP_FIXED, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %5
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAP_SHARED, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = sub i64 %31, %34
  %36 = load i32, i32* @SHMLBA, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %6, align 8
  br label %234

44:                                               ; preds = %30, %25
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %6, align 8
  br label %234

46:                                               ; preds = %5
  %47 = load i32, i32* @TIF_32BIT, align 4
  %48 = call i64 @test_thread_flag(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @STACK_TOP32, align 8
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @VA_EXCLUDE_START, align 8
  %59 = icmp uge i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ true, %52 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @ENOMEM, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %6, align 8
  br label %234

68:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  %69 = load %struct.file*, %struct.file** %7, align 8
  %70 = icmp ne %struct.file* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @MAP_SHARED, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %68
  store i32 1, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @COLOUR_ALIGN(i64 %84, i64 %85)
  store i64 %86, i64* %8, align 8
  br label %90

87:                                               ; preds = %80
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @PAGE_ALIGN(i64 %88)
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %91, i64 %92)
  store %struct.vm_area_struct* %93, %struct.vm_area_struct** %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %94, %95
  %97 = load i64, i64* %8, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %90
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %101 = icmp ne %struct.vm_area_struct* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %103, %104
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ule i64 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102, %99
  %111 = load i64, i64* %8, align 8
  store i64 %111, i64* %6, align 8
  br label %234

112:                                              ; preds = %102, %90
  br label %113

113:                                              ; preds = %112, %77
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %116 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %121 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %8, align 8
  store i64 %122, i64* %15, align 8
  br label %127

123:                                              ; preds = %113
  %124 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %124, i64* %8, align 8
  store i64 %124, i64* %15, align 8
  %125 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %126 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %14, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %171, %127
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i64 @COLOUR_ALIGN(i64 %135, i64 %136)
  store i64 %137, i64* %8, align 8
  br label %141

138:                                              ; preds = %131
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @PAGE_ALIGN(i64 %139)
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %138, %134
  %142 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %142, i64 %143)
  store %struct.vm_area_struct* %144, %struct.vm_area_struct** %13, align 8
  br label %145

145:                                              ; preds = %230, %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @VA_EXCLUDE_START, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %150, %151
  %153 = load i64, i64* @VA_EXCLUDE_START, align 8
  %154 = icmp uge i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i64, i64* @VA_EXCLUDE_END, align 8
  store i64 %156, i64* %8, align 8
  %157 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %158 = load i64, i64* @VA_EXCLUDE_END, align 8
  %159 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %157, i64 %158)
  store %struct.vm_area_struct* %159, %struct.vm_area_struct** %13, align 8
  br label %160

160:                                              ; preds = %155, %149, %145
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp ult i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %160
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %172, i64* %8, align 8
  store i64 %172, i64* %15, align 8
  %173 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %174 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %131

175:                                              ; preds = %167
  %176 = load i64, i64* @ENOMEM, align 8
  %177 = sub i64 0, %176
  store i64 %177, i64* %6, align 8
  br label %234

178:                                              ; preds = %160
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %180 = icmp ne %struct.vm_area_struct* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %182, %183
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ule i64 %184, %187
  br label %189

189:                                              ; preds = %181, %178
  %190 = phi i1 [ true, %178 ], [ %188, %181 ]
  %191 = zext i1 %190 to i32
  %192 = call i64 @likely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %195, %196
  %198 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %199 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* %8, align 8
  store i64 %200, i64* %6, align 8
  br label %234

201:                                              ; preds = %189
  %202 = load i64, i64* %8, align 8
  %203 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %204 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %202, %205
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %208 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ult i64 %206, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %201
  %212 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %213 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = sub i64 %214, %215
  %217 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %218 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %211, %201
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %221 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %8, align 8
  %223 = load i32, i32* %16, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load i64, i64* %8, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i64 @COLOUR_ALIGN(i64 %226, i64 %227)
  store i64 %228, i64* %8, align 8
  br label %229

229:                                              ; preds = %225, %219
  br label %230

230:                                              ; preds = %229
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %232 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %231, i32 0, i32 2
  %233 = load %struct.vm_area_struct*, %struct.vm_area_struct** %232, align 8
  store %struct.vm_area_struct* %233, %struct.vm_area_struct** %13, align 8
  br label %145

234:                                              ; preds = %194, %175, %110, %65, %44, %41
  %235 = load i64, i64* %6, align 8
  ret i64 %235
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @COLOUR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
