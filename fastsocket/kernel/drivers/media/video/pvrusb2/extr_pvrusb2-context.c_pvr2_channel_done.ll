; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_channel = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, %struct.pvr2_context* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.pvr2_context = type { %struct.TYPE_4__*, %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_channel_done(%struct.pvr2_channel* %0) #0 {
  %2 = alloca %struct.pvr2_channel*, align 8
  %3 = alloca %struct.pvr2_context*, align 8
  store %struct.pvr2_channel* %0, %struct.pvr2_channel** %2, align 8
  %4 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %4, i32 0, i32 4
  %6 = load %struct.pvr2_context*, %struct.pvr2_context** %5, align 8
  store %struct.pvr2_context* %6, %struct.pvr2_context** %3, align 8
  %7 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %8 = call i32 @pvr2_context_enter(%struct.pvr2_context* %7)
  %9 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %10 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %12 = call i32 @pvr2_channel_disclaim_stream(%struct.pvr2_channel* %11)
  %13 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %14 = call i32 @pvr2_context_reset_input_limits(%struct.pvr2_context* %13)
  %15 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %26, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %29 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %31, i32 0, i32 1
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %32, align 8
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %43 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %45, align 8
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %48 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %51 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %50, i32 0, i32 0
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %46, %38
  %53 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %54 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %56 = call i32 @pvr2_context_exit(%struct.pvr2_context* %55)
  ret void
}

declare dso_local i32 @pvr2_context_enter(%struct.pvr2_context*) #1

declare dso_local i32 @pvr2_channel_disclaim_stream(%struct.pvr2_channel*) #1

declare dso_local i32 @pvr2_context_reset_input_limits(%struct.pvr2_context*) #1

declare dso_local i32 @pvr2_context_exit(%struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
