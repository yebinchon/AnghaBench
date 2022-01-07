; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"STATUS get_cause ret(%d)\00", align 1
@IE_CALL_STATE = common dso_local global i32 0, align 4
@l3_valid_states = common dso_local global i32 0, align 4
@ie_STATUS = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@ERR_IE_UNRECOGNIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"STATUS error(%d/%d)\00", align 1
@CC_RELEASE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_status(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
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
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @l3_debug(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
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
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IE_CALL_STATE, align 4
  %50 = call i32* @findie(i32 %45, i32 %48, i32 %49, i32 0)
  store i32* %50, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %55, align 4
  %58 = icmp eq i32 1, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @l3_valid_states, align 4
  %66 = call i32 @ie_in_set(%struct.l3_process* %62, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32 100, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %59
  br label %71

70:                                               ; preds = %52
  store i32 100, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %73

72:                                               ; preds = %42
  store i32 96, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = load i32, i32* @ie_STATUS, align 4
  %80 = call i32 @check_infoelements(%struct.l3_process* %77, %struct.sk_buff* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 96, i32* %10, align 4
  br label %91

85:                                               ; preds = %76
  %86 = load i32, i32* @ERR_IE_UNRECOGNIZED, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 99, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %84
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %92
  %96 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %97 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @L3_DEB_WARN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %104 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @l3_debug(%struct.TYPE_7__* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %111 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %116 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %119 = call i32 @l3dss1_status_send(%struct.l3_process* %118, i32 0, i32* null)
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 99
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %125 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %128

127:                                              ; preds = %109
  br label %159

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %92
  %130 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %131 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 127
  %136 = icmp eq i32 %135, 111
  br i1 %136, label %137, label %159

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %142 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %145, align 8
  %147 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %148 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* @CC_RELEASE, align 4
  %151 = load i32, i32* @INDICATION, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %154 = call i32 %146(%struct.TYPE_7__* %149, i32 %152, %struct.l3_process* %153)
  %155 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %156 = call i32 @newl3state(%struct.l3_process* %155, i32 0)
  %157 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %158 = call i32 @dss1_release_l3_process(%struct.l3_process* %157)
  br label %159

159:                                              ; preds = %127, %140, %137, %129
  ret void
}

declare dso_local i32 @l3dss1_get_cause(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @ie_in_set(%struct.l3_process*, i32, i32) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3dss1_status_send(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @dss1_release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
