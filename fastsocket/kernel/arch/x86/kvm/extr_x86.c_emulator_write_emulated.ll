; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_write_emulated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_write_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emulator_write_emulated(i64 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = sub i64 %15, 1
  %17 = load i64, i64* %6, align 8
  %18 = xor i64 %16, %17
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 0, %23
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %33 = call i32 @emulator_write_emulated_onepage(i64 %29, i8* %30, i32 %31, %struct.kvm_vcpu* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %22
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %39, %4
  %52 = load i64, i64* %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %56 = call i32 @emulator_write_emulated_onepage(i64 %52, i8* %53, i32 %54, %struct.kvm_vcpu* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %37
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @emulator_write_emulated_onepage(i64, i8*, i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
