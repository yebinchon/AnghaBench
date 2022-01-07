; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_restart_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_restart_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i32, %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 (%struct.PStack.0*, i32, i32*)*, i32, i32 (%struct.PStack.1*, i32, i32*)*, i32, i32, i64, i64 }
%struct.PStack.0 = type opaque
%struct.PStack.1 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.PStack.2*, i32, i8*)* }
%struct.PStack.2 = type opaque
%struct.sk_buff = type { i32 }

@UA = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@ST_L2_8 = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_restart_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_restart_multi(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 1
  %13 = load %struct.PStack*, %struct.PStack** %12, align 8
  store %struct.PStack* %13, %struct.PStack** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.sk_buff*
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %17 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = load i32, i32* @UA, align 4
  %21 = load %struct.PStack*, %struct.PStack** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @get_PollFlagFree(%struct.PStack* %21, %struct.sk_buff* %22)
  %24 = or i32 %20, %23
  %25 = load i32, i32* @RSP, align 4
  %26 = call i32 @send_uframe(%struct.PStack* %19, i32 %24, i32 %25)
  %27 = load %struct.PStack*, %struct.PStack** %7, align 8
  %28 = getelementptr inbounds %struct.PStack, %struct.PStack* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.PStack.2*, i32, i8*)*, i32 (%struct.PStack.2*, i32, i8*)** %29, align 8
  %31 = load %struct.PStack*, %struct.PStack** %7, align 8
  %32 = bitcast %struct.PStack* %31 to %struct.PStack.2*
  %33 = load i32, i32* @MDL_ERROR, align 4
  %34 = load i32, i32* @INDICATION, align 4
  %35 = or i32 %33, %34
  %36 = call i32 %30(%struct.PStack.2* %32, i32 %35, i8* inttoptr (i64 70 to i8*))
  %37 = load %struct.PStack*, %struct.PStack** %7, align 8
  %38 = getelementptr inbounds %struct.PStack, %struct.PStack* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.PStack*, %struct.PStack** %7, align 8
  %42 = getelementptr inbounds %struct.PStack, %struct.PStack* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load %struct.PStack*, %struct.PStack** %7, align 8
  %48 = getelementptr inbounds %struct.PStack, %struct.PStack* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = call i32 @skb_queue_purge(i32* %49)
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %3
  %52 = load %struct.PStack*, %struct.PStack** %7, align 8
  %53 = getelementptr inbounds %struct.PStack, %struct.PStack* %52, i32 0, i32 0
  %54 = call i32 @clear_exception(%struct.TYPE_4__* %53)
  %55 = load %struct.PStack*, %struct.PStack** %7, align 8
  %56 = getelementptr inbounds %struct.PStack, %struct.PStack* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.PStack*, %struct.PStack** %7, align 8
  %59 = getelementptr inbounds %struct.PStack, %struct.PStack* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.PStack*, %struct.PStack** %7, align 8
  %62 = getelementptr inbounds %struct.PStack, %struct.PStack* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.PStack*, %struct.PStack** %7, align 8
  %65 = getelementptr inbounds %struct.PStack, %struct.PStack* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %68 = load i32, i32* @ST_L2_7, align 4
  %69 = call i32 @FsmChangeState(%struct.FsmInst* %67, i32 %68)
  %70 = load %struct.PStack*, %struct.PStack** %7, align 8
  %71 = call i32 @stop_t200(%struct.PStack* %70, i32 3)
  %72 = load %struct.PStack*, %struct.PStack** %7, align 8
  %73 = getelementptr inbounds %struct.PStack, %struct.PStack* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  %75 = load %struct.PStack*, %struct.PStack** %7, align 8
  %76 = getelementptr inbounds %struct.PStack, %struct.PStack* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EV_L2_T203, align 4
  %80 = call i32 @FsmRestartTimer(i32* %74, i32 %78, i32 %79, i32* null, i32 3)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %51
  %84 = load %struct.PStack*, %struct.PStack** %7, align 8
  %85 = getelementptr inbounds %struct.PStack, %struct.PStack* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32 (%struct.PStack.1*, i32, i32*)*, i32 (%struct.PStack.1*, i32, i32*)** %86, align 8
  %88 = load %struct.PStack*, %struct.PStack** %7, align 8
  %89 = bitcast %struct.PStack* %88 to %struct.PStack.1*
  %90 = load i32, i32* @DL_ESTABLISH, align 4
  %91 = load i32, i32* @INDICATION, align 4
  %92 = or i32 %90, %91
  %93 = call i32 %87(%struct.PStack.1* %89, i32 %92, i32* null)
  br label %94

94:                                               ; preds = %83, %51
  %95 = load i32, i32* @ST_L2_7, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ST_L2_8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98, %94
  %103 = load %struct.PStack*, %struct.PStack** %7, align 8
  %104 = getelementptr inbounds %struct.PStack, %struct.PStack* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = call i32 @skb_queue_empty(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = load %struct.PStack*, %struct.PStack** %7, align 8
  %110 = call i64 @cansend(%struct.PStack* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.PStack*, %struct.PStack** %7, align 8
  %114 = getelementptr inbounds %struct.PStack, %struct.PStack* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %115, align 8
  %117 = load %struct.PStack*, %struct.PStack** %7, align 8
  %118 = bitcast %struct.PStack* %117 to %struct.PStack.0*
  %119 = load i32, i32* @PH_PULL, align 4
  %120 = load i32, i32* @REQUEST, align 4
  %121 = or i32 %119, %120
  %122 = call i32 %116(%struct.PStack.0* %118, i32 %121, i32* null)
  br label %123

123:                                              ; preds = %112, %108, %102
  br label %124

124:                                              ; preds = %123, %98
  ret void
}

declare dso_local i32 @send_uframe(%struct.PStack*, i32, i32) #1

declare dso_local i32 @get_PollFlagFree(%struct.PStack*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @clear_exception(%struct.TYPE_4__*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @cansend(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
