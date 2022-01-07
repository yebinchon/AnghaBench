; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_usbstream_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_usbstream_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i32, i32, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@PVR2_PATHWAY_DIGITAL = common dso_local global i64 0, align 8
@PVR2_DIGITAL_SCHEME_ONAIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"state_usbstream_run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_usbstream_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_usbstream_run(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %9
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %36 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %34, %28
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %159

65:                                               ; preds = %59, %54, %49, %46
  %66 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %67 = call i64 @pvr2_hdw_cmd_usbstream(%struct.pvr2_hdw* %66, i32 0)
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %154

70:                                               ; preds = %1
  %71 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %72 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %77 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %82 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %75, %70
  store i32 0, i32* %2, align 4
  br label %159

86:                                               ; preds = %80
  %87 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %88 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %94 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %99 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %92
  store i32 0, i32* %2, align 4
  br label %159

103:                                              ; preds = %97
  br label %146

104:                                              ; preds = %86
  %105 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %106 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %145

110:                                              ; preds = %104
  %111 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %112 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %110
  %118 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %119 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %159

123:                                              ; preds = %117
  %124 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %125 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %159

129:                                              ; preds = %123
  %130 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %131 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PVR2_DIGITAL_SCHEME_ONAIR, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %139 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %159

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %129
  br label %145

145:                                              ; preds = %144, %110, %104
  br label %146

146:                                              ; preds = %145, %103
  %147 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %148 = call i64 @pvr2_hdw_cmd_usbstream(%struct.pvr2_hdw* %147, i32 1)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %159

151:                                              ; preds = %146
  %152 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %153 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %65
  %155 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %156 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @trace_stbit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %157)
  store i32 1, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %150, %142, %128, %122, %102, %85, %64
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @pvr2_hdw_cmd_usbstream(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
