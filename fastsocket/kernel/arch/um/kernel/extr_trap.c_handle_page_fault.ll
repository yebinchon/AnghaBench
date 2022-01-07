; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_trap.c_handle_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_trap.c_handle_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_page_fault(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %12, align 8
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* @SEGV_MAPERR, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = call i64 (...) @in_atomic()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %177

30:                                               ; preds = %5
  %31 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 0
  %33 = call i32 @down_read(i32* %32)
  %34 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %34, i64 %35)
  store %struct.vm_area_struct* %36, %struct.vm_area_struct** %13, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %38 = icmp ne %struct.vm_area_struct* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %173

40:                                               ; preds = %30
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %74

47:                                               ; preds = %40
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VM_GROWSDOWN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %173

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @ARCH_IS_STACKGROW(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %173

63:                                               ; preds = %58, %55
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @expand_stack(%struct.vm_area_struct* %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %173

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* @SEGV_ACCERR, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VM_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %173

87:                                               ; preds = %79, %74
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VM_READ, align 4
  %95 = load i32, i32* @VM_EXEC, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %173

100:                                              ; preds = %90, %87
  br label %101

101:                                              ; preds = %163, %100
  %102 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = call i32 @handle_mm_fault(%struct.mm_struct* %102, %struct.vm_area_struct* %103, i64 %104, i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @VM_FAULT_ERROR, align 4
  %115 = and i32 %113, %114
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %110
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @VM_FAULT_OOM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %179

124:                                              ; preds = %118
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EACCES, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %18, align 4
  br label %173

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = call i32 (...) @BUG()
  br label %135

135:                                              ; preds = %133, %110
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %150

145:                                              ; preds = %135
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i32* @pgd_offset(%struct.mm_struct* %151, i64 %152)
  store i32* %153, i32** %14, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = load i64, i64* %7, align 8
  %156 = call i32* @pud_offset(i32* %154, i64 %155)
  store i32* %156, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32* @pmd_offset(i32* %157, i64 %158)
  store i32* %159, i32** %16, align 8
  %160 = load i32*, i32** %16, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32* @pte_offset_kernel(i32* %160, i64 %161)
  store i32* %162, i32** %17, align 8
  br label %163

163:                                              ; preds = %150
  %164 = load i32*, i32** %17, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pte_present(i32 %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %101, label %169

169:                                              ; preds = %163
  store i32 0, i32* %18, align 4
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @flush_tlb_page(%struct.vm_area_struct* %170, i64 %171)
  br label %173

173:                                              ; preds = %169, %129, %99, %86, %68, %62, %54, %39
  %174 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %175 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %174, i32 0, i32 0
  %176 = call i32 @up_read(i32* %175)
  br label %177

177:                                              ; preds = %173, %29
  %178 = load i32, i32* %18, align 4
  store i32 %178, i32* %6, align 4
  br label %184

179:                                              ; preds = %123
  %180 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %181 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %180, i32 0, i32 0
  %182 = call i32 @up_read(i32* %181)
  %183 = call i32 (...) @pagefault_out_of_memory()
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %179, %177
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @ARCH_IS_STACKGROW(i64) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pagefault_out_of_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
