; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_context_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_stacktrace.c_save_context_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i64*, i64, i64, i32 }
%struct.stack_frame = type { i64*, i64 }
%struct.pt_regs = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stack_trace*, i64, i64, i64, i32)* @save_context_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @save_context_stack(%struct.stack_trace* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.stack_trace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stack_frame*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca i64, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  br label %15

15:                                               ; preds = %5, %152
  %16 = load i64, i64* @PSW_ADDR_INSN, align 8
  %17 = load i64, i64* %8, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %15
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %6, align 8
  br label %159

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to %struct.stack_frame*
  store %struct.stack_frame* %30, %struct.stack_frame** %12, align 8
  br label %31

31:                                               ; preds = %28, %89
  %32 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %33 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PSW_ADDR_INSN, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %14, align 8
  %39 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %40 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %31
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %46 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %49 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %44, i64* %52, align 8
  br label %58

53:                                               ; preds = %31
  %54 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %55 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %60 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %63 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %6, align 8
  br label %159

68:                                               ; preds = %58
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %9, align 8
  %70 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %71 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PSW_ADDR_INSN, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %92

78:                                               ; preds = %68
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 %84, 16
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %78
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %6, align 8
  br label %159

89:                                               ; preds = %82
  %90 = load i64, i64* %8, align 8
  %91 = inttoptr i64 %90 to %struct.stack_frame*
  store %struct.stack_frame* %91, %struct.stack_frame** %12, align 8
  br label %31

92:                                               ; preds = %77
  %93 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %94 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %93, i64 1
  %95 = ptrtoint %struct.stack_frame* %94 to i64
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = sub i64 %101, 16
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %92
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %6, align 8
  br label %159

106:                                              ; preds = %99
  %107 = load i64, i64* %8, align 8
  %108 = inttoptr i64 %107 to %struct.pt_regs*
  store %struct.pt_regs* %108, %struct.pt_regs** %13, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PSW_ADDR_INSN, align 8
  %114 = and i64 %112, %113
  store i64 %114, i64* %14, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @in_sched_functions(i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %123 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %129 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %132 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds i64, i64* %130, i64 %133
  store i64 %127, i64* %135, align 8
  br label %141

136:                                              ; preds = %121
  %137 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %138 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136, %126
  br label %142

142:                                              ; preds = %141, %117
  %143 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %144 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.stack_trace*, %struct.stack_trace** %7, align 8
  %147 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i64, i64* %8, align 8
  store i64 %151, i64* %6, align 8
  br label %159

152:                                              ; preds = %142
  %153 = load i64, i64* %8, align 8
  store i64 %153, i64* %9, align 8
  %154 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %155 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 15
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %8, align 8
  br label %15

159:                                              ; preds = %150, %104, %87, %66, %26
  %160 = load i64, i64* %6, align 8
  ret i64 %160
}

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
