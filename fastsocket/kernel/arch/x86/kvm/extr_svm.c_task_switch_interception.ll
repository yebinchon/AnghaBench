; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_task_switch_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_task_switch_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64 }

@SVM_EXITINTINFO_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_EVTINJ_VEC_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_REASON_IRET = common dso_local global i64 0, align 8
@TASK_SWITCH_IRET = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_REASON_JMP = common dso_local global i64 0, align 8
@TASK_SWITCH_JMP = common dso_local global i32 0, align 4
@TASK_SWITCH_GATE = common dso_local global i32 0, align 4
@TASK_SWITCH_CALL = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_HAS_ERROR_CODE = common dso_local global i64 0, align 8
@SVM_EXITINTINFO_TYPE_SOFT = common dso_local global i32 0, align 4
@OF_VECTOR = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @task_switch_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_switch_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SVM_EVTINJ_VEC_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %36 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SVM_EXITINTINFO_VALID, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %50 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SVM_EXITINFOSHIFT_TS_REASON_IRET, align 8
  %56 = shl i64 1, %55
  %57 = and i64 %54, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %1
  %60 = load i32, i32* @TASK_SWITCH_IRET, align 4
  store i32 %60, i32* %4, align 4
  br label %83

61:                                               ; preds = %1
  %62 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %63 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVM_EXITINFOSHIFT_TS_REASON_JMP, align 8
  %69 = shl i64 1, %68
  %70 = and i64 %67, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @TASK_SWITCH_JMP, align 4
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @TASK_SWITCH_GATE, align 4
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @TASK_SWITCH_CALL, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  switch i32 %88, label %121 [
    i32 128, label %89
    i32 130, label %94
    i32 129, label %117
  ]

89:                                               ; preds = %87
  %90 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %91 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %122

94:                                               ; preds = %87
  %95 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %96 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SVM_EXITINFOSHIFT_TS_HAS_ERROR_CODE, align 8
  %102 = shl i64 1, %101
  %103 = and i64 %100, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  store i32 1, i32* %9, align 4
  %106 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %107 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %105, %94
  %114 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %115 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %114, i32 0, i32 0
  %116 = call i32 @kvm_clear_exception_queue(%struct.TYPE_11__* %115)
  br label %122

117:                                              ; preds = %87
  %118 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %119 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %118, i32 0, i32 0
  %120 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_11__* %119)
  br label %122

121:                                              ; preds = %87
  br label %122

122:                                              ; preds = %121, %117, %113, %89
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %142, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @SVM_EXITINTINFO_TYPE_SOFT, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @OF_VECTOR, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @BP_VECTOR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138, %134, %127, %123
  %143 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %144 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %143, i32 0, i32 0
  %145 = call i32 @skip_emulated_instruction(%struct.TYPE_11__* %144)
  br label %146

146:                                              ; preds = %142, %138, %131
  %147 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %148 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %147, i32 0, i32 0
  %149 = load i64, i64* %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @kvm_task_switch(%struct.TYPE_11__* %148, i64 %149, i32 %150, i32 %151, i32 %152)
  ret i32 %153
}

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_11__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_11__*) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_11__*) #1

declare dso_local i32 @kvm_task_switch(%struct.TYPE_11__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
