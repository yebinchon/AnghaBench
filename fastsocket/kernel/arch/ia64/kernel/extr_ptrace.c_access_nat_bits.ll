; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_access_nat_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_access_nat_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.unw_frame_info = type { i32 }

@UNW_AR_UNAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ptrace: failed to set ar.unat\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace: failed to read ar.unat\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.pt_regs*, %struct.unw_frame_info*, i64*, i32)* @access_nat_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_nat_bits(%struct.task_struct* %0, %struct.pt_regs* %1, %struct.unw_frame_info* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.unw_frame_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %8, align 8
  store %struct.unw_frame_info* %2, %struct.unw_frame_info** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %15, align 8
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %5
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call i64 @ia64_put_scratch_nat_bits(%struct.pt_regs* %22, i64 %23)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.unw_frame_info*, %struct.unw_frame_info** %9, align 8
  %26 = load i32, i32* @UNW_AR_UNAT, align 4
  %27 = load i64, i64* %14, align 8
  %28 = call i64 @unw_set_ar(%struct.unw_frame_info* %25, i32 %26, i64 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %87

32:                                               ; preds = %19
  store i64 4, i64* %12, align 8
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i64, i64* %12, align 8
  %35 = icmp ule i64 %34, 7
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.unw_frame_info*, %struct.unw_frame_info** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @unw_get_gr(%struct.unw_frame_info* %37, i64 %38, i64* %15, i8* %16)
  %40 = load %struct.unw_frame_info*, %struct.unw_frame_info** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = lshr i64 %43, %44
  %46 = and i64 %45, 1
  %47 = call i32 @unw_set_gr(%struct.unw_frame_info* %40, i64 %41, i64 %42, i64 %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %33

51:                                               ; preds = %33
  br label %86

52:                                               ; preds = %5
  %53 = load %struct.unw_frame_info*, %struct.unw_frame_info** %9, align 8
  %54 = load i32, i32* @UNW_AR_UNAT, align 4
  %55 = call i64 @unw_get_ar(%struct.unw_frame_info* %53, i32 %54, i64* %14)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %87

59:                                               ; preds = %52
  %60 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @ia64_get_scratch_nat_bits(%struct.pt_regs* %60, i64 %61)
  store i64 %62, i64* %13, align 8
  store i64 4, i64* %12, align 8
  br label %63

63:                                               ; preds = %80, %59
  %64 = load i64, i64* %12, align 8
  %65 = icmp ule i64 %64, 7
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.unw_frame_info*, %struct.unw_frame_info** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @unw_get_gr(%struct.unw_frame_info* %67, i64 %68, i64* %15, i8* %16)
  %70 = load i8, i8* %16, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %12, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %13, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %66
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %63

83:                                               ; preds = %63
  %84 = load i64, i64* %13, align 8
  %85 = load i64*, i64** %10, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %51
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %57, %30
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @ia64_put_scratch_nat_bits(%struct.pt_regs*, i64) #1

declare dso_local i64 @unw_set_ar(%struct.unw_frame_info*, i32, i64) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @unw_get_gr(%struct.unw_frame_info*, i64, i64*, i8*) #1

declare dso_local i32 @unw_set_gr(%struct.unw_frame_info*, i64, i64, i64) #1

declare dso_local i64 @unw_get_ar(%struct.unw_frame_info*, i32, i64*) #1

declare dso_local i64 @ia64_get_scratch_nat_bits(%struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
