; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_cr_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_cr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@SVM_FEATURE_DECODE_ASSIST = common dso_local global i32 0, align 4
@CR_VALID = common dso_local global i32 0, align 4
@SVM_EXITINFO_REG_MASK = common dso_local global i32 0, align 4
@SVM_EXIT_READ_CR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unhandled write to CR%d\00", align 1
@UD_VECTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unhandled read from CR%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @cr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %8 = load i32, i32* @SVM_FEATURE_DECODE_ASSIST, align 4
  %9 = call i32 @svm_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = call i32 @emulate_on_interception(%struct.vcpu_svm* %12)
  store i32 %13, i32* %2, align 4
  br label %140

14:                                               ; preds = %1
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CR_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = call i32 @emulate_on_interception(%struct.vcpu_svm* %28)
  store i32 %29, i32* %2, align 4
  br label %140

30:                                               ; preds = %14
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SVM_EXITINFO_REG_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SVM_EXIT_READ_CR0, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 16
  br i1 %48, label %49, label %85

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 16
  store i32 %51, i32* %5, align 4
  %52 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %53 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %52, i32 0, i32 0
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @kvm_register_read(%struct.TYPE_17__* %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %77 [
    i32 0, label %57
    i32 3, label %62
    i32 4, label %67
    i32 8, label %72
  ]

57:                                               ; preds = %49
  %58 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @kvm_set_cr0(%struct.TYPE_17__* %59, i64 %60)
  store i32 %61, i32* %7, align 4
  br label %84

62:                                               ; preds = %49
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @kvm_set_cr3(%struct.TYPE_17__* %64, i64 %65)
  store i32 %66, i32* %7, align 4
  br label %84

67:                                               ; preds = %49
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %69 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @kvm_set_cr4(%struct.TYPE_17__* %69, i64 %70)
  store i32 %71, i32* %7, align 4
  br label %84

72:                                               ; preds = %49
  %73 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %74 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %73, i32 0, i32 0
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @kvm_set_cr8(%struct.TYPE_17__* %74, i64 %75)
  store i32 %76, i32* %7, align 4
  br label %84

77:                                               ; preds = %49
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %81 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %80, i32 0, i32 0
  %82 = load i32, i32* @UD_VECTOR, align 4
  %83 = call i32 @kvm_queue_exception(%struct.TYPE_17__* %81, i32 %82)
  store i32 1, i32* %2, align 4
  br label %140

84:                                               ; preds = %72, %67, %62, %57
  br label %128

85:                                               ; preds = %30
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %115 [
    i32 0, label %87
    i32 2, label %93
    i32 3, label %99
    i32 4, label %105
    i32 8, label %111
  ]

87:                                               ; preds = %85
  %88 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %89 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %6, align 8
  br label %122

93:                                               ; preds = %85
  %94 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %95 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %6, align 8
  br label %122

99:                                               ; preds = %85
  %100 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %101 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %6, align 8
  br label %122

105:                                              ; preds = %85
  %106 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %107 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %6, align 8
  br label %122

111:                                              ; preds = %85
  %112 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %113 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %112, i32 0, i32 0
  %114 = call i64 @kvm_get_cr8(%struct.TYPE_17__* %113)
  store i64 %114, i64* %6, align 8
  br label %122

115:                                              ; preds = %85
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %119 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %118, i32 0, i32 0
  %120 = load i32, i32* @UD_VECTOR, align 4
  %121 = call i32 @kvm_queue_exception(%struct.TYPE_17__* %119, i32 %120)
  store i32 1, i32* %2, align 4
  br label %140

122:                                              ; preds = %111, %105, %99, %93, %87
  %123 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %124 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %123, i32 0, i32 0
  %125 = load i32, i32* %4, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @kvm_register_write(%struct.TYPE_17__* %124, i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %122, %84
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %133 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %132, i32 0, i32 0
  %134 = call i32 @kvm_inject_gp(%struct.TYPE_17__* %133, i32 0)
  br label %139

135:                                              ; preds = %128
  %136 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %137 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %136, i32 0, i32 0
  %138 = call i32 @skip_emulated_instruction(%struct.TYPE_17__* %137)
  br label %139

139:                                              ; preds = %135, %131
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %115, %77, %27, %11
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @svm_has(i32) #1

declare dso_local i32 @emulate_on_interception(%struct.vcpu_svm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kvm_register_read(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @kvm_set_cr0(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @kvm_set_cr4(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @kvm_set_cr8(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @kvm_get_cr8(%struct.TYPE_17__*) #1

declare dso_local i32 @kvm_register_write(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
