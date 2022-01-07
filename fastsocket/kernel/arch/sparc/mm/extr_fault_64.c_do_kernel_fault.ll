; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_64.c_do_kernel_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_64.c_do_kernel_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i64 }
%struct.exception_table_entry = type { i32 }

@ASI_P = common dso_local global i8 0, align 1
@TSTATE_PRIV = common dso_local global i32 0, align 4
@FAULT_CODE_WRITE = common dso_local global i32 0, align 4
@FAULT_CODE_ITLB = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32, i32, i64)* @do_kernel_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_kernel_fault(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i8, i8* @ASI_P, align 1
  store i8 %13, i8* %11, align 1
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TSTATE_PRIV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %104

24:                                               ; preds = %16, %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FAULT_CODE_WRITE, align 4
  %27 = load i32, i32* @FAULT_CODE_ITLB, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, -1065353216
  %34 = icmp eq i32 %33, -1065353216
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 8192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %11, align 1
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = lshr i32 %46, 5
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %11, align 1
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 242
  %53 = icmp eq i32 %52, 130
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 16777216
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %61 = call i32 @handle_ldf_stq(i32 %59, %struct.pt_regs* %60)
  br label %66

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %65 = call i32 @handle_ld_nf(i32 %63, %struct.pt_regs* %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %109

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %31, %24
  %69 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TSTATE_PRIV, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.exception_table_entry* @search_exception_tables(i32 %78)
  store %struct.exception_table_entry* %79, %struct.exception_table_entry** %12, align 8
  %80 = load %struct.exception_table_entry*, %struct.exception_table_entry** %12, align 8
  %81 = icmp ne %struct.exception_table_entry* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load %struct.exception_table_entry*, %struct.exception_table_entry** %12, align 8
  %84 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %109

95:                                               ; preds = %75
  br label %103

96:                                               ; preds = %68
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @SIGSEGV, align 4
  %99 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @do_fault_siginfo(i32 %97, i32 %98, %struct.pt_regs* %99, i32 %100, i32 %101)
  br label %109

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* @current, align 4
  %107 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %108 = call i32 @unhandled_fault(i64 %105, i32 %106, %struct.pt_regs* %107)
  br label %109

109:                                              ; preds = %104, %96, %82, %66
  ret void
}

declare dso_local i32 @handle_ldf_stq(i32, %struct.pt_regs*) #1

declare dso_local i32 @handle_ld_nf(i32, %struct.pt_regs*) #1

declare dso_local %struct.exception_table_entry* @search_exception_tables(i32) #1

declare dso_local i32 @do_fault_siginfo(i32, i32, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @unhandled_fault(i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
