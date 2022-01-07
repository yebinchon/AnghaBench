; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.lpfc_pgp* }
%struct.lpfc_pgp = type { i32 }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"0315 Ring %d issue: portCmdGet %d is bigger than cmd ring %d\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HS_FFER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*)* @lpfc_sli_next_iocb_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lpfc_sli_next_iocb_slot(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_pgp*, align 8
  %7 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 3
  %10 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %9, align 8
  %11 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %10, i64 %13
  store %struct.lpfc_pgp* %14, %struct.lpfc_pgp** %6, align 8
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %31, %2
  %46 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %120

60:                                               ; preds = %45
  %61 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le32_to_cpu(i32 %63)
  %65 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i64 %64, i64* %68, align 8
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %60
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load i32, i32* @LOG_SLI, align 4
  %83 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %90, i64 %91)
  %93 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @HA_ERATT, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @HS_FFER3, align 4
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %104)
  store i32* null, i32** %3, align 8
  br label %124

106:                                              ; preds = %60
  %107 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %108 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %113 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %111, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  store i32* null, i32** %3, align 8
  br label %124

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %45
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %123 = call i32* @lpfc_cmd_iocb(%struct.lpfc_hba* %121, %struct.lpfc_sli_ring* %122)
  store i32* %123, i32** %3, align 8
  br label %124

124:                                              ; preds = %120, %118, %79
  %125 = load i32*, i32** %3, align 8
  ret i32* %125
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

declare dso_local i32* @lpfc_cmd_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
