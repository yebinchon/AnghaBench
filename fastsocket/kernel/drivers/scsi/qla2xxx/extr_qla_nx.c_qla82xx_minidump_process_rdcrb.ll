; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdcrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_rdcrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_crb = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i64**)* @qla82xx_minidump_process_rdcrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_rdcrb(%struct.TYPE_5__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla82xx_md_entry_crb*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64** %2, i64*** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %7, align 8
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %14, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.qla82xx_md_entry_crb*
  store %struct.qla82xx_md_entry_crb* %21, %struct.qla82xx_md_entry_crb** %13, align 8
  %22 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %13, align 8
  %23 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %13, align 8
  %26 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.qla82xx_md_entry_crb*, %struct.qla82xx_md_entry_crb** %13, align 8
  %30 = getelementptr inbounds %struct.qla82xx_md_entry_crb, %struct.qla82xx_md_entry_crb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %53, %3
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %37, i64 %38, i32 0, i32 0)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load i64*, i64** %14, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %14, align 8
  store i64 %42, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @cpu_to_le32(i64 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = load i64*, i64** %14, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %14, align 8
  store i64 %47, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %36
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load i64*, i64** %14, align 8
  %58 = load i64**, i64*** %6, align 8
  store i64* %57, i64** %58, align 8
  ret void
}

declare dso_local i64 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
