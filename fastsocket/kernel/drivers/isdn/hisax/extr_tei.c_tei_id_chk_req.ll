; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_chk_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_chk_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i32)* }
%struct.sk_buff = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"identity check req tei %d\00", align 1
@GROUP_TEI = common dso_local global i32 0, align 4
@ST_TEI_NOP = common dso_local global i32 0, align 4
@ID_CHK_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_chk_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_chk_req(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  store %struct.PStack* %12, %struct.PStack** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load %struct.PStack*, %struct.PStack** %7, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.PStack*, %struct.PStack** %7, align 8
  %28 = getelementptr inbounds %struct.PStack, %struct.PStack* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %30, align 8
  %32 = load %struct.PStack*, %struct.PStack** %7, align 8
  %33 = getelementptr inbounds %struct.PStack, %struct.PStack* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 %31(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %26, %3
  %38 = load %struct.PStack*, %struct.PStack** %7, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GROUP_TEI, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.PStack*, %struct.PStack** %7, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %47, %43
  %55 = load %struct.PStack*, %struct.PStack** %7, align 8
  %56 = getelementptr inbounds %struct.PStack, %struct.PStack* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call i32 @FsmDelTimer(i32* %57, i32 4)
  %59 = load %struct.PStack*, %struct.PStack** %7, align 8
  %60 = getelementptr inbounds %struct.PStack, %struct.PStack* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* @ST_TEI_NOP, align 4
  %63 = call i32 @FsmChangeState(%struct.TYPE_7__* %61, i32 %62)
  %64 = load %struct.PStack*, %struct.PStack** %7, align 8
  %65 = load i32, i32* @ID_CHK_RES, align 4
  %66 = call i32 (...) @random_ri()
  %67 = load %struct.PStack*, %struct.PStack** %7, align 8
  %68 = getelementptr inbounds %struct.PStack, %struct.PStack* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @put_tei_msg(%struct.PStack* %64, i32 %65, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %54, %47, %37
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @put_tei_msg(%struct.PStack*, i32, i32, i32) #1

declare dso_local i32 @random_ri(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
