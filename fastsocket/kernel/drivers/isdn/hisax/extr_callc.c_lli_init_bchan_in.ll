; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_init_bchan_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_init_bchan_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32*)* }

@ST_WAIT_BCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"STAT_DCONN\00", align 1
@ISDN_STAT_DCONN = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_init_bchan_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_init_bchan_in(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.Channel*, %struct.Channel** %9, align 8
  store %struct.Channel* %10, %struct.Channel** %7, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = load i32, i32* @ST_WAIT_BCONN, align 4
  %13 = call i32 @FsmChangeState(%struct.FsmInst* %11, i32 %12)
  %14 = load %struct.Channel*, %struct.Channel** %7, align 8
  %15 = getelementptr inbounds %struct.Channel, %struct.Channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.Channel*, %struct.Channel** %7, align 8
  %21 = call i32 @link_debug(%struct.Channel* %20, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.Channel*, %struct.Channel** %7, align 8
  %24 = load i32, i32* @ISDN_STAT_DCONN, align 4
  %25 = call i32 @HL_LL(%struct.Channel* %23, i32 %24)
  %26 = load %struct.Channel*, %struct.Channel** %7, align 8
  %27 = getelementptr inbounds %struct.Channel, %struct.Channel* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.Channel*, %struct.Channel** %7, align 8
  %30 = getelementptr inbounds %struct.Channel, %struct.Channel* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.Channel*, %struct.Channel** %7, align 8
  %32 = getelementptr inbounds %struct.Channel, %struct.Channel* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.Channel*, %struct.Channel** %7, align 8
  %34 = call i32 @init_b_st(%struct.Channel* %33, i32 1)
  %35 = load %struct.Channel*, %struct.Channel** %7, align 8
  %36 = getelementptr inbounds %struct.Channel, %struct.Channel* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_4__*, i32, i32*)*, i32 (%struct.TYPE_4__*, i32, i32*)** %39, align 8
  %41 = load %struct.Channel*, %struct.Channel** %7, align 8
  %42 = getelementptr inbounds %struct.Channel, %struct.Channel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @DL_ESTABLISH, align 4
  %45 = load i32, i32* @REQUEST, align 4
  %46 = or i32 %44, %45
  %47 = call i32 %40(%struct.TYPE_4__* %43, i32 %46, i32* null)
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*) #1

declare dso_local i32 @HL_LL(%struct.Channel*, i32) #1

declare dso_local i32 @init_b_st(%struct.Channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
