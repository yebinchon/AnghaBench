; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (i8*, i64, i32)*, i32 }

@MPI2_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_END_OF_BUFFER = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_HOST_TO_IOC = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_LAST_ELEMENT = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_END_OF_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i8*, i32, i64, i32, i64)* @_base_build_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_build_sg(%struct.MPT3SAS_ADAPTER* %0, i8* %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %6
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @_base_build_zero_len_sge(%struct.MPT3SAS_ADAPTER* %20, i8* %21)
  br label %122

23:                                               ; preds = %16, %6
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load i64, i64* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 8
  %31 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @MPI2_SGE_FLAGS_HOST_TO_IOC, align 8
  %34 = or i64 %32, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @MPI2_SGE_FLAGS_SHIFT, align 8
  %37 = shl i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 0
  %40 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %10, align 8
  %44 = or i64 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %40(i8* %41, i64 %44, i32 %45)
  %47 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %48 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 8
  %54 = load i64, i64* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_LIST, align 8
  %59 = or i64 %57, %58
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @MPI2_SGE_FLAGS_SHIFT, align 8
  %62 = shl i64 %60, %61
  store i64 %62, i64* %13, align 8
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %63, i32 0, i32 0
  %65 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = or i64 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = call i32 %65(i8* %66, i64 %69, i32 %70)
  br label %122

72:                                               ; preds = %26, %23
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i64, i64* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 8
  %77 = load i64, i64* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 8
  %78 = or i64 %76, %77
  %79 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_LIST, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* @MPI2_SGE_FLAGS_HOST_TO_IOC, align 8
  %84 = or i64 %82, %83
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @MPI2_SGE_FLAGS_SHIFT, align 8
  %87 = shl i64 %85, %86
  store i64 %87, i64* %13, align 8
  %88 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %88, i32 0, i32 0
  %90 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %10, align 8
  %94 = or i64 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = call i32 %90(i8* %91, i64 %94, i32 %95)
  br label %121

97:                                               ; preds = %72
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load i64, i64* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 8
  %102 = load i64, i64* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 8
  %103 = or i64 %101, %102
  %104 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 8
  %105 = or i64 %103, %104
  %106 = load i64, i64* @MPI2_SGE_FLAGS_END_OF_LIST, align 8
  %107 = or i64 %105, %106
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* @MPI2_SGE_FLAGS_SHIFT, align 8
  %110 = shl i64 %108, %109
  store i64 %110, i64* %13, align 8
  %111 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %112 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %111, i32 0, i32 0
  %113 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %112, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %12, align 8
  %117 = or i64 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = call i32 %113(i8* %114, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %100, %97
  br label %121

121:                                              ; preds = %120, %75
  br label %122

122:                                              ; preds = %19, %121, %29
  ret void
}

declare dso_local i32 @_base_build_zero_len_sge(%struct.MPT3SAS_ADAPTER*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
