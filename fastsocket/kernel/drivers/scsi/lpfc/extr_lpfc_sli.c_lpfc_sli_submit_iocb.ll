; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_submit_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_submit_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"IOCB cmd ring:   wd4:x%08x wd6:x%08x wd7:x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32*, %struct.lpfc_iocbq*)* @lpfc_sli_submit_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_submit_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i32* %2, %struct.lpfc_iocbq* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.lpfc_iocbq* %3, %struct.lpfc_iocbq** %8, align 8
  %9 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %10 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPFC_ELS_RING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_10__* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_10__* %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_10__* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %28, %18
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 1
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_10__* %48, i32* %49, i32 %52)
  %54 = call i32 (...) @wmb()
  %55 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %56 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %46
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %66 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %67 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %68 = call i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %65, %struct.lpfc_sli_ring* %66, %struct.lpfc_iocbq* %67)
  br label %73

69:                                               ; preds = %46
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %72 = call i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba* %70, %struct.lpfc_iocbq* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = call i32 @writel(i32 %87, i32* %95)
  ret void
}

declare dso_local i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
