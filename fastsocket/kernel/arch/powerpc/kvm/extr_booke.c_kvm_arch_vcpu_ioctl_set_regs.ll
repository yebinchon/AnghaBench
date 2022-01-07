; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %6 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 14
  store i32 %8, i32* %11, align 4
  %12 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 13
  store i32 %14, i32* %17, align 8
  %18 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 12
  store i32 %20, i32* %23, align 4
  %24 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 8
  %30 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 10
  store i32 %32, i32* %35, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %36, i32 %39)
  %41 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 8
  %47 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 8
  store i32 %49, i32* %52, align 4
  %53 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 8
  %59 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 4
  %65 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 8
  %71 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 4
  %77 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %118, %2
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @ARRAY_SIZE(i32* %100)
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %105 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %95

121:                                              ; preds = %95
  ret i32 0
}

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
