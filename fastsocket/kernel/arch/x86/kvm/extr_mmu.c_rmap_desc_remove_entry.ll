; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_desc_remove_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_desc_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_rmap_desc = type { i64, i32** }

@RMAP_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.kvm_rmap_desc*, i32, %struct.kvm_rmap_desc*)* @rmap_desc_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmap_desc_remove_entry(i64* %0, %struct.kvm_rmap_desc* %1, i32 %2, %struct.kvm_rmap_desc* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.kvm_rmap_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_rmap_desc*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.kvm_rmap_desc* %1, %struct.kvm_rmap_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.kvm_rmap_desc* %3, %struct.kvm_rmap_desc** %8, align 8
  %10 = load i32, i32* @RMAP_EXT, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %4
  %13 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i1 [ false, %12 ], [ %24, %21 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  br label %12

31:                                               ; preds = %25
  %32 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %40 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %38, i32** %44, align 8
  %45 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %89

54:                                               ; preds = %31
  %55 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %56 = icmp ne %struct.kvm_rmap_desc* %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = ptrtoint i32* %67 to i64
  %69 = load i64*, i64** %5, align 8
  store i64 %68, i64* %69, align 8
  br label %86

70:                                               ; preds = %57, %54
  %71 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %72 = icmp ne %struct.kvm_rmap_desc* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %75 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %78 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %85

79:                                               ; preds = %70
  %80 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %81 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, 1
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %6, align 8
  %88 = call i32 @mmu_free_rmap_desc(%struct.kvm_rmap_desc* %87)
  br label %89

89:                                               ; preds = %86, %53
  ret void
}

declare dso_local i32 @mmu_free_rmap_desc(%struct.kvm_rmap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
