; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_decoder_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_decoder_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i64, i64, %struct.TYPE_4__, i64, %struct.TYPE_4__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i8* }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@TIME_MSEC_DECODER_WAIT = common dso_local global i32 0, align 4
@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@PVR2_CLIENT_ID_SAA7115 = common dso_local global i64 0, align 8
@TIME_MSEC_DECODER_STABILIZATION_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"state_decoder_quiescent\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"state_decoder_run\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"state_decoder_ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_decoder_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_decoder_run(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 12
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 13
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %176

29:                                               ; preds = %23, %18, %13
  br label %30

30:                                               ; preds = %29, %8
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %37 = call i64 @pvr2_decoder_enable(%struct.pvr2_hdw* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 7
  %45 = call i32 @del_timer_sync(%struct.TYPE_4__* %44)
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 5
  %48 = call i32 @del_timer_sync(%struct.TYPE_4__* %47)
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %50 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  br label %163

51:                                               ; preds = %1
  %52 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %53 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %51
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 7
  %59 = call i32 @timer_pending(%struct.TYPE_4__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %56
  %62 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %63 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** @jiffies, align 8
  %68 = load i32, i32* @HZ, align 4
  %69 = load i32, i32* @TIME_MSEC_DECODER_WAIT, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %70, 1000
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %67, i64 %72
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %78 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %77, i32 0, i32 7
  %79 = call i32 @add_timer(%struct.TYPE_4__* %78)
  br label %80

80:                                               ; preds = %66, %61
  br label %81

81:                                               ; preds = %80, %56
  store i32 0, i32* %2, align 4
  br label %176

82:                                               ; preds = %51
  %83 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %84 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %89 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %118, label %93

93:                                               ; preds = %87
  %94 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %95 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %94, i32 0, i32 12
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %100 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %98
  %104 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %105 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %110 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %115 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113, %108, %103, %98, %93, %87, %82
  store i32 0, i32* %2, align 4
  br label %176

119:                                              ; preds = %113
  %120 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %121 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %120, i32 0, i32 7
  %122 = call i32 @del_timer_sync(%struct.TYPE_4__* %121)
  %123 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %124 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %176

128:                                              ; preds = %119
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %130 = call i64 @pvr2_decoder_enable(%struct.pvr2_hdw* %129, i32 1)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %176

133:                                              ; preds = %128
  %134 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %135 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %137 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %139 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %141 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PVR2_CLIENT_ID_SAA7115, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %133
  %146 = load i8*, i8** @jiffies, align 8
  %147 = load i32, i32* @HZ, align 4
  %148 = load i32, i32* @TIME_MSEC_DECODER_STABILIZATION_WAIT, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sdiv i32 %149, 1000
  %151 = sext i32 %150 to i64
  %152 = getelementptr i8, i8* %146, i64 %151
  %153 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %154 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %157 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %156, i32 0, i32 5
  %158 = call i32 @add_timer(%struct.TYPE_4__* %157)
  br label %162

159:                                              ; preds = %133
  %160 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %161 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %160, i32 0, i32 2
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %145
  br label %163

163:                                              ; preds = %162, %38
  %164 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %165 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @trace_stbit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %169 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @trace_stbit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %173 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @trace_stbit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  store i32 1, i32* %2, align 4
  br label %176

176:                                              ; preds = %163, %132, %127, %118, %81, %28
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @pvr2_decoder_enable(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
