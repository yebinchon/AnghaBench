; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmloadsave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmloadsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcb*, %struct.vmcb*)* @nested_svm_vmloadsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_svm_vmloadsave(%struct.vmcb* %0, %struct.vmcb* %1) #0 {
  %3 = alloca %struct.vmcb*, align 8
  %4 = alloca %struct.vmcb*, align 8
  store %struct.vmcb* %0, %struct.vmcb** %3, align 8
  store %struct.vmcb* %1, %struct.vmcb** %4, align 8
  %5 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %6 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %10 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 11
  store i32 %8, i32* %11, align 4
  %12 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %13 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %17 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 10
  store i32 %15, i32* %18, align 4
  %19 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %20 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %24 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 4
  %26 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %27 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %31 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 4
  %33 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %34 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %38 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  store i32 %36, i32* %39, align 4
  %40 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %41 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %45 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %48 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %52 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %55 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %59 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %62 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %66 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %69 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %73 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %76 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %80 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %83 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %87 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
