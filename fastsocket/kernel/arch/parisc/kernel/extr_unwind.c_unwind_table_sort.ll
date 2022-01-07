; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_table_sort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_table_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_table_entry*, %struct.unwind_table_entry*)* @unwind_table_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_table_sort(%struct.unwind_table_entry* %0, %struct.unwind_table_entry* %1) #0 {
  %3 = alloca %struct.unwind_table_entry*, align 8
  %4 = alloca %struct.unwind_table_entry*, align 8
  %5 = alloca %struct.unwind_table_entry, align 8
  %6 = alloca %struct.unwind_table_entry*, align 8
  %7 = alloca %struct.unwind_table_entry*, align 8
  store %struct.unwind_table_entry* %0, %struct.unwind_table_entry** %3, align 8
  store %struct.unwind_table_entry* %1, %struct.unwind_table_entry** %4, align 8
  %8 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %9 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %8, i64 1
  store %struct.unwind_table_entry* %9, %struct.unwind_table_entry** %6, align 8
  br label %10

10:                                               ; preds = %57, %2
  %11 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %12 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %4, align 8
  %13 = icmp ult %struct.unwind_table_entry* %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %16 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %15, i64 0
  %17 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %20 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %19, i64 -1
  %21 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %14
  %25 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %26 = bitcast %struct.unwind_table_entry* %5 to i8*
  %27 = bitcast %struct.unwind_table_entry* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  store %struct.unwind_table_entry* %28, %struct.unwind_table_entry** %7, align 8
  br label %29

29:                                               ; preds = %50, %24
  %30 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %31 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %30, i64 0
  %32 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %33 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %32, i64 -1
  %34 = bitcast %struct.unwind_table_entry* %31 to i8*
  %35 = bitcast %struct.unwind_table_entry* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %37 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %36, i32 -1
  store %struct.unwind_table_entry* %37, %struct.unwind_table_entry** %7, align 8
  br label %38

38:                                               ; preds = %29
  %39 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %40 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %41 = icmp ugt %struct.unwind_table_entry* %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %46 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %45, i64 -1
  %47 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %44, %48
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i1 [ false, %38 ], [ %49, %42 ]
  br i1 %51, label %29, label %52

52:                                               ; preds = %50
  %53 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %7, align 8
  %54 = bitcast %struct.unwind_table_entry* %53 to i8*
  %55 = bitcast %struct.unwind_table_entry* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  br label %56

56:                                               ; preds = %52, %14
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %6, align 8
  %59 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %58, i32 1
  store %struct.unwind_table_entry* %59, %struct.unwind_table_entry** %6, align 8
  br label %10

60:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
