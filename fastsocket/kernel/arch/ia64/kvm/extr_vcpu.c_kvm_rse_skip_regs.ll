; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_rse_skip_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_rse_skip_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64)* @kvm_rse_skip_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @kvm_rse_skip_regs(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = call i64 @ia64_rse_slot_num(i64* %7)
  %9 = load i64, i64* %4, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 %14, 62
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i64, i64* %5, align 8
  %22 = icmp sle i64 %21, -63
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 63
  store i64 %27, i64* %5, align 8
  br label %20

28:                                               ; preds = %20
  br label %39

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i64, i64* %5, align 8
  %32 = icmp sge i64 %31, 63
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %36, 63
  store i64 %37, i64* %5, align 8
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i64*, i64** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  ret i64* %45
}

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
