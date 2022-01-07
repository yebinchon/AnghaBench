; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_db_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_db_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_12__*, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_9__, %struct.kvm_run* }
%struct.TYPE_9__ = type { i32 }
%struct.kvm_run = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }

@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @db_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %8 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  store %struct.kvm_run* %8, %struct.kvm_run** %4, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %14 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %27 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %26, i32 0, i32 1
  %28 = load i32, i32* @DB_VECTOR, align 4
  %29 = call i32 @kvm_queue_exception(%struct.TYPE_15__* %27, i32 %28)
  store i32 1, i32* %2, align 4
  br label %103

30:                                               ; preds = %18, %1
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %43 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @X86_EFLAGS_TF, align 4
  %51 = load i32, i32* @X86_EFLAGS_RF, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %55 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %49, %37
  %62 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %63 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %62, i32 0, i32 1
  %64 = call i32 @update_db_intercept(%struct.TYPE_15__* %63)
  br label %65

65:                                               ; preds = %61, %30
  %66 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %67 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %71 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %65
  %76 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %77 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %80 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %87 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %85, %91
  %93 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i64 %92, i64* %96, align 8
  %97 = load i32, i32* @DB_VECTOR, align 4
  %98 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  store i32 0, i32* %2, align 4
  br label %103

102:                                              ; preds = %65
  store i32 1, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %75, %25
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @update_db_intercept(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
