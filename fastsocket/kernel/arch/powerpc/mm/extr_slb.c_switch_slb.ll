; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_switch_slb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_switch_slb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i64* }

@CPU_FTR_NO_SLBIE_B = common dso_local global i32 0, align 4
@SLB_CACHE_ENTRIES = common dso_local global i64 0, align 8
@SID_SHIFT = common dso_local global i64 0, align 8
@SLBIE_SSIZE_SHIFT = common dso_local global i64 0, align 8
@SLBIE_C = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_slb(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call i64 @KSTK_EIP(%struct.task_struct* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call i64 @KSTK_ESP(%struct.task_struct* %13)
  store i64 %14, i64* %8, align 8
  %15 = call i32 (...) @hard_irq_disable()
  %16 = call %struct.TYPE_2__* (...) @get_paca()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* @CPU_FTR_NO_SLBIE_B, align 4
  %20 = call i32 @cpu_has_feature(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @SLB_CACHE_ENTRIES, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = call %struct.TYPE_2__* (...) @get_paca()
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SID_SHIFT, align 8
  %41 = shl i64 %39, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @user_segment_size(i64 %42)
  %44 = load i64, i64* @SLBIE_SSIZE_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* @SLBIE_C, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  call void asm sideeffect "slbie $0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %51) #2, !srcloc !3
  br label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %27

55:                                               ; preds = %27
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  br label %58

56:                                               ; preds = %22, %2
  %57 = call i32 (...) @__slb_flush_and_rebolt()
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @SLB_CACHE_ENTRIES, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58
  %66 = load i64, i64* %6, align 8
  call void asm sideeffect "slbie $0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %66) #2, !srcloc !5
  br label %67

67:                                               ; preds = %65, %61
  %68 = call %struct.TYPE_2__* (...) @get_paca()
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %71 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_2__* (...) @get_paca()
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i64 268435456, i64* %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @is_kernel_addr(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %67
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @is_kernel_addr(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @is_kernel_addr(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78, %67
  br label %110

87:                                               ; preds = %82
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @slb_allocate(i64 %88)
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @esids_match(i64 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @slb_allocate(i64 %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @esids_match(i64 %98, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @esids_match(i64 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @slb_allocate(i64 %108)
  br label %110

110:                                              ; preds = %86, %107, %102, %97
  ret void
}

declare dso_local i64 @KSTK_EIP(%struct.task_struct*) #1

declare dso_local i64 @KSTK_ESP(%struct.task_struct*) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local %struct.TYPE_2__* @get_paca(...) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @user_segment_size(i64) #1

declare dso_local i32 @__slb_flush_and_rebolt(...) #1

declare dso_local i64 @is_kernel_addr(i64) #1

declare dso_local i32 @slb_allocate(i64) #1

declare dso_local i32 @esids_match(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1261}
!3 = !{i32 1508}
!4 = !{i32 1561}
!5 = !{i32 1692}
