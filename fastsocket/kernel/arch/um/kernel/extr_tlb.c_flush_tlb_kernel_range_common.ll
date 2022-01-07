; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_flush_tlb_kernel_range_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_flush_tlb_kernel_range_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"munmap failed, errno = %d\0A\00", align 1
@PUD_SIZE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_tlb_kernel_range_common(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %12, align 4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %183, %131, %93, %55, %2
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %187

19:                                               ; preds = %15
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32* @pgd_offset(%struct.mm_struct* %20, i64 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgd_present(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @PGDIR_SIZE, align 4
  %30 = call i64 @ADD_ROUND(i64 %28, i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pgd_newpage(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  %42 = load i64, i64* %10, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @os_unmap_memory(i8* %43, i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %10, align 8
  br label %15

57:                                               ; preds = %19
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32* @pud_offset(i32* %58, i64 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pud_present(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* @PUD_SIZE, align 4
  %68 = call i64 @ADD_ROUND(i64 %66, i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @pud_newpage(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  %80 = load i64, i64* %10, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %82, %83
  %85 = call i32 @os_unmap_memory(i8* %81, i64 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %79
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %10, align 8
  br label %15

95:                                               ; preds = %57
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32* @pmd_offset(i32* %96, i64 %97)
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pmd_present(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %95
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* @PMD_SIZE, align 4
  %106 = call i64 @ADD_ROUND(i64 %104, i32 %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %4, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i64, i64* %4, align 8
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @pmd_newpage(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  %118 = load i64, i64* %10, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @os_unmap_memory(i8* %119, i64 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %117
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i64, i64* %11, align 8
  store i64 %132, i64* %10, align 8
  br label %15

133:                                              ; preds = %95
  %134 = load i32*, i32** %8, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32* @pte_offset_kernel(i32* %134, i64 %135)
  store i32* %136, i32** %9, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @pte_present(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @pte_newpage(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141, %133
  store i32 1, i32* %12, align 4
  %147 = load i64, i64* %10, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load i64, i64* @PAGE_SIZE, align 8
  %150 = call i32 @os_unmap_memory(i8* %148, i64 %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 0, %154
  %156 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %146
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @pte_present(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load i64, i64* %10, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pte_val(i32 %165)
  %167 = load i32, i32* @PAGE_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i64, i64* @PAGE_SIZE, align 8
  %170 = call i32 @map_memory(i64 %163, i32 %168, i64 %169, i32 1, i32 1, i32 1)
  br label %171

171:                                              ; preds = %162, %157
  br label %183

172:                                              ; preds = %141
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @pte_newprot(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  store i32 1, i32* %12, align 4
  %178 = load i64, i64* %10, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = load i64, i64* @PAGE_SIZE, align 8
  %181 = call i32 @os_protect_memory(i8* %179, i64 %180, i32 1, i32 1, i32 1)
  br label %182

182:                                              ; preds = %177, %172
  br label %183

183:                                              ; preds = %182, %171
  %184 = load i64, i64* @PAGE_SIZE, align 8
  %185 = load i64, i64* %10, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %10, align 8
  br label %15

187:                                              ; preds = %15
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i64 @ADD_ROUND(i64, i32) #1

declare dso_local i64 @pgd_newpage(i32) #1

declare dso_local i32 @os_unmap_memory(i8*, i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_newpage(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_newpage(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_newpage(i32) #1

declare dso_local i32 @map_memory(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @pte_newprot(i32) #1

declare dso_local i32 @os_protect_memory(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
