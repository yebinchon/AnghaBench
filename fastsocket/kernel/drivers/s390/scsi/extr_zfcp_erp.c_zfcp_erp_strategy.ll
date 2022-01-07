; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i32 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ZFCP_STATUS_ERP_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_ERP_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_LOWMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erstgy1\00", align 1
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @read_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %9)
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 0
  %13 = call i32 @write_lock(i32* %12)
  %14 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %15 = call i32 @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action* %14)
  %16 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %24 = call i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %23)
  %25 = load i32, i32* @ZFCP_ERP_DISMISSED, align 4
  store i32 %25, i32* %3, align 4
  br label %139

26:                                               ; preds = %1
  %27 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %26
  %36 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %37 = call i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action* %36)
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %38, i32 0, i32 0
  %40 = call i32 @write_unlock(i32* %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @read_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %41)
  %43 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %44 = call i32 @zfcp_erp_strategy_do_action(%struct.zfcp_erp_action* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @read_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %45)
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 0
  %49 = call i32 @write_lock(i32* %48)
  %50 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %51 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  store i32 129, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %3, align 4
  switch i32 %58, label %110 [
    i32 128, label %59
    i32 129, label %91
  ]

59:                                               ; preds = %57
  %60 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %61 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %59
  %67 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %72 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %73 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %66, %59
  %77 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %86 = call i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %85, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %90

87:                                               ; preds = %76
  %88 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %89 = call i32 @zfcp_erp_strategy_memwait(%struct.zfcp_erp_action* %88)
  store i32 129, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %139

91:                                               ; preds = %57
  %92 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %93 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %106 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %98, %91
  br label %139

110:                                              ; preds = %57
  br label %111

111:                                              ; preds = %110, %33
  %112 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @zfcp_erp_strategy_check_target(%struct.zfcp_erp_action* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %116 = call i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %115)
  %117 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action* %117, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %139

124:                                              ; preds = %111
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %130 = call i32 @zfcp_erp_strategy_followup_success(%struct.zfcp_erp_action* %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %137 = call i32 @zfcp_erp_strategy_followup_failed(%struct.zfcp_erp_action* %136)
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138, %123, %109, %90, %22
  %140 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %141 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %140, i32 0, i32 0
  %142 = call i32 @write_unlock(i32* %141)
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @read_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), i64 %143)
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 129
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @zfcp_erp_action_cleanup(%struct.zfcp_erp_action* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_erp_strategy_do_action(%struct.zfcp_erp_action*) #1

declare dso_local i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_strategy_memwait(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_strategy_check_target(%struct.zfcp_erp_action*, i32) #1

declare dso_local i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action*, i32) #1

declare dso_local i32 @zfcp_erp_strategy_followup_success(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_strategy_followup_failed(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_cleanup(%struct.zfcp_erp_action*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
