; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_extra_ring_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_extra_ring_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SLI2_IOCB_CMD_R1XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_RSP_R1XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_CMD_R3XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_RSP_R3XTRA_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_extra_ring_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_extra_ring_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 2
  store %struct.lpfc_sli* %6, %struct.lpfc_sli** %3, align 8
  %7 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %7, i32 0, i32 2
  %9 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %10 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %9, i64 %12
  store %struct.lpfc_sli_ring* %13, %struct.lpfc_sli_ring** %4, align 8
  %14 = load i64, i64* @SLI2_IOCB_CMD_R1XTRA_ENTRIES, align 8
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %20, %14
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i64, i64* @SLI2_IOCB_RSP_R1XTRA_ENTRIES, align 8
  %24 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %23
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load i64, i64* @SLI2_IOCB_CMD_R3XTRA_ENTRIES, align 8
  %33 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %32
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i64, i64* @SLI2_IOCB_RSP_R3XTRA_ENTRIES, align 8
  %42 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %41
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %50, i32 0, i32 2
  %52 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %51, align 8
  %53 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %52, i64 %55
  store %struct.lpfc_sli_ring* %56, %struct.lpfc_sli_ring** %4, align 8
  %57 = load i64, i64* @SLI2_IOCB_CMD_R1XTRA_ENTRIES, align 8
  %58 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %57
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i64, i64* @SLI2_IOCB_RSP_R1XTRA_ENTRIES, align 8
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %66
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load i64, i64* @SLI2_IOCB_CMD_R3XTRA_ENTRIES, align 8
  %76 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %77 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %75
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i64, i64* @SLI2_IOCB_RSP_R3XTRA_ENTRIES, align 8
  %85 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %86 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %84
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %93, i32 0, i32 0
  store i32 4096, i32* %94, align 8
  %95 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %104, i32* %109, align 4
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %114 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 8
  %118 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
