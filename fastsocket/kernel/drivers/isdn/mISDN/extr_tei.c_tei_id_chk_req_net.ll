; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_id_chk_req_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_id_chk_req_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.teimgr* }
%struct.teimgr = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.FsmInst.0*, i8*, i32)* }
%struct.FsmInst.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@debug = common dso_local global i32* null, align 8
@DEBUG_L2_TEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"id check request for tei %d\00", align 1
@ID_CHK_REQ = common dso_local global i32 0, align 4
@ST_TEI_IDVERIFY = common dso_local global i32 0, align 4
@EV_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_chk_req_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_chk_req_net(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.teimgr*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.teimgr*, %struct.teimgr** %9, align 8
  store %struct.teimgr* %10, %struct.teimgr** %7, align 8
  %11 = load i32*, i32** @debug, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DEBUG_L2_TEI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %18 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.FsmInst.0*, i8*, i32)*, i32 (%struct.FsmInst.0*, i8*, i32)** %19, align 8
  %21 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %22 = bitcast %struct.FsmInst* %21 to %struct.FsmInst.0*
  %23 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %24 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %20(%struct.FsmInst.0* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %16, %3
  %30 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %31 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %33 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ID_CHK_REQ, align 4
  %36 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %37 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @put_tei_msg(i32 %34, i32 %35, i32 0, i32 %40)
  %42 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %43 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %42, i32 0, i32 3
  %44 = load i32, i32* @ST_TEI_IDVERIFY, align 4
  %45 = call i32 @mISDN_FsmChangeState(%struct.TYPE_4__* %43, i32 %44)
  %46 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %47 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %46, i32 0, i32 2
  %48 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %49 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EV_TIMER, align 4
  %52 = call i32 @mISDN_FsmAddTimer(i32* %47, i32 %50, i32 %51, i32* null, i32 2)
  %53 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %54 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  ret void
}

declare dso_local i32 @put_tei_msg(i32, i32, i32, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
