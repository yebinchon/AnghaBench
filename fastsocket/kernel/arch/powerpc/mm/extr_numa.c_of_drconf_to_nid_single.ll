; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_of_drconf_to_nid_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_of_drconf_to_nid_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_drconf_cell = type { i32, i32 }
%struct.assoc_arrays = type { i32, i32, i32* }

@min_common_depth = common dso_local global i32 0, align 4
@DRCONF_MEM_AI_INVALID = common dso_local global i32 0, align 4
@MAX_NUMNODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_drconf_cell*, %struct.assoc_arrays*)* @of_drconf_to_nid_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_drconf_to_nid_single(%struct.of_drconf_cell* %0, %struct.assoc_arrays* %1) #0 {
  %3 = alloca %struct.of_drconf_cell*, align 8
  %4 = alloca %struct.assoc_arrays*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.of_drconf_cell* %0, %struct.of_drconf_cell** %3, align 8
  store %struct.assoc_arrays* %1, %struct.assoc_arrays** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @min_common_depth, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %2
  %12 = load i32, i32* @min_common_depth, align 4
  %13 = load %struct.assoc_arrays*, %struct.assoc_arrays** %4, align 8
  %14 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.of_drconf_cell*, %struct.of_drconf_cell** %3, align 8
  %19 = getelementptr inbounds %struct.of_drconf_cell, %struct.of_drconf_cell* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRCONF_MEM_AI_INVALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %17
  %25 = load %struct.of_drconf_cell*, %struct.of_drconf_cell** %3, align 8
  %26 = getelementptr inbounds %struct.of_drconf_cell, %struct.of_drconf_cell* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.assoc_arrays*, %struct.assoc_arrays** %4, align 8
  %29 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load %struct.of_drconf_cell*, %struct.of_drconf_cell** %3, align 8
  %34 = getelementptr inbounds %struct.of_drconf_cell, %struct.of_drconf_cell* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.assoc_arrays*, %struct.assoc_arrays** %4, align 8
  %37 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* @min_common_depth, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load %struct.assoc_arrays*, %struct.assoc_arrays** %4, align 8
  %44 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %56, label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MAX_NUMNODES, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %32
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %24, %17, %11, %2
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
