; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_queue = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i64**)* @qla82xx_minidump_process_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_queue(%struct.TYPE_7__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.qla82xx_md_entry_queue*, align 8
  %18 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64** %2, i64*** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %7, align 8
  store i64 0, i64* %13, align 8
  %22 = load i64**, i64*** %6, align 8
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %18, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to %struct.qla82xx_md_entry_queue*
  store %struct.qla82xx_md_entry_queue* %25, %struct.qla82xx_md_entry_queue** %17, align 8
  %26 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %27 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %30 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %34 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %38 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %40

40:                                               ; preds = %78, %3
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %45, i64 %46, i64 %47, i32 1)
  %49 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %50 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  store i64 0, i64* %15, align 8
  br label %52

52:                                               ; preds = %68, %44
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %57, i64 %58, i64 0, i32 0)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @cpu_to_le32(i64 %60)
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %18, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %18, align 8
  store i64 %62, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %15, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %15, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.qla82xx_md_entry_queue*, %struct.qla82xx_md_entry_queue** %17, align 8
  %73 = getelementptr inbounds %struct.qla82xx_md_entry_queue, %struct.qla82xx_md_entry_queue* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %40

81:                                               ; preds = %40
  %82 = load i64*, i64** %18, align 8
  %83 = load i64**, i64*** %6, align 8
  store i64* %82, i64** %83, align 8
  ret void
}

declare dso_local i64 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
