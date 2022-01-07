; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_complete_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_complete_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_pio_request }
%struct.kvm_pio_request = type { i64, i64, i64, i64, i64, i64, i32 }

@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @complete_pio(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pio_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store %struct.kvm_pio_request* %9, %struct.kvm_pio_request** %3, align 8
  %10 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %1
  %15 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = load i32, i32* @VCPU_REGS_RAX, align 4
  %22 = call i64 @kvm_register_read(%struct.kvm_vcpu* %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcpy(i64* %6, i32 %26, i64 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = load i32, i32* @VCPU_REGS_RAX, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @kvm_register_write(%struct.kvm_vcpu* %31, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %19, %14
  br label %110

36:                                               ; preds = %1
  %37 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i32 @pio_copy_data(%struct.kvm_vcpu* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %111

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %36
  store i64 1, i64* %4, align 8
  %49 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = mul nsw i64 %57, %56
  store i64 %58, i64* %4, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = load i32, i32* @VCPU_REGS_RCX, align 4
  %61 = call i64 @kvm_register_read(%struct.kvm_vcpu* %59, i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = load i32, i32* @VCPU_REGS_RCX, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @kvm_register_write(%struct.kvm_vcpu* %65, i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %53, %48
  %70 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* %4, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = mul nsw i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %84 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = load i32, i32* @VCPU_REGS_RDI, align 4
  %90 = call i64 @kvm_register_read(%struct.kvm_vcpu* %88, i32 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %6, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = load i32, i32* @VCPU_REGS_RDI, align 4
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @kvm_register_write(%struct.kvm_vcpu* %94, i32 %95, i64 %96)
  br label %109

98:                                               ; preds = %77
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %100 = load i32, i32* @VCPU_REGS_RSI, align 4
  %101 = call i64 @kvm_register_read(%struct.kvm_vcpu* %99, i32 %100)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = load i32, i32* @VCPU_REGS_RSI, align 4
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @kvm_register_write(%struct.kvm_vcpu* %105, i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109, %35
  br label %111

111:                                              ; preds = %110, %46
  %112 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %113 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.kvm_pio_request*, %struct.kvm_pio_request** %3, align 8
  %120 = getelementptr inbounds %struct.kvm_pio_request, %struct.kvm_pio_request* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  ret i32 0
}

declare dso_local i64 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @pio_copy_data(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
