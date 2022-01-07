; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_unset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_queue_unset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @lpfc_mq_destroy(%struct.lpfc_hba* %4, i32 %8)
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %10, i32 %14)
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lpfc_rq_destroy(%struct.lpfc_hba* %16, i32 %20, i32 %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %39, i32 %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %32

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %54, i32 %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %60, i32 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %79, i32 %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %72

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %53
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @lpfc_eq_destroy(%struct.lpfc_hba* %107, i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %100

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %93
  ret void
}

declare dso_local i32 @lpfc_mq_destroy(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_wq_destroy(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_rq_destroy(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_cq_destroy(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_eq_destroy(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
