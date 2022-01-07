; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_mark_reserved_regions_for_nid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_mark_reserved_regions_for_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pglist_data = type { i64, i64 }
%struct.node_active_region = type { i64, i64, i32 }

@lmb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"reserve_bootmem %lx %lx nid=%d\0A\00", align 1
@BOOTMEM_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mark_reserved_regions_for_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reserved_regions_for_nid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pglist_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.node_active_region, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.pglist_data* @NODE_DATA(i32 %12)
  store %struct.pglist_data* %13, %struct.pglist_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %119, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lmb, i32 0, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lmb, i32 0, i32 0, i32 1), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lmb, i32 0, i32 0, i32 1), align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @PFN_UP(i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %39 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %42 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %47 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ule i64 %45, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %18
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %18
  br label %119

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @get_node_active_region(i64 %56, %struct.node_active_region* %9)
  br label %58

58:                                               ; preds = %107, %55
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br label %68

68:                                               ; preds = %62, %58
  %69 = phi i1 [ false, %58 ], [ %67, %62 ]
  br i1 %69, label %70, label %118

70:                                               ; preds = %68
  %71 = load i64, i64* %6, align 8
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = shl i64 %78, %79
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %76, %70
  %84 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %90, i32 %92)
  %94 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.pglist_data* @NODE_DATA(i32 %95)
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @BOOTMEM_DEFAULT, align 4
  %100 = call i32 @reserve_bootmem_node(%struct.pglist_data* %96, i64 %97, i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %88, %83
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ule i64 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %118

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.node_active_region, %struct.node_active_region* %9, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @PAGE_SHIFT, align 8
  %112 = shl i64 %110, %111
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %113, %114
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @get_node_active_region(i64 %116, %struct.node_active_region* %9)
  br label %58

118:                                              ; preds = %106, %68
  br label %119

119:                                              ; preds = %118, %54
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %14

122:                                              ; preds = %14
  ret void
}

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

declare dso_local i64 @PFN_UP(i64) #1

declare dso_local i32 @get_node_active_region(i64, %struct.node_active_region*) #1

declare dso_local i32 @dbg(i8*, i64, i64, i32) #1

declare dso_local i32 @reserve_bootmem_node(%struct.pglist_data*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
