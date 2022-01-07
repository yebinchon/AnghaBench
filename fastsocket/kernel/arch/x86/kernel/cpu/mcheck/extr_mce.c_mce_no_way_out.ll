; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_no_way_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_no_way_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }
%struct.pt_regs = type { i32 }

@banks = common dso_local global i32 0, align 4
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@tolerant = common dso_local global i32 0, align 4
@MCE_PANIC_SEVERITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*, i8**, i64*, %struct.pt_regs*)* @mce_no_way_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_no_way_out(%struct.mce* %0, i8** %1, i64* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.mce*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @banks, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @MSR_IA32_MCx_STATUS(i32 %16)
  %18 = call i32 @mce_rdmsrl(i32 %17)
  %19 = load %struct.mce*, %struct.mce** %5, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mce*, %struct.mce** %5, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MCI_STATUS_VAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load i32, i32* %9, align 4
  %29 = load i64*, i64** %7, align 8
  %30 = call i32 @__set_bit(i32 %28, i64* %29)
  br i1 true, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.mce*, %struct.mce** %5, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %35 = call i32 @quirk_no_way_out(i32 %32, %struct.mce* %33, %struct.pt_regs* %34)
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.mce*, %struct.mce** %5, align 8
  %39 = load i32, i32* @tolerant, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = call i64 @mce_severity(%struct.mce* %38, i32 %39, i8** %40)
  %42 = load i64, i64* @MCE_PANIC_SEVERITY, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i32 @mce_rdmsrl(i32) #1

declare dso_local i32 @MSR_IA32_MCx_STATUS(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @quirk_no_way_out(i32, %struct.mce*, %struct.pt_regs*) #1

declare dso_local i64 @mce_severity(%struct.mce*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
