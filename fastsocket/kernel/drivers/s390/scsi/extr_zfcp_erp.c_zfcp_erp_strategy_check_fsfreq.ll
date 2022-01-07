; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_fsfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_fsfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.TYPE_2__*, %struct.zfcp_adapter* }
%struct.TYPE_2__ = type { i32, %struct.zfcp_erp_action* }
%struct.zfcp_adapter = type { i32 }

@ZFCP_STATUS_ERP_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erscf_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erscf_2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_strategy_check_fsfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %4 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %4, i32 0, i32 2
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %3, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %83

12:                                               ; preds = %1
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @zfcp_reqlist_find_safe(%struct.zfcp_adapter* %16, %struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %12
  %23 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %24 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %26, align 8
  %28 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %29 = icmp eq %struct.zfcp_erp_action* %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %22
  %31 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %32 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %35 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %41 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 8
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %48 = call i32 @zfcp_dbf_rec_action(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_erp_action* %47)
  %49 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %50 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %52, align 8
  br label %53

53:                                               ; preds = %39, %30
  %54 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %55 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %62 = call i32 @zfcp_dbf_rec_action(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_erp_action* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %65 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %74 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %73, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %74, align 8
  br label %75

75:                                               ; preds = %72, %63
  br label %79

76:                                               ; preds = %22, %12
  %77 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %78 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %77, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %78, align 8
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @zfcp_reqlist_find_safe(%struct.zfcp_adapter*, %struct.TYPE_2__*) #1

declare dso_local i32 @zfcp_dbf_rec_action(i8*, %struct.zfcp_erp_action*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
