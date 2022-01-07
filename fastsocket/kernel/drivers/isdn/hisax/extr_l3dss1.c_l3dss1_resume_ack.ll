; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_resume_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_resume_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"resume ack with wrong chid %x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"resume ack without chid (ret %d)\00", align 1
@ie_RESUME_ACKNOWLEDGE = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@CC_RESUME = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_resume_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_resume_ack(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i32 @l3dss1_get_channel_id(%struct.l3_process* %12, %struct.sk_buff* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 0, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 3, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %24 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 16, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22, %16
  %29 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %30 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @L3_DEB_WARN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @l3_debug(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 100, i32* %44, align 4
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @l3dss1_status_send(%struct.l3_process* %45, i32 %46, i32* null)
  br label %117

48:                                               ; preds = %22, %19
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  br label %79

53:                                               ; preds = %3
  %54 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %55 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 1, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @L3_DEB_WARN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @l3_debug(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %73 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 96, i32* %74, align 4
  %75 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @l3dss1_status_send(%struct.l3_process* %75, i32 %76, i32* null)
  br label %117

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* @ie_RESUME_ACKNOWLEDGE, align 4
  %83 = call i32 @check_infoelements(%struct.l3_process* %80, %struct.sk_buff* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %88, i32 %89)
  br label %117

91:                                               ; preds = %79
  %92 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %93 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %92, i32 0, i32 3
  %94 = call i32 @L3DelTimer(i32* %93)
  %95 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %96 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %99, align 8
  %101 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %102 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* @CC_RESUME, align 4
  %105 = load i32, i32* @CONFIRM, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %108 = call i32 %100(%struct.TYPE_7__* %103, i32 %106, %struct.l3_process* %107)
  %109 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %110 = call i32 @newl3state(%struct.l3_process* %109, i32 10)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %91
  %114 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %114, i32 %115)
  br label %117

117:                                              ; preds = %41, %71, %87, %113, %91
  ret void
}

declare dso_local i32 @l3dss1_get_channel_id(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @l3dss1_status_send(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3dss1_std_ie_err(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
