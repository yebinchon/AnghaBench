; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_find_next_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_find_next_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.lpfc_vector_map_info* }
%struct.lpfc_vector_map_info = type { i64, i64 }

@LPFC_VECTOR_MAP_EMPTY = common dso_local global i64 0, align 8
@lpfc_used_cpu = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64)* @lpfc_find_next_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_find_next_cpu(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpfc_vector_map_info*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %10, align 8
  store %struct.lpfc_vector_map_info* %11, %struct.lpfc_vector_map_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @cpu_online(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load i64*, i64** @lpfc_used_cpu, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %118

45:                                               ; preds = %37, %29, %23
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %47, i32 1
  store %struct.lpfc_vector_map_info* %48, %struct.lpfc_vector_map_info** %6, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %12

52:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load i64*, i64** @lpfc_used_cpu, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %70 = load i64*, i64** @lpfc_used_cpu, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %81, align 8
  store %struct.lpfc_vector_map_info* %82, %struct.lpfc_vector_map_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %112, %78
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @cpu_online(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %118

108:                                              ; preds = %100, %94
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %6, align 8
  %111 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %110, i32 1
  store %struct.lpfc_vector_map_info* %111, %struct.lpfc_vector_map_info** %6, align 8
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %106, %43
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @cpu_online(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
