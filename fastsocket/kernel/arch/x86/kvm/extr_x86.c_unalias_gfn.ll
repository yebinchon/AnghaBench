; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_unalias_gfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_unalias_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_mem_alias = type { i64, i64, i64 }
%struct.kvm_mem_aliases = type { i32, %struct.kvm_mem_alias* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unalias_gfn(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_mem_alias*, align 8
  %8 = alloca %struct.kvm_mem_aliases*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.kvm_mem_aliases* @rcu_dereference(i32 %12)
  store %struct.kvm_mem_aliases* %13, %struct.kvm_mem_aliases** %8, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kvm_mem_aliases*, %struct.kvm_mem_aliases** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_mem_aliases, %struct.kvm_mem_aliases* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.kvm_mem_aliases*, %struct.kvm_mem_aliases** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_mem_aliases, %struct.kvm_mem_aliases* %21, i32 0, i32 1
  %23 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %23, i64 %25
  store %struct.kvm_mem_alias* %26, %struct.kvm_mem_alias** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %20
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %7, align 8
  %44 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.kvm_mem_alias*, %struct.kvm_mem_alias** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_mem_alias, %struct.kvm_mem_alias* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %3, align 8
  br label %58

52:                                               ; preds = %32, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %42
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local %struct.kvm_mem_aliases* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
