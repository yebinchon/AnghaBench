; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_resume_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_resume_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lpfc_sli_ring = type { i64, i32 }
%struct.lpfc_iocbq = type { i32 }

@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*)* @lpfc_sli_resume_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_resume_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = call i64 @lpfc_is_link_up(%struct.lpfc_hba* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %2
  %11 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %10
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %15
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %24, %15
  br label %33

33:                                               ; preds = %45, %32
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %36 = call i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba* %34, %struct.lpfc_sli_ring* %35)
  store i32* %36, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %41 = call %struct.lpfc_iocbq* @lpfc_sli_ringtx_get(%struct.lpfc_hba* %39, %struct.lpfc_sli_ring* %40)
  store %struct.lpfc_iocbq* %41, %struct.lpfc_iocbq** %6, align 8
  %42 = icmp ne %struct.lpfc_iocbq* %41, null
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %50 = call i32 @lpfc_sli_submit_iocb(%struct.lpfc_hba* %46, %struct.lpfc_sli_ring* %47, i32* %48, %struct.lpfc_iocbq* %49)
  br label %33

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %57 = call i32 @lpfc_sli_update_ring(%struct.lpfc_hba* %55, %struct.lpfc_sli_ring* %56)
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %61 = call i32 @lpfc_sli_update_full_ring(%struct.lpfc_hba* %59, %struct.lpfc_sli_ring* %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %24, %10, %2
  ret void
}

declare dso_local i64 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_ringtx_get(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_sli_submit_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_update_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_sli_update_full_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
