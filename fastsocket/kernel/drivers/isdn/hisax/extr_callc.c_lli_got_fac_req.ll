; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_got_fac_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_got_fac_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Channel = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@EV_SUSPEND = common dso_local global i32 0, align 4
@ST_NULL = common dso_local global i32 0, align 4
@EV_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Channel*, %struct.TYPE_8__*)* @lli_got_fac_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_got_fac_req(%struct.Channel* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.Channel*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.Channel* %0, %struct.Channel** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  br label %100

19:                                               ; preds = %11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %100

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %100

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %100 [
    i32 4, label %41
    i32 5, label %62
  ]

41:                                               ; preds = %35
  %42 = load %struct.Channel*, %struct.Channel** %3, align 8
  %43 = getelementptr inbounds %struct.Channel, %struct.Channel* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @strncpy(i32 %45, i32* %49, i32 %55)
  %57 = load %struct.Channel*, %struct.Channel** %3, align 8
  %58 = getelementptr inbounds %struct.Channel, %struct.Channel* %57, i32 0, i32 1
  %59 = load i32, i32* @EV_SUSPEND, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = call i32 @FsmEvent(%struct.TYPE_9__* %58, i32 %59, %struct.TYPE_8__* %60)
  br label %100

62:                                               ; preds = %35
  %63 = load %struct.Channel*, %struct.Channel** %3, align 8
  %64 = getelementptr inbounds %struct.Channel, %struct.Channel* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @strncpy(i32 %66, i32* %70, i32 %76)
  %78 = load %struct.Channel*, %struct.Channel** %3, align 8
  %79 = getelementptr inbounds %struct.Channel, %struct.Channel* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ST_NULL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %62
  %85 = load %struct.Channel*, %struct.Channel** %3, align 8
  %86 = getelementptr inbounds %struct.Channel, %struct.Channel* %85, i32 0, i32 1
  %87 = load i32, i32* @EV_RESUME, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = call i32 @FsmEvent(%struct.TYPE_9__* %86, i32 %87, %struct.TYPE_8__* %88)
  br label %99

90:                                               ; preds = %62
  %91 = load %struct.Channel*, %struct.Channel** %3, align 8
  %92 = getelementptr inbounds %struct.Channel, %struct.Channel* %91, i32 0, i32 0
  %93 = call i32 @FsmDelTimer(i32* %92, i32 72)
  %94 = load %struct.Channel*, %struct.Channel** %3, align 8
  %95 = getelementptr inbounds %struct.Channel, %struct.Channel* %94, i32 0, i32 0
  %96 = load i32, i32* @EV_RESUME, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = call i32 @FsmAddTimer(i32* %95, i32 80, i32 %96, %struct.TYPE_8__* %97, i32 73)
  br label %99

99:                                               ; preds = %90, %84
  br label %100

100:                                              ; preds = %18, %26, %34, %35, %99, %41
  ret void
}

declare dso_local i32 @strncpy(i32, i32*, i32) #1

declare dso_local i32 @FsmEvent(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
