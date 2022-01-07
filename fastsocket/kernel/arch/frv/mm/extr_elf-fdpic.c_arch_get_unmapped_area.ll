; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_elf-fdpic.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_elf-fdpic.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @TASK_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* @ENOMEM, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %6, align 8
  br label %164

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @MAP_FIXED, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %6, align 8
  br label %164

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @PAGE_ALIGN(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_9__* %36, i64 %37)
  store %struct.vm_area_struct* %38, %struct.vm_area_struct** %12, align 8
  %39 = load i64, i64* @TASK_SIZE, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %8, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %30
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %46 = icmp ne %struct.vm_area_struct* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ule i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %44
  br label %162

56:                                               ; preds = %47, %30
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 2097152
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %13, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %57
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %13, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ule i64 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %71
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_9__* %81, i64 %82)
  store %struct.vm_area_struct* %83, %struct.vm_area_struct** %12, align 8
  br label %84

84:                                               ; preds = %105, %78
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %86 = icmp ne %struct.vm_area_struct* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %109

92:                                               ; preds = %87
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ule i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %162

101:                                              ; preds = %92
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 2
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %107, align 8
  store %struct.vm_area_struct* %108, %struct.vm_area_struct** %12, align 8
  br label %84

109:                                              ; preds = %91, %84
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %57
  %112 = call i64 @PAGE_ALIGN(i32 -2147483648)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* @TASK_SIZE, align 8
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %113, %114
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ule i64 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %111
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_9__* %122, i64 %123)
  store %struct.vm_area_struct* %124, %struct.vm_area_struct** %12, align 8
  br label %125

125:                                              ; preds = %146, %119
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %127 = icmp ne %struct.vm_area_struct* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %13, align 8
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %150

133:                                              ; preds = %128
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ule i64 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %162

142:                                              ; preds = %133
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %8, align 8
  br label %146

146:                                              ; preds = %142
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 2
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %148, align 8
  store %struct.vm_area_struct* %149, %struct.vm_area_struct** %12, align 8
  br label %125

150:                                              ; preds = %132, %125
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %152 = icmp ne %struct.vm_area_struct* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %13, align 8
  %156 = icmp ule i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %162

158:                                              ; preds = %153, %150
  br label %159

159:                                              ; preds = %158, %111
  %160 = load i64, i64* @ENOMEM, align 8
  %161 = sub i64 0, %160
  store i64 %161, i64* %6, align 8
  br label %164

162:                                              ; preds = %157, %141, %100, %55
  %163 = load i64, i64* %8, align 8
  store i64 %163, i64* %6, align 8
  br label %164

164:                                              ; preds = %162, %159, %25, %17
  %165 = load i64, i64* %6, align 8
  ret i64 %165
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
