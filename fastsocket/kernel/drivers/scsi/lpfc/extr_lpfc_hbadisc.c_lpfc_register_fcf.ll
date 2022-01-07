; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_fcf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_fcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }

@FCF_AVAILABLE = common dso_local global i32 0, align 4
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_RR_INPROG = common dso_local global i32 0, align 4
@FCF_REGISTERED = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@FCF_IN_USE = common dso_local global i32 0, align 4
@LPFC_FLOGI = common dso_local global i64 0, align 8
@FC_FABRIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_reg_fcfi = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_register_fcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_register_fcf(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FCF_AVAILABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FCF_TS_INPROG, align 4
  %17 = load i32, i32* @FCF_RR_INPROG, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock_irq(i32* %25)
  br label %149

27:                                               ; preds = %1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FCF_REGISTERED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %27
  %36 = load i32, i32* @FCF_SCAN_DONE, align 4
  %37 = load i32, i32* @FCF_IN_USE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @FCF_TS_INPROG, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 3
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LPFC_FLOGI, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %35
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FC_FABRIC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %57
  %67 = load i32, i32* @FCF_RR_INPROG, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = call i32 @lpfc_initial_flogi(%struct.TYPE_10__* %77)
  br label %149

79:                                               ; preds = %57, %35
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_irq(i32* %81)
  br label %149

83:                                               ; preds = %27
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.TYPE_9__* @mempool_alloc(i32 %89, i32 %90)
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %3, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %109, label %94

94:                                               ; preds = %83
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 2
  %97 = call i32 @spin_lock_irq(i32* %96)
  %98 = load i32, i32* @FCF_TS_INPROG, align 4
  %99 = load i32, i32* @FCF_RR_INPROG, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 2
  %108 = call i32 @spin_unlock_irq(i32* %107)
  br label %149

109:                                              ; preds = %83
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = call i32 @lpfc_reg_fcfi(%struct.lpfc_hba* %110, %struct.TYPE_9__* %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %117, align 8
  %118 = load i32, i32* @lpfc_mbx_cmpl_reg_fcfi, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = load i32, i32* @MBX_NOWAIT, align 4
  %124 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %121, %struct.TYPE_9__* %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %109
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 2
  %131 = call i32 @spin_lock_irq(i32* %130)
  %132 = load i32, i32* @FCF_TS_INPROG, align 4
  %133 = load i32, i32* @FCF_RR_INPROG, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @mempool_free(%struct.TYPE_9__* %143, i32 %146)
  br label %148

148:                                              ; preds = %128, %109
  br label %149

149:                                              ; preds = %148, %94, %79, %66, %15
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_initial_flogi(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_fcfi(%struct.lpfc_hba*, %struct.TYPE_9__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
