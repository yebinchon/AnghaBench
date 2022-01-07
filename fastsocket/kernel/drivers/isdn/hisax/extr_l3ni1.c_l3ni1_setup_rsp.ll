; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"D-chan connect for waiting call\00", align 1
@MT_CONNECT = common dso_local global i32 0, align 4
@T313 = common dso_local global i32 0, align 4
@CC_T313 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_setup_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_setup_rsp(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %8 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @L3_DEB_WARN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @l3_debug(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @l3ni1_disconnect_req(%struct.l3_process* %25, i32 %26, i8* %27)
  br label %55

29:                                               ; preds = %3
  %30 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %31 = call i32 @newl3state(%struct.l3_process* %30, i32 8)
  %32 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %33 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @L3_DEB_WARN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %40 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @l3_debug(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %45 = load i32, i32* @MT_CONNECT, align 4
  %46 = call i32 @l3ni1_message_plus_chid(%struct.l3_process* %44, i32 %45)
  %47 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %48 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %47, i32 0, i32 1
  %49 = call i32 @L3DelTimer(i32* %48)
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 1
  %52 = load i32, i32* @T313, align 4
  %53 = load i32, i32* @CC_T313, align 4
  %54 = call i32 @L3AddTimer(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %24
  ret void
}

declare dso_local i32 @l3_debug(i32, i8*) #1

declare dso_local i32 @l3ni1_disconnect_req(%struct.l3_process*, i32, i8*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3ni1_message_plus_chid(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
