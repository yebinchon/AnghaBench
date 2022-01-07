; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_mad_complete_send_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_mad_complete_send_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i64, i32, i64, i32, %struct.ib_mad_agent_private* }
%struct.ib_mad_agent_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.ib_mad_send_wc*)*, i64 }
%struct.ib_mad_send_wc = type { i64 }

@IB_RMPP_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_UNHANDLED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_mad_send_wc*, align 8
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %4, align 8
  %8 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %8, i32 0, i32 4
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %9, align 8
  store %struct.ib_mad_agent_private* %10, %struct.ib_mad_agent_private** %5, align 8
  %11 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %12 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %22 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %23 = call i32 @ib_process_rmpp_send_wc(%struct.ib_mad_send_wr_private* %21, %struct.ib_mad_send_wc* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IB_RMPP_RESULT_CONSUMED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %124

28:                                               ; preds = %20
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IB_RMPP_RESULT_UNHANDLED, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %33 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_WC_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %39 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_WC_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %45 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %48 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %50 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %55 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %43, %37, %31
  %59 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %60 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %66 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %71 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %76 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IB_WC_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %82 = call i32 @wait_for_response(%struct.ib_mad_send_wr_private* %81)
  br label %83

83:                                               ; preds = %80, %74, %69, %64
  br label %124

84:                                               ; preds = %58
  %85 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %86 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %85, i32 0, i32 3
  %87 = call i32 @list_del(i32* %86)
  %88 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %89 = call i32 @adjust_timeout(%struct.ib_mad_agent_private* %88)
  %90 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %91 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %90, i32 0, i32 0
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %95 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IB_WC_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %84
  %100 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %101 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %104 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %84
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @IB_RMPP_RESULT_INTERNAL, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %111 = call i32 @ib_rmpp_send_handler(%struct.ib_mad_send_wc* %110)
  br label %121

112:                                              ; preds = %105
  %113 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %114 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_2__*, %struct.ib_mad_send_wc*)*, i32 (%struct.TYPE_2__*, %struct.ib_mad_send_wc*)** %115, align 8
  %117 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %118 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %117, i32 0, i32 1
  %119 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %120 = call i32 %116(%struct.TYPE_2__* %118, %struct.ib_mad_send_wc* %119)
  br label %121

121:                                              ; preds = %112, %109
  %122 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %123 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %122)
  br label %129

124:                                              ; preds = %83, %27
  %125 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %126 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %125, i32 0, i32 0
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %124, %121
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ib_process_rmpp_send_wc(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

declare dso_local i32 @wait_for_response(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @adjust_timeout(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_rmpp_send_handler(%struct.ib_mad_send_wc*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
