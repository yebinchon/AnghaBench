; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_compute_next_pc_for_16bit_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_compute_next_pc_for_16bit_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PT_BPC = common dso_local global i32 0, align 4
@reg_offset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, %struct.task_struct*)* @compute_next_pc_for_16bit_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_next_pc_for_16bit_insn(i64 %0, i64 %1, i64* %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, 32768
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 32767
  store i64 %25, i64* %5, align 8
  br label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = lshr i64 %27, 16
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 12
  %32 = and i64 %31, 15
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 8
  %35 = and i64 %34, 15
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 4
  %38 = and i64 %37, 15
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 7
  br i1 %40, label %41, label %81

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  switch i64 %42, label %80 [
    i64 13, label %43
    i64 9, label %43
    i64 8, label %57
    i64 12, label %57
    i64 14, label %71
    i64 15, label %71
  ]

43:                                               ; preds = %41, %41
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = call i32 @check_condition_bit(%struct.task_struct* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = shl i64 %48, 24
  %50 = ashr i64 %49, 22
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %6, align 8
  %52 = and i64 %51, -4
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %52, %53
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  br label %163

56:                                               ; preds = %43
  br label %80

57:                                               ; preds = %41, %41
  %58 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %59 = call i32 @check_condition_bit(%struct.task_struct* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = shl i64 %62, 24
  %64 = ashr i64 %63, 22
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %6, align 8
  %66 = and i64 %65, -4
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %163

70:                                               ; preds = %57
  br label %80

71:                                               ; preds = %41, %41
  %72 = load i64, i64* %5, align 8
  %73 = shl i64 %72, 24
  %74 = ashr i64 %73, 22
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %6, align 8
  %76 = and i64 %75, -4
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %76, %77
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  br label %163

80:                                               ; preds = %41, %70, %56
  br label %152

81:                                               ; preds = %29
  %82 = load i64, i64* %9, align 8
  %83 = icmp eq i64 %82, 1
  br i1 %83, label %84, label %151

84:                                               ; preds = %81
  %85 = load i64, i64* %10, align 8
  switch i64 %85, label %150 [
    i64 0, label %86
    i64 12, label %100
    i64 13, label %118
    i64 14, label %136
    i64 15, label %136
  ]

86:                                               ; preds = %84
  %87 = load i64, i64* %11, align 8
  %88 = icmp eq i64 %87, 15
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %99

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 13
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %95 = load i32, i32* @PT_BPC, align 4
  %96 = call i64 @get_stack_long(%struct.task_struct* %94, i32 %95)
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  br label %163

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %89
  br label %150

100:                                              ; preds = %84
  %101 = load i64, i64* %11, align 8
  %102 = icmp eq i64 %101, 12
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %105 = call i32 @check_condition_bit(%struct.task_struct* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i64, i64* %5, align 8
  %109 = and i64 %108, 15
  store i64 %109, i64* %13, align 8
  %110 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %111 = load i32*, i32** @reg_offset, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @get_stack_long(%struct.task_struct* %110, i32 %114)
  %116 = load i64*, i64** %7, align 8
  store i64 %115, i64* %116, align 8
  br label %163

117:                                              ; preds = %103, %100
  br label %150

118:                                              ; preds = %84
  %119 = load i64, i64* %11, align 8
  %120 = icmp eq i64 %119, 12
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %123 = call i32 @check_condition_bit(%struct.task_struct* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %5, align 8
  %127 = and i64 %126, 15
  store i64 %127, i64* %13, align 8
  %128 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %129 = load i32*, i32** @reg_offset, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @get_stack_long(%struct.task_struct* %128, i32 %132)
  %134 = load i64*, i64** %7, align 8
  store i64 %133, i64* %134, align 8
  br label %163

135:                                              ; preds = %121, %118
  br label %150

136:                                              ; preds = %84, %84
  %137 = load i64, i64* %11, align 8
  %138 = icmp eq i64 %137, 12
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i64, i64* %5, align 8
  %141 = and i64 %140, 15
  store i64 %141, i64* %13, align 8
  %142 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %143 = load i32*, i32** @reg_offset, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @get_stack_long(%struct.task_struct* %142, i32 %146)
  %148 = load i64*, i64** %7, align 8
  store i64 %147, i64* %148, align 8
  br label %163

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %84, %149, %135, %117, %99
  br label %151

151:                                              ; preds = %150, %81
  br label %152

152:                                              ; preds = %151, %80
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, 4
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  br label %163

159:                                              ; preds = %152
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, 2
  %162 = load i64*, i64** %7, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %47, %61, %71, %93, %107, %125, %139, %159, %155
  ret void
}

declare dso_local i32 @check_condition_bit(%struct.task_struct*) #1

declare dso_local i64 @get_stack_long(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
