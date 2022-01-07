; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c___vcpu_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c___vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i8*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32, %struct.kvm* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.kvm = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"vcpu %d received sipi with vector # %x\0A\00", align 1
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KVM_REQ_PENDING_TIMER = common dso_local global i32 0, align 4
@KVM_EXIT_INTR = common dso_local global i8* null, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @__vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vcpu_run(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 6
  %8 = load %struct.kvm*, %struct.kvm** %7, align 8
  store %struct.kvm* %8, %struct.kvm** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 128
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i32 @kvm_lapic_reset(%struct.kvm_vcpu* %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = call i32 @kvm_arch_vcpu_reset(%struct.kvm_vcpu* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %166

34:                                               ; preds = %17
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 129, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.kvm*, %struct.kvm** %5, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = call i8* @srcu_read_lock(i32* %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %157, %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %158

47:                                               ; preds = %44
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 129
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @vcpu_enter_guest(%struct.kvm_vcpu* %54)
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %47
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @srcu_read_unlock(i32* %58, i8* %61)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 @kvm_vcpu_block(%struct.kvm_vcpu* %63)
  %65 = load %struct.kvm*, %struct.kvm** %5, align 8
  %66 = getelementptr inbounds %struct.kvm, %struct.kvm* %65, i32 0, i32 0
  %67 = call i8* @srcu_read_lock(i32* %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 3
  %73 = call i64 @test_and_clear_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %56
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  switch i64 %79, label %86 [
    i64 130, label %80
    i64 129, label %84
    i64 128, label %85
  ]

80:                                               ; preds = %75
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 129, i64* %83, align 8
  br label %84

84:                                               ; preds = %75, %80
  br label %89

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %75, %85
  %87 = load i32, i32* @EINTR, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %84
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %4, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %158

95:                                               ; preds = %91
  %96 = load i32, i32* @KVM_REQ_PENDING_TIMER, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 3
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = call i64 @kvm_cpu_has_pending_timer(%struct.kvm_vcpu* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = call i32 @kvm_inject_pending_timer_irqs(%struct.kvm_vcpu* %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = call i64 @dm_request_for_irq_injection(%struct.kvm_vcpu* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i32, i32* @EINTR, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  %113 = load i8*, i8** @KVM_EXIT_INTR, align 8
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %110, %106
  %124 = load i32, i32* @current, align 4
  %125 = call i64 @signal_pending(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load i32, i32* @EINTR, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  %130 = load i8*, i8** @KVM_EXIT_INTR, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i8* %130, i8** %134, align 8
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %127, %123
  %141 = call i64 (...) @need_resched()
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load %struct.kvm*, %struct.kvm** %5, align 8
  %145 = getelementptr inbounds %struct.kvm, %struct.kvm* %144, i32 0, i32 0
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @srcu_read_unlock(i32* %145, i8* %148)
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = call i32 @kvm_resched(%struct.kvm_vcpu* %150)
  %152 = load %struct.kvm*, %struct.kvm** %5, align 8
  %153 = getelementptr inbounds %struct.kvm, %struct.kvm* %152, i32 0, i32 0
  %154 = call i8* @srcu_read_lock(i32* %153)
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %143, %140
  br label %44

158:                                              ; preds = %94, %44
  %159 = load %struct.kvm*, %struct.kvm** %5, align 8
  %160 = getelementptr inbounds %struct.kvm, %struct.kvm* %159, i32 0, i32 0
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %162 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @srcu_read_unlock(i32* %160, i8* %163)
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %158, %32
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @kvm_lapic_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arch_vcpu_reset(%struct.kvm_vcpu*) #1

declare dso_local i8* @srcu_read_lock(i32*) #1

declare dso_local i32 @vcpu_enter_guest(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i8*) #1

declare dso_local i32 @kvm_vcpu_block(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @kvm_cpu_has_pending_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_inject_pending_timer_irqs(%struct.kvm_vcpu*) #1

declare dso_local i64 @dm_request_for_irq_injection(%struct.kvm_vcpu*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @kvm_resched(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
