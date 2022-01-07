; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_io_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_io_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_10__, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@SVM_IOIO_STR_MASK = common dso_local global i32 0, align 4
@EMULATE_DO_MMIO = common dso_local global i64 0, align 8
@SVM_IOIO_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @io_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %22 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SVM_IOIO_STR_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %38 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %37, i32 0, i32 0
  %39 = call i64 @emulate_instruction(%struct.TYPE_10__* %38, i32 0)
  %40 = load i64, i64* @EMULATE_DO_MMIO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %66

43:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %66

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SVM_IOIO_TYPE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 16
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SVM_IOIO_SIZE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @SVM_IOIO_SIZE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %58 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %57, i32 0, i32 0
  %59 = call i32 @skip_emulated_instruction(%struct.TYPE_10__* %58)
  %60 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %61 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @kvm_emulate_pio(%struct.TYPE_10__* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %44, %43, %42
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @emulate_instruction(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_10__*) #1

declare dso_local i32 @kvm_emulate_pio(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
