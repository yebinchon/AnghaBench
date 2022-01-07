; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vm_area_struct = type { %struct.mm_struct* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@purge = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %20 = icmp ne %struct.mm_struct* %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %76

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 4095
  %27 = call i64 @ia64_fls(i64 %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %43, %24
  %29 = load i64, i64* %9, align 8
  %30 = shl i64 1, %29
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @purge, i32 0, i32 0), align 8
  %32 = and i64 %30, %31
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @purge, i32 0, i32 1), align 8
  %40 = icmp ult i64 %38, %39
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i1 [ false, %28 ], [ %40, %37 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %28

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @purge, i32 0, i32 1), align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @purge, i32 0, i32 1), align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, i64* %9, align 8
  %54 = shl i64 1, %53
  %55 = sub i64 %54, 1
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %5, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = call i32 (...) @preempt_disable()
  br label %60

60:                                               ; preds = %69, %52
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = shl i64 %62, 2
  %64 = call i32 @ia64_ptcl(i64 %61, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = shl i64 1, %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %60, label %73

73:                                               ; preds = %69
  %74 = call i32 (...) @preempt_enable()
  %75 = call i32 (...) @ia64_srlz_i()
  br label %76

76:                                               ; preds = %73, %21
  ret void
}

declare dso_local i64 @ia64_fls(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @ia64_ptcl(i64, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @ia64_srlz_i(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
