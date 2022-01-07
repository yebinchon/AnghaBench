; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_fault.c_do_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_fault.c_do_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@VM_FAULT_BADCONTEXT = common dso_local global i32 0, align 4
@__FAIL_ADDR_MASK = common dso_local global i64 0, align 8
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@VM_FAULT_BADMAP = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_FAULT_BADACCESS = common dso_local global i32 0, align 4
@HPAGE_MASK = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MAJ = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MIN = common dso_local global i32 0, align 4
@TIF_SINGLE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i64)* @do_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exception(%struct.pt_regs* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = call i64 @notify_page_fault(%struct.pt_regs* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %155

17:                                               ; preds = %3
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %8, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 2
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %9, align 8
  %22 = load i32, i32* @VM_FAULT_BADCONTEXT, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @user_space_fault(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = call i64 (...) @in_atomic()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %31 = icmp ne %struct.mm_struct* %30, null
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %26, %17
  %34 = phi i1 [ true, %26 ], [ true, %17 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %153

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @__FAIL_ADDR_MASK, align 8
  %42 = and i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = call i32 (...) @local_irq_enable()
  %44 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @perf_sw_event(i32 %44, i32 1, %struct.pt_regs* %45, i64 %46)
  %48 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = call i32 @down_read(i32* %49)
  %51 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %52, i64 %53)
  store %struct.vm_area_struct* %54, %struct.vm_area_struct** %10, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %56 = icmp ne %struct.vm_area_struct* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  br label %149

58:                                               ; preds = %39
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ugt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %58
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VM_GROWSDOWN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %149

75:                                               ; preds = %67
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @expand_stack(%struct.vm_area_struct* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %149

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  store i32 %83, i32* %12, align 4
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %149

95:                                               ; preds = %82
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %97 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i64, i64* @HPAGE_MASK, align 8
  %101 = load i64, i64* %11, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %11, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @VM_WRITE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %113

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = call i32 @handle_mm_fault(%struct.mm_struct* %104, %struct.vm_area_struct* %105, i64 %106, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @VM_FAULT_ERROR, align 4
  %118 = and i32 %116, %117
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %149

122:                                              ; preds = %113
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MAJ, align 4
  %133 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @perf_sw_event(i32 %132, i32 1, %struct.pt_regs* %133, i64 %134)
  br label %145

136:                                              ; preds = %122
  %137 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %138 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MIN, align 4
  %142 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @perf_sw_event(i32 %141, i32 1, %struct.pt_regs* %142, i64 %143)
  br label %145

145:                                              ; preds = %136, %127
  %146 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %147 = load i32, i32* @TIF_SINGLE_STEP, align 4
  %148 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %146, i32 %147)
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %121, %94, %80, %74, %57
  %150 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 0
  %152 = call i32 @up_read(i32* %151)
  br label %153

153:                                              ; preds = %149, %38
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %16
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @notify_page_fault(%struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @user_space_fault(i64) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
