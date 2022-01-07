; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_update_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_update_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_vm_change = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.host_vm_change*)* @update_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_pmd_range(i32* %0, i64 %1, i64 %2, %struct.host_vm_change* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.host_vm_change*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.host_vm_change* %3, %struct.host_vm_change** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @pmd_offset(i32* %12, i64 %13)
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %62, %4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @pmd_addr_end(i64 %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pmd_present(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %15
  %24 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %25 = getelementptr inbounds %struct.host_vm_change, %struct.host_vm_change* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @pmd_newpage(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28, %23
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %35, %36
  %38 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %39 = call i32 @add_munmap(i64 %34, i64 %37, %struct.host_vm_change* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pmd_mkuptodate(i32 %41)
  br label %43

43:                                               ; preds = %33, %28
  br label %50

44:                                               ; preds = %15
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %49 = call i32 @update_pte_range(i32* %45, i64 %46, i64 %47, %struct.host_vm_change* %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i1 [ false, %51 ], [ %61, %58 ]
  br i1 %63, label %15, label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_newpage(i32) #1

declare dso_local i32 @add_munmap(i64, i64, %struct.host_vm_change*) #1

declare dso_local i32 @pmd_mkuptodate(i32) #1

declare dso_local i32 @update_pte_range(i32*, i64, i64, %struct.host_vm_change*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
