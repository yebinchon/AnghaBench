; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_pages_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_pages_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_pages = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.kvm_mmu_page* }
%struct.kvm_mmu_page = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmu_page_path = type { i32*, %struct.kvm_mmu_page** }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_pages*, %struct.mmu_page_path*, i32)* @mmu_pages_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_pages_next(%struct.kvm_mmu_pages* %0, %struct.mmu_page_path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu_pages*, align 8
  %6 = alloca %struct.mmu_page_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_mmu_pages* %0, %struct.kvm_mmu_pages** %5, align 8
  store %struct.mmu_page_path* %1, %struct.mmu_page_path** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %77, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %12
  %19 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %25, align 8
  store %struct.kvm_mmu_page* %26, %struct.kvm_mmu_page** %9, align 8
  %27 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %9, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %18
  %34 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mmu_page_path*, %struct.mmu_page_path** %6, align 8
  %43 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %82

47:                                               ; preds = %18
  %48 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %9, align 8
  %49 = load %struct.mmu_page_path*, %struct.mmu_page_path** %6, align 8
  %50 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %49, i32 0, i32 1
  %51 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %50, align 8
  %52 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %9, align 8
  %53 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %51, i64 %57
  store %struct.kvm_mmu_page* %48, %struct.kvm_mmu_page** %58, align 8
  %59 = load %struct.kvm_mmu_pages*, %struct.kvm_mmu_pages** %5, align 8
  %60 = getelementptr inbounds %struct.kvm_mmu_pages, %struct.kvm_mmu_pages* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mmu_page_path*, %struct.mmu_page_path** %6, align 8
  %68 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %9, align 8
  %71 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  store i32 %66, i32* %76, align 4
  br label %77

77:                                               ; preds = %47
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %12

80:                                               ; preds = %12
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %33
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
