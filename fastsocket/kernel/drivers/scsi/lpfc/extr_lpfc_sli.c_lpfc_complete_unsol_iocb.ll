; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_complete_unsol_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_complete_unsol_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i64 }
%struct.lpfc_iocbq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*, i64, i64)* @lpfc_complete_unsol_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_complete_unsol_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %8, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %14 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %25, align 8
  %27 = icmp ne i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %33, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %36 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %37 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %38 = call i32 %34(%struct.lpfc_hba* %35, %struct.lpfc_sli_ring* %36, %struct.lpfc_iocbq* %37)
  br label %39

39:                                               ; preds = %28, %20
  store i32 1, i32* %6, align 4
  br label %98

40:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %94, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %41
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %47
  %59 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %58
  %70 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %71 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %76, align 8
  %78 = icmp ne i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %81 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)** %86, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %89 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %91 = call i32 %87(%struct.lpfc_hba* %88, %struct.lpfc_sli_ring* %89, %struct.lpfc_iocbq* %90)
  br label %92

92:                                               ; preds = %79, %69
  store i32 1, i32* %6, align 4
  br label %98

93:                                               ; preds = %58, %47
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %41

97:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %92, %39
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
