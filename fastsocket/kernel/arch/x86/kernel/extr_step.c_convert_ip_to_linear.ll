; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_convert_ip_to_linear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_step.c_convert_ip_to_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.desc_struct* }
%struct.desc_struct = type { i32 }
%struct.pt_regs = type { i64, i32 }

@SEGMENT_TI_MASK = common dso_local global i64 0, align 8
@SEGMENT_LDT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_ip_to_linear(%struct.task_struct* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.desc_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 65535
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = call i64 @v8086_mode(%struct.pt_regs* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 65535
  %24 = load i64, i64* %7, align 8
  %25 = shl i64 %24, 4
  %26 = add i64 %23, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %87

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @SEGMENT_TI_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @SEGMENT_LDT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, -8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = lshr i64 %43, 3
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %44, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i64 -1, i64* %6, align 8
  br label %78

56:                                               ; preds = %34
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load %struct.desc_struct*, %struct.desc_struct** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %62, i64 %63
  store %struct.desc_struct* %64, %struct.desc_struct** %8, align 8
  %65 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %66 = call i64 @get_desc_base(%struct.desc_struct* %65)
  store i64 %66, i64* %9, align 8
  %67 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %68 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %72, 65535
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %74, %55
  %79 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %78, %28
  %86 = load i64, i64* %6, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %85, %21
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_desc_base(%struct.desc_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
