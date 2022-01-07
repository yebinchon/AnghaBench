; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64, i64, %struct.TYPE_4__, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"state_encoder_waitok\00", align 1
@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TIME_MSEC_ENCODER_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"state_encoder_config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_encoder_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_encoder_config(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %142

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %27 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @trace_stbit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 4
  %36 = call i32 @del_timer_sync(%struct.TYPE_4__* %35)
  br label %137

37:                                               ; preds = %1
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %39 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %73, label %48

48:                                               ; preds = %42
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %50 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %55 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %60 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %65 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %70 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %68, %63, %58, %53, %48, %42, %37
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 4
  %76 = call i64 @timer_pending(%struct.TYPE_4__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %80 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %79, i32 0, i32 4
  %81 = call i32 @del_timer_sync(%struct.TYPE_4__* %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %84 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %89 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %91 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @trace_stbit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 1, i32* %2, align 4
  br label %142

94:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %142

95:                                               ; preds = %68
  %96 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %97 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %95
  %101 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %102 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %101, i32 0, i32 4
  %103 = call i64 @timer_pending(%struct.TYPE_4__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %100
  %106 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %107 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i32, i32* @HZ, align 4
  %113 = load i32, i32* @TIME_MSEC_ENCODER_WAIT, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sdiv i32 %114, 1000
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %111, %116
  %118 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %119 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %122 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %121, i32 0, i32 4
  %123 = call i32 @add_timer(%struct.TYPE_4__* %122)
  br label %124

124:                                              ; preds = %110, %105
  br label %125

125:                                              ; preds = %124, %100
  store i32 0, i32* %2, align 4
  br label %142

126:                                              ; preds = %95
  %127 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %128 = call i32 @pvr2_encoder_configure(%struct.pvr2_hdw* %127)
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %130 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %135 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136, %25
  %138 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %139 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @trace_stbit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %137, %125, %94, %87, %23
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @trace_stbit(i8*, i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @pvr2_encoder_configure(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
