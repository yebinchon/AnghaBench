; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_get_buff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_get_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabuf = type { i32 }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.hbq_dmabuf = type { %struct.lpfc_dmabuf }

@QUE_BUFTAG_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabuf* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32)* @lpfc_sli_get_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabuf* @lpfc_sli_get_buff(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_dmabuf*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hbq_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @QUE_BUFTAG_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.lpfc_dmabuf* @lpfc_sli_ring_taggedbuf_get(%struct.lpfc_hba* %14, %struct.lpfc_sli_ring* %15, i32 %16)
  store %struct.lpfc_dmabuf* %17, %struct.lpfc_dmabuf** %4, align 8
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_find(%struct.lpfc_hba* %19, i32 %20)
  store %struct.hbq_dmabuf* %21, %struct.hbq_dmabuf** %8, align 8
  %22 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %8, align 8
  %23 = icmp ne %struct.hbq_dmabuf* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %4, align 8
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %8, align 8
  %27 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %26, i32 0, i32 0
  store %struct.lpfc_dmabuf* %27, %struct.lpfc_dmabuf** %4, align 8
  br label %28

28:                                               ; preds = %25, %24, %13
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  ret %struct.lpfc_dmabuf* %29
}

declare dso_local %struct.lpfc_dmabuf* @lpfc_sli_ring_taggedbuf_get(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_find(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
