; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_getreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pt_regs = type { i64 }

@IA64_FIRST_STACKED_GR = common dso_local global i64 0, align 8
@gr_info = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getreg(i64 %0, i64* %1, i32* %2, %struct.kvm_pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pt_regs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.kvm_pt_regs* %3, %struct.kvm_pt_regs** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @IA64_FIRST_STACKED_GR, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @get_rse_reg(%struct.kvm_pt_regs* %15, i64 %16, i64* %17, i32* %18)
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %22 = ptrtoint %struct.kvm_pt_regs* %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %24 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %23, i32 0, i32 0
  store i64* %24, i64** %10, align 8
  %25 = load i64*, i64** @gr_info, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %20
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = lshr i64 %40, 3
  %42 = and i64 %41, 63
  %43 = lshr i64 %39, %42
  %44 = and i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %14, %37, %20
  ret void
}

declare dso_local i32 @get_rse_reg(%struct.kvm_pt_regs*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
