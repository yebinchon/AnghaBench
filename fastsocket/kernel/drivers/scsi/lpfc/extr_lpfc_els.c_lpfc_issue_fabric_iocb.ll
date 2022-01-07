; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@lpfc_cmpl_fabric_iocb = common dso_local global i32* null, align 8
@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Fabric sched2:   ste:x%x\00", align 1
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_iocbq*)* @lpfc_issue_fabric_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %4, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 2
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %23, %14
  %31 = phi i1 [ false, %14 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = call i32 @atomic_inc(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %39
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** @lpfc_cmpl_fabric_iocb, align 8
  %53 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %65 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @lpfc_debugfs_disc_trc(%struct.TYPE_2__* %62, i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68, i32 0, i32 0)
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %71 = load i32, i32* @LPFC_ELS_RING, align 4
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %73 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %70, i32 %71, %struct.lpfc_iocbq* %72, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @IOCB_ERROR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %46
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %81, i32 0, i32 3
  store i32* %80, i32** %82, align 8
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = call i32 @atomic_dec(i32* %92)
  br label %94

94:                                               ; preds = %77, %46
  br label %110

95:                                               ; preds = %39
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 0
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %100, i32 0, i32 0
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 1
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %95, %94
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.TYPE_2__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
