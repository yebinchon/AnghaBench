; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.sk_buff = type { i32, i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DISC get_cause ret(%d)\00", align 1
@IE_FACILITY = common dso_local global i32 0, align 4
@ie_DISCONNECT = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@ERR_IE_UNRECOGNIZED = common dso_local global i32 0, align 4
@CC_DISCONNECT = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@MT_RELEASE = common dso_local global i32 0, align 4
@T308 = common dso_local global i32 0, align 4
@CC_T308_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_disconnect(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
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
  %17 = call i32 @l3dss1_get_cause(%struct.l3_process* %15, %struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

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
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @l3_debug(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 96, i32* %10, align 4
  br label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 100, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %3
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
  %54 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %57 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %58 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @l3dss1_parse_facility(%struct.TYPE_6__* %55, %struct.l3_process* %56, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %52, %42
  %63 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* @ie_DISCONNECT, align 4
  %66 = call i32 @check_infoelements(%struct.l3_process* %63, %struct.sk_buff* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 96, i32* %10, align 4
  br label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @ERR_IE_UNRECOGNIZED, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 99, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %74, %71
  br label %80

80:                                               ; preds = %79, %70
  %81 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %82 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = call i32 @newl3state(%struct.l3_process* %84, i32 12)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %90 = call i32 @newl3state(%struct.l3_process* %89, i32 19)
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 11, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %96 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %99, align 8
  %101 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %102 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* @CC_DISCONNECT, align 4
  %105 = load i32, i32* @INDICATION, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %108 = call i32 %100(%struct.TYPE_6__* %103, i32 %106, %struct.l3_process* %107)
  br label %117

109:                                              ; preds = %91
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @l3dss1_release_req(%struct.l3_process* %113, i32 %114, i32* null)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %94
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %122 = load i32, i32* @MT_RELEASE, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @l3dss1_message_cause(%struct.l3_process* %121, i32 %122, i32 %123)
  %125 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %126 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %125, i32 0, i32 2
  %127 = load i32, i32* @T308, align 4
  %128 = load i32, i32* @CC_T308_1, align 4
  %129 = call i32 @L3AddTimer(i32* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %120, %117
  ret void
}

declare dso_local i32 @StopAllL3Timer(%struct.l3_process*) #1

declare dso_local i32 @l3dss1_get_cause(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @l3dss1_parse_facility(%struct.TYPE_6__*, %struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3dss1_release_req(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @l3dss1_message_cause(%struct.l3_process*, i32, i32) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
