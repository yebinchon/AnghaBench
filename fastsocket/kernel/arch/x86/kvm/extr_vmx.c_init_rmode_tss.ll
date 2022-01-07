; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_init_rmode_tss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_init_rmode_tss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TSS_BASE_SIZE = common dso_local global i64 0, align 8
@TSS_REDIRECTION_SIZE = common dso_local global i64 0, align 8
@TSS_IOPB_BASE_OFFSET = common dso_local global i32 0, align 4
@RMODE_TSS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @init_rmode_tss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rmode_tss(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i32 @srcu_read_lock(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = call i32 @rmode_tss_base(%struct.kvm* %11)
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @kvm_clear_guest_page(%struct.kvm* %15, i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %64

22:                                               ; preds = %1
  %23 = load i64, i64* @TSS_BASE_SIZE, align 8
  %24 = load i64, i64* @TSS_REDIRECTION_SIZE, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %4, align 8
  %26 = load %struct.kvm*, %struct.kvm** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @TSS_IOPB_BASE_OFFSET, align 4
  %30 = call i32 @kvm_write_guest_page(%struct.kvm* %26, i32 %27, i64* %4, i32 %29, i32 8)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %64

34:                                               ; preds = %22
  %35 = load %struct.kvm*, %struct.kvm** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @kvm_clear_guest_page(%struct.kvm* %35, i32 %36, i32 0, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.kvm*, %struct.kvm** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @kvm_clear_guest_page(%struct.kvm* %44, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %64

51:                                               ; preds = %43
  store i64 -1, i64* %4, align 8
  %52 = load %struct.kvm*, %struct.kvm** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @RMODE_TSS_SIZE, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul nsw i32 2, %55
  %57 = sub nsw i32 %54, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @kvm_write_guest_page(%struct.kvm* %52, i32 %53, i64* %4, i32 %58, i32 4)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %62, %50, %42, %33, %21
  %65 = load %struct.kvm*, %struct.kvm** %2, align 8
  %66 = getelementptr inbounds %struct.kvm, %struct.kvm* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @srcu_read_unlock(i32* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @rmode_tss_base(%struct.kvm*) #1

declare dso_local i32 @kvm_clear_guest_page(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @kvm_write_guest_page(%struct.kvm*, i32, i64*, i32, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
