; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_setup_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_setup_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setup answer with wrong chid %x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"setup answer wrong chid (ret %d)\00", align 1
@ie_SETUP_ACKNOWLEDGE = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@T304 = common dso_local global i32 0, align 4
@CC_T304 = common dso_local global i32 0, align 4
@CC_MORE_INFO = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_setup_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_setup_ack(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
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
  %15 = icmp sge i32 %14, 0
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
  %24 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %23, i32 0, i32 3
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
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @l3_debug(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 100, i32* %44, align 4
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @l3dss1_status_send(%struct.l3_process* %45, i32 %46, i32* null)
  br label %125

48:                                               ; preds = %22, %19
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %55 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @L3_DEB_WARN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %62 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @l3_debug(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %71 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 96, i32* %72, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %75 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 100, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @l3dss1_status_send(%struct.l3_process* %78, i32 %79, i32* null)
  br label %125

81:                                               ; preds = %48
  %82 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load i32, i32* @ie_SETUP_ACKNOWLEDGE, align 4
  %85 = call i32 @check_infoelements(%struct.l3_process* %82, %struct.sk_buff* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %90, i32 %91)
  br label %125

93:                                               ; preds = %81
  %94 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %95 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %94, i32 0, i32 2
  %96 = call i32 @L3DelTimer(i32* %95)
  %97 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %98 = call i32 @newl3state(%struct.l3_process* %97, i32 2)
  %99 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %100 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %99, i32 0, i32 2
  %101 = load i32, i32* @T304, align 4
  %102 = load i32, i32* @CC_T304, align 4
  %103 = call i32 @L3AddTimer(i32* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %93
  %111 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %112 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_7__*, i32, %struct.l3_process*)** %115, align 8
  %117 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %118 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* @CC_MORE_INFO, align 4
  %121 = load i32, i32* @INDICATION, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %124 = call i32 %116(%struct.TYPE_7__* %119, i32 %122, %struct.l3_process* %123)
  br label %125

125:                                              ; preds = %110, %89, %77, %41
  ret void
}

declare dso_local i32 @l3dss1_get_channel_id(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @l3dss1_status_send(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3dss1_std_ie_err(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
