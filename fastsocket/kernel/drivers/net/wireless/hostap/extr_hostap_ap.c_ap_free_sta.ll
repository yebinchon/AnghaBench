; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_free_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_free_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32**, i32, i32* }
%struct.sta_info = type { i32, i32, %struct.TYPE_8__, i64, i32, %struct.sta_info*, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sta_info* }
%struct.TYPE_6__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%pM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_data*, %struct.sta_info*)* @ap_free_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_free_sta(%struct.ap_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca [20 x i8], align 16
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = call i32 @hostap_event_expired_sta(i32 %20, %struct.sta_info* %21)
  br label %23

23:                                               ; preds = %15, %10, %2
  %24 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %25 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %35 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %36 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @remove_proc_entry(i8* %34, i32* %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 5
  %42 = load %struct.sta_info*, %struct.sta_info** %41, align 8
  %43 = icmp ne %struct.sta_info* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 5
  %47 = load %struct.sta_info*, %struct.sta_info** %46, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 7
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 5
  %54 = load %struct.sta_info*, %struct.sta_info** %53, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %51(i32 %56)
  %58 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 5
  %60 = load %struct.sta_info*, %struct.sta_info** %59, align 8
  %61 = call i32 @kfree(%struct.sta_info* %60)
  %62 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 5
  store %struct.sta_info* null, %struct.sta_info** %63, align 8
  br label %64

64:                                               ; preds = %44, %39
  %65 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 4
  %67 = call i32 @skb_queue_purge(i32* %66)
  %68 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %69 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %78 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %79, i64 %84
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %76, %64
  %87 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.sta_info*, %struct.sta_info** %95, align 8
  %97 = icmp ne %struct.sta_info* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %100 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.sta_info*, %struct.sta_info** %102, align 8
  %104 = call i32 @kfree(%struct.sta_info* %103)
  br label %105

105:                                              ; preds = %98, %91, %86
  %106 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 1
  %108 = call i32 @del_timer(i32* %107)
  %109 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %110 = call i32 @kfree(%struct.sta_info* %109)
  ret void
}

declare dso_local i32 @hostap_event_expired_sta(i32, %struct.sta_info*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

declare dso_local i32 @kfree(%struct.sta_info*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
