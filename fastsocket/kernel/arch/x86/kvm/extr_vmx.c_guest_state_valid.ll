; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_guest_state_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_guest_state_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@X86_CR0_PE = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @guest_state_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_state_valid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %5 = load i32, i32* @X86_CR0_PE, align 4
  %6 = call i32 @kvm_read_cr0_bits(%struct.kvm_vcpu* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = load i32, i32* @VCPU_SREG_CS, align 4
  %11 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %96

14:                                               ; preds = %8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load i32, i32* @VCPU_SREG_SS, align 4
  %17 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %96

20:                                               ; preds = %14
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load i32, i32* @VCPU_SREG_DS, align 4
  %23 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %96

26:                                               ; preds = %20
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @VCPU_SREG_ES, align 4
  %29 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %96

32:                                               ; preds = %26
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = load i32, i32* @VCPU_SREG_FS, align 4
  %35 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %96

38:                                               ; preds = %32
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = load i32, i32* @VCPU_SREG_GS, align 4
  %41 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %96

44:                                               ; preds = %38
  br label %95

45:                                               ; preds = %1
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @cs_ss_rpl_check(%struct.kvm_vcpu* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %96

50:                                               ; preds = %45
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @code_segment_valid(%struct.kvm_vcpu* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %96

55:                                               ; preds = %50
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @stack_segment_valid(%struct.kvm_vcpu* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %96

60:                                               ; preds = %55
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i32, i32* @VCPU_SREG_DS, align 4
  %63 = call i32 @data_segment_valid(%struct.kvm_vcpu* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = load i32, i32* @VCPU_SREG_ES, align 4
  %69 = call i32 @data_segment_valid(%struct.kvm_vcpu* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %96

72:                                               ; preds = %66
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = load i32, i32* @VCPU_SREG_FS, align 4
  %75 = call i32 @data_segment_valid(%struct.kvm_vcpu* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %96

78:                                               ; preds = %72
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = load i32, i32* @VCPU_SREG_GS, align 4
  %81 = call i32 @data_segment_valid(%struct.kvm_vcpu* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %96

84:                                               ; preds = %78
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = call i32 @tr_valid(%struct.kvm_vcpu* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %96

89:                                               ; preds = %84
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = call i32 @ldtr_valid(%struct.kvm_vcpu* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %96

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %44
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %93, %88, %83, %77, %71, %65, %59, %54, %49, %43, %37, %31, %25, %19, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @rmode_segment_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @cs_ss_rpl_check(%struct.kvm_vcpu*) #1

declare dso_local i32 @code_segment_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @stack_segment_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @data_segment_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @tr_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @ldtr_valid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
