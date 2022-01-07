; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_zap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_mmu_zap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_mmu_page = type { i32, %struct.TYPE_5__, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_mmu_page*)* @kvm_mmu_zap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mmu_zap_page(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  %6 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %7 = call i32 @trace_kvm_mmu_zap_page(%struct.kvm_mmu_page* %6)
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %15 = call i32 @mmu_zap_unsync_children(%struct.kvm* %13, %struct.kvm_mmu_page* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %18 = call i32 @kvm_mmu_page_unlink_children(%struct.kvm* %16, %struct.kvm_mmu_page* %17)
  %19 = load %struct.kvm*, %struct.kvm** %3, align 8
  %20 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %21 = call i32 @kvm_mmu_unlink_parents(%struct.kvm* %19, %struct.kvm_mmu_page* %20)
  %22 = load %struct.kvm*, %struct.kvm** %3, align 8
  %23 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %22)
  %24 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %2
  %30 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @unaccount_shadowed(%struct.kvm* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %29, %2
  %42 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.kvm*, %struct.kvm** %3, align 8
  %48 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %49 = call i32 @kvm_unlink_unsync_page(%struct.kvm* %47, %struct.kvm_mmu_page* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %56, i32 0, i32 2
  %58 = call i32 @hlist_del(i32* %57)
  %59 = load %struct.kvm*, %struct.kvm** %3, align 8
  %60 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %61 = call i32 @kvm_mmu_free_page(%struct.kvm* %59, %struct.kvm_mmu_page* %60)
  br label %74

62:                                               ; preds = %50
  %63 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %64 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %66, i32 0, i32 0
  %68 = load %struct.kvm*, %struct.kvm** %3, align 8
  %69 = getelementptr inbounds %struct.kvm, %struct.kvm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @list_move(i32* %67, i32* %70)
  %72 = load %struct.kvm*, %struct.kvm** %3, align 8
  %73 = call i32 @kvm_reload_remote_mmus(%struct.kvm* %72)
  br label %74

74:                                               ; preds = %62, %55
  %75 = load %struct.kvm*, %struct.kvm** %3, align 8
  %76 = call i32 @kvm_mmu_reset_last_pte_updated(%struct.kvm* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @trace_kvm_mmu_zap_page(%struct.kvm_mmu_page*) #1

declare dso_local i32 @mmu_zap_unsync_children(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_mmu_page_unlink_children(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_mmu_unlink_parents(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_flush_remote_tlbs(%struct.kvm*) #1

declare dso_local i32 @unaccount_shadowed(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_unlink_unsync_page(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kvm_mmu_free_page(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @kvm_reload_remote_mmus(%struct.kvm*) #1

declare dso_local i32 @kvm_mmu_reset_last_pte_updated(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
