; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_rmap_desc = type { %struct.kvm_rmap_desc*, i32** }

@RMAP_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm*, i64*, i32*)* @rmap_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rmap_next(%struct.kvm* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_rmap_desc*, align 8
  %9 = alloca %struct.kvm_rmap_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %82

16:                                               ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %4, align 8
  br label %82

28:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %82

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, -2
  %34 = inttoptr i64 %33 to %struct.kvm_rmap_desc*
  store %struct.kvm_rmap_desc* %34, %struct.kvm_rmap_desc** %8, align 8
  store %struct.kvm_rmap_desc* null, %struct.kvm_rmap_desc** %9, align 8
  store i32* null, i32** %10, align 8
  br label %35

35:                                               ; preds = %77, %30
  %36 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %37 = icmp ne %struct.kvm_rmap_desc* %36, null
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %74, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @RMAP_EXT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %45 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i1 [ false, %39 ], [ %51, %43 ]
  br i1 %53, label %54, label %77

54:                                               ; preds = %52
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %60 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %4, align 8
  br label %82

66:                                               ; preds = %54
  %67 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %68 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %10, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %39

77:                                               ; preds = %52
  %78 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %8, align 8
  %79 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %78, i32 0, i32 0
  %80 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %79, align 8
  store %struct.kvm_rmap_desc* %80, %struct.kvm_rmap_desc** %8, align 8
  br label %35

81:                                               ; preds = %35
  store i32* null, i32** %4, align 8
  br label %82

82:                                               ; preds = %81, %58, %28, %24, %15
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
