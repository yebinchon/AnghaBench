; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*, i32)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"assign request for allready asigned tei %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"assign request ri %d\00", align 1
@ID_REQUEST = common dso_local global i32 0, align 4
@ST_TEI_IDREQ = common dso_local global i32 0, align 4
@EV_T202 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_request(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.PStack*, %struct.PStack** %9, align 8
  store %struct.PStack* %10, %struct.PStack** %7, align 8
  %11 = load %struct.PStack*, %struct.PStack** %7, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.PStack*, %struct.PStack** %7, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_8__*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32)** %20, align 8
  %22 = load %struct.PStack*, %struct.PStack** %7, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %21(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %79

30:                                               ; preds = %3
  %31 = call i32 (...) @random_ri()
  %32 = load %struct.PStack*, %struct.PStack** %7, align 8
  %33 = getelementptr inbounds %struct.PStack, %struct.PStack* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.PStack*, %struct.PStack** %7, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load %struct.PStack*, %struct.PStack** %7, align 8
  %42 = getelementptr inbounds %struct.PStack, %struct.PStack* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_8__*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32)** %44, align 8
  %46 = load %struct.PStack*, %struct.PStack** %7, align 8
  %47 = getelementptr inbounds %struct.PStack, %struct.PStack* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = load %struct.PStack*, %struct.PStack** %7, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %45(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %40, %30
  %55 = load %struct.PStack*, %struct.PStack** %7, align 8
  %56 = load i32, i32* @ID_REQUEST, align 4
  %57 = load %struct.PStack*, %struct.PStack** %7, align 8
  %58 = getelementptr inbounds %struct.PStack, %struct.PStack* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @put_tei_msg(%struct.PStack* %55, i32 %56, i32 %60, i32 127)
  %62 = load %struct.PStack*, %struct.PStack** %7, align 8
  %63 = getelementptr inbounds %struct.PStack, %struct.PStack* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32, i32* @ST_TEI_IDREQ, align 4
  %66 = call i32 @FsmChangeState(%struct.TYPE_8__* %64, i32 %65)
  %67 = load %struct.PStack*, %struct.PStack** %7, align 8
  %68 = getelementptr inbounds %struct.PStack, %struct.PStack* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.PStack*, %struct.PStack** %7, align 8
  %71 = getelementptr inbounds %struct.PStack, %struct.PStack* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EV_T202, align 4
  %75 = call i32 @FsmAddTimer(i32* %69, i32 %73, i32 %74, i32* null, i32 1)
  %76 = load %struct.PStack*, %struct.PStack** %7, align 8
  %77 = getelementptr inbounds %struct.PStack, %struct.PStack* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 3, i32* %78, align 4
  br label %79

79:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @random_ri(...) #1

declare dso_local i32 @put_tei_msg(%struct.PStack*, i32, i32, i32) #1

declare dso_local i32 @FsmChangeState(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
