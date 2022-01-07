; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_special_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_cmd_special_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList = type { i32, %struct.ctlr_info*, %struct.TYPE_6__, i64, i32, %struct.CommandList* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ctlr_info = type { i32 }
%union.u64bit = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CommandList* (%struct.ctlr_info*)* @cmd_special_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.CommandList*, align 8
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %union.u64bit, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @pci_alloc_consistent(i32 %10, i32 56, i64* %6)
  %12 = bitcast i8* %11 to %struct.CommandList*
  store %struct.CommandList* %12, %struct.CommandList** %4, align 8
  %13 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %14 = icmp eq %struct.CommandList* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.CommandList* null, %struct.CommandList** %2, align 8
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %18 = call i32 @memset(%struct.CommandList* %17, i32 0, i32 56)
  %19 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %20 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @pci_alloc_consistent(i32 %23, i32 56, i64* %7)
  %25 = bitcast i8* %24 to %struct.CommandList*
  %26 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %27 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %26, i32 0, i32 5
  store %struct.CommandList* %25, %struct.CommandList** %27, align 8
  %28 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %29 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %28, i32 0, i32 5
  %30 = load %struct.CommandList*, %struct.CommandList** %29, align 8
  %31 = icmp eq %struct.CommandList* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %34 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pci_free_consistent(i32 %35, i32 56, %struct.CommandList* %36, i64 %37)
  store %struct.CommandList* null, %struct.CommandList** %2, align 8
  br label %73

39:                                               ; preds = %16
  %40 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %41 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %40, i32 0, i32 5
  %42 = load %struct.CommandList*, %struct.CommandList** %41, align 8
  %43 = call i32 @memset(%struct.CommandList* %42, i32 0, i32 56)
  %44 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %45 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %44, i32 0, i32 4
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %49 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = bitcast %union.u64bit* %5 to i64*
  store i64 %50, i64* %51, align 8
  %52 = bitcast %union.u64bit* %5 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %56 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = bitcast %union.u64bit* %5 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %63 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %67 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 56, i32* %68, align 8
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %70 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %71 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %70, i32 0, i32 1
  store %struct.ctlr_info* %69, %struct.ctlr_info** %71, align 8
  %72 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  store %struct.CommandList* %72, %struct.CommandList** %2, align 8
  br label %73

73:                                               ; preds = %39, %32, %15
  %74 = load %struct.CommandList*, %struct.CommandList** %2, align 8
  ret %struct.CommandList* %74
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.CommandList*, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.CommandList*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
