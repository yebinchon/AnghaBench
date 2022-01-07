; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_setreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pt_regs = type { i64 }

@IA64_FIRST_STACKED_GR = common dso_local global i64 0, align 8
@gr_info = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setreg(i64 %0, i64 %1, i32 %2, %struct.kvm_pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_pt_regs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.kvm_pt_regs* %3, %struct.kvm_pt_regs** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @IA64_FIRST_STACKED_GR, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @set_rse_reg(%struct.kvm_pt_regs* %16, i64 %17, i64 %18, i32 %19)
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %23 = ptrtoint %struct.kvm_pt_regs* %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %25 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %24, i32 0, i32 0
  store i64* %25, i64** %11, align 8
  %26 = load i64*, i64** @gr_info, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %9, align 8
  %36 = lshr i64 %35, 3
  %37 = and i64 %36, 63
  %38 = shl i64 1, %37
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load i64, i64* %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %42
  store i64 %45, i64* %43, align 8
  br label %52

46:                                               ; preds = %21
  %47 = load i64, i64* %10, align 8
  %48 = xor i64 %47, -1
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %15, %46, %41
  ret void
}

declare dso_local i32 @set_rse_reg(%struct.kvm_pt_regs*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
