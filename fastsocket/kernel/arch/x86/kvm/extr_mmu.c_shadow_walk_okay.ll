; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_shadow_walk_okay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_shadow_walk_okay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_shadow_walk_iterator = type { i64, i32, i32, i32*, i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_shadow_walk_iterator*)* @shadow_walk_okay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_walk_okay(%struct.kvm_shadow_walk_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_shadow_walk_iterator*, align 8
  store %struct.kvm_shadow_walk_iterator* %0, %struct.kvm_shadow_walk_iterator** %3, align 8
  %4 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_large_pte(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %47

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @SHADOW_PT_INDEX(i32 %28, i64 %31)
  %33 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @__va(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %25, %23, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @is_large_pte(i32) #1

declare dso_local i32 @SHADOW_PT_INDEX(i32, i64) #1

declare dso_local i64 @__va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
