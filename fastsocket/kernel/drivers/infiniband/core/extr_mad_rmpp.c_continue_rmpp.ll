; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_continue_rmpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_continue_rmpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mad_rmpp_recv = type { i64, i32, i32, i32, i32, %struct.ib_mad_recv_buf*, %struct.TYPE_4__* }
%struct.ib_mad_recv_buf = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RMPP_STATE_TIMEOUT = common dso_local global i64 0, align 8
@RMPP_STATE_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_recv_wc* (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @continue_rmpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_recv_wc* @continue_rmpp(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_recv_wc*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.mad_rmpp_recv*, align 8
  %7 = alloca %struct.ib_mad_recv_buf*, align 8
  %8 = alloca %struct.ib_mad_recv_wc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  %11 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %12 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %13 = call %struct.mad_rmpp_recv* @acquire_rmpp_recv(%struct.ib_mad_agent_private* %11, %struct.ib_mad_recv_wc* %12)
  store %struct.mad_rmpp_recv* %13, %struct.mad_rmpp_recv** %6, align 8
  %14 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %15 = icmp ne %struct.mad_rmpp_recv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %142

17:                                               ; preds = %2
  %18 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %19 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %18, i32 0, i32 0
  %20 = call i32 @get_seg_num(%struct.TYPE_5__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %22 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %21, i32 0, i32 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %26 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RMPP_STATE_TIMEOUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %33 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %17
  br label %134

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %40 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %45 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RMPP_STATE_COMPLETE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43, %37
  %50 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %51 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %50, i32 0, i32 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %55 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %56 = call i32 @ack_recv(%struct.mad_rmpp_recv* %54, %struct.ib_mad_recv_wc* %55)
  br label %139

57:                                               ; preds = %43
  %58 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %59 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %58, i32 0, i32 6
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.ib_mad_recv_buf* @find_seg_location(i32* %61, i32 %62)
  store %struct.ib_mad_recv_buf* %63, %struct.ib_mad_recv_buf** %7, align 8
  %64 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %7, align 8
  %65 = icmp ne %struct.ib_mad_recv_buf* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %134

67:                                               ; preds = %57
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %8, align 8
  %68 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %69 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %7, align 8
  %72 = getelementptr inbounds %struct.ib_mad_recv_buf, %struct.ib_mad_recv_buf* %71, i32 0, i32 0
  %73 = call i32 @list_add(i32* %70, i32* %72)
  %74 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %75 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %74, i32 0, i32 5
  %76 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %75, align 8
  %77 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %7, align 8
  %78 = icmp eq %struct.ib_mad_recv_buf* %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %67
  %80 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %81 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %82 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %81, i32 0, i32 0
  %83 = call i32 @update_seg_num(%struct.mad_rmpp_recv* %80, %struct.TYPE_5__* %82)
  %84 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %85 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %84, i32 0, i32 5
  %86 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %85, align 8
  %87 = call i64 @get_last_flag(%struct.ib_mad_recv_buf* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  %90 = load i64, i64* @RMPP_STATE_COMPLETE, align 8
  %91 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %92 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %94 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %93, i32 0, i32 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %98 = call %struct.ib_mad_recv_wc* @complete_rmpp(%struct.mad_rmpp_recv* %97)
  store %struct.ib_mad_recv_wc* %98, %struct.ib_mad_recv_wc** %8, align 8
  br label %130

99:                                               ; preds = %79
  %100 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %101 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %104 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %99
  %108 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %109 = call i64 @window_size(%struct.ib_mad_agent_private* %108)
  %110 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %111 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %117 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %116, i32 0, i32 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %121 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %122 = call i32 @ack_recv(%struct.mad_rmpp_recv* %120, %struct.ib_mad_recv_wc* %121)
  br label %130

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %67
  %126 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %127 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %126, i32 0, i32 4
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  br label %130

130:                                              ; preds = %125, %107, %89
  %131 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %132 = call i32 @deref_rmpp_recv(%struct.mad_rmpp_recv* %131)
  %133 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %8, align 8
  store %struct.ib_mad_recv_wc* %133, %struct.ib_mad_recv_wc** %3, align 8
  br label %145

134:                                              ; preds = %66, %36
  %135 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %136 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %135, i32 0, i32 4
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %134, %49
  %140 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %6, align 8
  %141 = call i32 @deref_rmpp_recv(%struct.mad_rmpp_recv* %140)
  br label %142

142:                                              ; preds = %139, %16
  %143 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %144 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %143)
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %3, align 8
  br label %145

145:                                              ; preds = %142, %130
  %146 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  ret %struct.ib_mad_recv_wc* %146
}

declare dso_local %struct.mad_rmpp_recv* @acquire_rmpp_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @get_seg_num(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ack_recv(%struct.mad_rmpp_recv*, %struct.ib_mad_recv_wc*) #1

declare dso_local %struct.ib_mad_recv_buf* @find_seg_location(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @update_seg_num(%struct.mad_rmpp_recv*, %struct.TYPE_5__*) #1

declare dso_local i64 @get_last_flag(%struct.ib_mad_recv_buf*) #1

declare dso_local %struct.ib_mad_recv_wc* @complete_rmpp(%struct.mad_rmpp_recv*) #1

declare dso_local i64 @window_size(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @deref_rmpp_recv(%struct.mad_rmpp_recv*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
