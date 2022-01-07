; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32*)* @svm_get_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_get_msr(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vcpu_svm*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %10)
  store %struct.vcpu_svm* %11, %struct.vcpu_svm** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %115 [
    i32 135, label %13
    i32 133, label %39
    i32 138, label %47
    i32 137, label %55
    i32 136, label %60
    i32 143, label %65
    i32 142, label %73
    i32 141, label %81
    i32 140, label %89
    i32 139, label %97
    i32 128, label %105
    i32 129, label %111
    i32 134, label %113
  ]

13:                                               ; preds = %3
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %15 = call i32 @is_nested(%struct.vcpu_svm* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %32

25:                                               ; preds = %13
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %27 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %26, i32 0, i32 3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %25, %17
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = call i32 (...) @native_read_tsc()
  %36 = call i32 @svm_scale_tsc(%struct.kvm_vcpu* %34, i32 %35)
  %37 = add nsw i32 %33, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %120

39:                                               ; preds = %3
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %120

47:                                               ; preds = %3
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %120

55:                                               ; preds = %3
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %120

60:                                               ; preds = %3
  %61 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %62 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %120

65:                                               ; preds = %3
  %66 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %67 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %66, i32 0, i32 3
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %120

73:                                               ; preds = %3
  %74 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %75 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %120

81:                                               ; preds = %3
  %82 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %83 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %120

89:                                               ; preds = %3
  %90 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %91 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %90, i32 0, i32 3
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  br label %120

97:                                               ; preds = %3
  %98 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %99 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %120

105:                                              ; preds = %3
  %106 = load %struct.vcpu_svm*, %struct.vcpu_svm** %8, align 8
  %107 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %120

111:                                              ; preds = %3
  %112 = load i32*, i32** %7, align 8
  store i32 0, i32* %112, align 4
  br label %120

113:                                              ; preds = %3
  %114 = load i32*, i32** %7, align 8
  store i32 16777317, i32* %114, align 4
  br label %120

115:                                              ; preds = %3
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @kvm_get_msr_common(%struct.kvm_vcpu* %116, i32 %117, i32* %118)
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %113, %111, %105, %97, %89, %81, %73, %65, %60, %55, %47, %39, %32
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_nested(%struct.vcpu_svm*) #1

declare dso_local i32 @svm_scale_tsc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @native_read_tsc(...) #1

declare dso_local i32 @kvm_get_msr_common(%struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
