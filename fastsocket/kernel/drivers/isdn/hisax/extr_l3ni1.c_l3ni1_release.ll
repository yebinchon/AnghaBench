; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"REL get_cause ret(%d)\00", align 1
@NO_CAUSE = common dso_local global i32 0, align 4
@IE_FACILITY = common dso_local global i32 0, align 4
@ie_RELEASE = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@ERR_IE_UNRECOGNIZED = common dso_local global i32 0, align 4
@MT_RELEASE_COMPLETE = common dso_local global i32 0, align 4
@CC_RELEASE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_release(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sk_buff*
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = call i32 @StopAllL3Timer(%struct.l3_process* %13)
  %15 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @l3ni1_get_cause(%struct.l3_process* %15, %struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @L3_DEB_WARN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @l3_debug(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @NO_CAUSE, align 4
  %38 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %39 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IE_FACILITY, align 4
  %50 = call i32* @findie(i32 %45, i32 %48, i32 %49, i32 0)
  store i32* %50, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %54 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %57 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %58 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @l3ni1_parse_facility(%struct.TYPE_8__* %55, %struct.l3_process* %56, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 11
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 96, i32* %10, align 4
  br label %76

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 100, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i32, i32* @ie_RELEASE, align 4
  %80 = call i32 @check_infoelements(%struct.l3_process* %77, %struct.sk_buff* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 96, i32* %10, align 4
  br label %94

85:                                               ; preds = %76
  %86 = load i32, i32* @ERR_IE_UNRECOGNIZED, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 99, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %89, %85
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %99 = load i32, i32* @MT_RELEASE_COMPLETE, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @l3ni1_message_cause(%struct.l3_process* %98, i32 %99, i32 %100)
  br label %106

102:                                              ; preds = %94
  %103 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %104 = load i32, i32* @MT_RELEASE_COMPLETE, align 4
  %105 = call i32 @l3ni1_message(%struct.l3_process* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %108 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)** %111, align 8
  %113 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %114 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* @CC_RELEASE, align 4
  %117 = load i32, i32* @INDICATION, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %120 = call i32 %112(%struct.TYPE_8__* %115, i32 %118, %struct.l3_process* %119)
  %121 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %122 = call i32 @newl3state(%struct.l3_process* %121, i32 0)
  %123 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %124 = call i32 @ni1_release_l3_process(%struct.l3_process* %123)
  ret void
}

declare dso_local i32 @StopAllL3Timer(%struct.l3_process*) #1

declare dso_local i32 @l3ni1_get_cause(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @l3ni1_parse_facility(%struct.TYPE_8__*, %struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3ni1_message_cause(%struct.l3_process*, i32, i32) #1

declare dso_local i32 @l3ni1_message(%struct.l3_process*, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @ni1_release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
