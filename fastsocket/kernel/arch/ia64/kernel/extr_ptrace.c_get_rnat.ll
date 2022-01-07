; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_get_rnat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_get_rnat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i64, i64 }
%struct.pt_regs = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, %struct.switch_stack*, i64*, i64*, i64*)* @get_rnat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rnat(%struct.task_struct* %0, %struct.switch_stack* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.switch_stack*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %27)
  store %struct.pt_regs* %28, %struct.pt_regs** %26, align 8
  %29 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %30 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %19, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %20, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = icmp ult i64* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 -63
  %43 = load i64*, i64** %11, align 8
  %44 = call i64 @ia64_rse_num_regs(i64* %42, i64* %43)
  store i64 %44, i64* %25, align 8
  br label %46

45:                                               ; preds = %5
  store i64 63, i64* %25, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* %25, align 8
  %48 = call i64 @MASK(i64 %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64*, i64** %20, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = call i64 @ia64_rse_num_regs(i64* %49, i64* %51)
  store i64 %52, i64* %24, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %24, align 8
  %55 = call i64* @ia64_rse_skip_regs(i64* %53, i64 %54)
  store i64* %55, i64** %15, align 8
  %56 = load i64*, i64** %15, align 8
  %57 = call i64 @ia64_rse_slot_num(i64* %56)
  store i64 %57, i64* %23, align 8
  %58 = load i64*, i64** %15, align 8
  %59 = call i64* @ia64_rse_rnat_addr(i64* %58)
  store i64* %59, i64** %22, align 8
  %60 = load i64*, i64** %22, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 -64
  store i64* %61, i64** %21, align 8
  %62 = load i64*, i64** %20, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 63
  %64 = load i64*, i64** %10, align 8
  %65 = icmp ugt i64* %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %46
  %67 = load i64*, i64** %20, align 8
  %68 = call i64 @ia64_rse_slot_num(i64* %67)
  %69 = call i64 @MASK(i64 %68)
  %70 = load i64, i64* %17, align 8
  %71 = and i64 %69, %70
  store i64 %71, i64* %16, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = and i64 %74, %75
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %16, align 8
  %78 = xor i64 %77, -1
  %79 = load i64, i64* %17, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %66
  %84 = load i64, i64* %14, align 8
  store i64 %84, i64* %6, align 8
  br label %142

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %46
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %23, align 8
  %89 = shl i64 %87, %88
  store i64 %89, i64* %18, align 8
  %90 = load i64*, i64** %21, align 8
  %91 = load i64*, i64** %19, align 8
  %92 = icmp uge i64* %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %95 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  br label %105

97:                                               ; preds = %86
  %98 = load i64*, i64** %21, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = icmp ugt i64* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64*, i64** %21, align 8
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %18, align 8
  %108 = and i64 %106, %107
  %109 = load i64, i64* %23, align 8
  %110 = lshr i64 %108, %109
  %111 = load i64, i64* %14, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %23, align 8
  %115 = sub i64 63, %114
  %116 = lshr i64 %113, %115
  store i64 %116, i64* %18, align 8
  %117 = load i64*, i64** %22, align 8
  %118 = load i64*, i64** %19, align 8
  %119 = icmp uge i64* %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %122 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %13, align 8
  br label %132

124:                                              ; preds = %105
  %125 = load i64*, i64** %22, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = icmp ugt i64* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i64*, i64** %22, align 8
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %13, align 8
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %18, align 8
  %135 = and i64 %133, %134
  %136 = load i64, i64* %23, align 8
  %137 = sub i64 63, %136
  %138 = shl i64 %135, %137
  %139 = load i64, i64* %14, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %14, align 8
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %132, %83
  %143 = load i64, i64* %6, align 8
  ret i64 %143
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64 @MASK(i64) #1

declare dso_local i64* @ia64_rse_skip_regs(i64*, i64) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
