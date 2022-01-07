; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_release_vm_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_release_vm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64, i32, i64* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @kvm_release_vm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_release_vm_pages(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_memslots*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.kvm_memslots* @rcu_dereference(i32 %10)
  store %struct.kvm_memslots* %11, %struct.kvm_memslots** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %58, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %12
  %19 = load %struct.kvm_memslots*, %struct.kvm_memslots** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %19, i32 0, i32 1
  %21 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %21, i64 %23
  store %struct.kvm_memory_slot* %24, %struct.kvm_memory_slot** %4, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %54, %18
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.page*
  %52 = call i32 @put_page(%struct.page* %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %28

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local %struct.kvm_memslots* @rcu_dereference(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
