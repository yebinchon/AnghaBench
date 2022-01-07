; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_information.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32* }

@ie_INFORMATION = common dso_local global i32 0, align 4
@CC_MORE_INFO = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@T302 = common dso_local global i32 0, align 4
@CC_T302 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_information(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i8], align 16
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sk_buff*
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load i32, i32* @ie_INFORMATION, align 4
  %16 = call i32 @check_infoelements(%struct.l3_process* %13, %struct.sk_buff* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %25 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 25
  br i1 %27, label %28, label %72

28:                                               ; preds = %23
  %29 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %30 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %29, i32 0, i32 1
  %31 = call i32 @L3DelTimer(i32* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @findie(i32* %35, i32 %38, i32 112, i32 0)
  store i32* %39, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %28
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @iecpy(i8* %42, i32* %43, i32 1)
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %51 = call i32 @strcat(i32 %49, i8* %50)
  %52 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %53 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)** %56, align 8
  %58 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %59 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* @CC_MORE_INFO, align 4
  %62 = load i32, i32* @INDICATION, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %65 = call i32 %57(%struct.TYPE_8__* %60, i32 %63, %struct.l3_process* %64)
  br label %66

66:                                               ; preds = %41, %28
  %67 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %68 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %67, i32 0, i32 1
  %69 = load i32, i32* @T302, align 4
  %70 = load i32, i32* @CC_T302, align 4
  %71 = call i32 @L3AddTimer(i32* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %23
  ret void
}

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3dss1_std_ie_err(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @iecpy(i8*, i32*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
