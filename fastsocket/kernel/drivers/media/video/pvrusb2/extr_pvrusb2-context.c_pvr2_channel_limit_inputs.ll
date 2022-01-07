; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_limit_inputs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_limit_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_channel = type { i32, %struct.TYPE_4__*, %struct.pvr2_channel*, %struct.pvr2_hdw* }
%struct.TYPE_4__ = type { %struct.pvr2_channel* }
%struct.pvr2_hdw = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_channel_limit_inputs(%struct.pvr2_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvr2_channel*, align 8
  %10 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_channel* %0, %struct.pvr2_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %11, i32 0, i32 3
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %12, align 8
  store %struct.pvr2_hdw* %13, %struct.pvr2_hdw** %10, align 8
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %10, align 8
  %15 = call i32 @pvr2_hdw_get_input_available(%struct.pvr2_hdw* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %21 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %27 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @pvr2_context_enter(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %35 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %37 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @pvr2_context_reset_input_limits(%struct.TYPE_4__* %38)
  br label %95

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %43 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.pvr2_channel*, %struct.pvr2_channel** %45, align 8
  store %struct.pvr2_channel* %46, %struct.pvr2_channel** %9, align 8
  br label %47

47:                                               ; preds = %67, %40
  %48 = load %struct.pvr2_channel*, %struct.pvr2_channel** %9, align 8
  %49 = icmp ne %struct.pvr2_channel* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load %struct.pvr2_channel*, %struct.pvr2_channel** %9, align 8
  %52 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %53 = icmp eq %struct.pvr2_channel* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50
  %56 = load %struct.pvr2_channel*, %struct.pvr2_channel** %9, align 8
  %57 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.pvr2_channel*, %struct.pvr2_channel** %9, align 8
  %63 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %60, %54
  %68 = load %struct.pvr2_channel*, %struct.pvr2_channel** %9, align 8
  %69 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %68, i32 0, i32 2
  %70 = load %struct.pvr2_channel*, %struct.pvr2_channel** %69, align 8
  store %struct.pvr2_channel* %70, %struct.pvr2_channel** %9, align 8
  br label %47

71:                                               ; preds = %47
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw* %83, i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %95

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %92 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %10, align 8
  %94 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %93)
  br label %95

95:                                               ; preds = %89, %88, %76, %33
  %96 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  %97 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @pvr2_context_exit(%struct.TYPE_4__* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %24
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @pvr2_hdw_get_input_available(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_context_enter(%struct.TYPE_4__*) #1

declare dso_local i32 @pvr2_context_reset_input_limits(%struct.TYPE_4__*) #1

declare dso_local i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_context_exit(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
