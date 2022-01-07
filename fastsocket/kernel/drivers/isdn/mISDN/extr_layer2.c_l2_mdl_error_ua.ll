; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_mdl_error_ua.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_mdl_error_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i32 }
%struct.sk_buff = type { i32 }

@MDL_ERROR_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_mdl_error_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_mdl_error_ua(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.layer2*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sk_buff*
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 0
  %13 = load %struct.layer2*, %struct.layer2** %12, align 8
  store %struct.layer2* %13, %struct.layer2** %8, align 8
  %14 = load %struct.layer2*, %struct.layer2** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i64 @get_PollFlagFree(%struct.layer2* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.layer2*, %struct.layer2** %8, align 8
  %20 = load i32, i32* @MDL_ERROR_IND, align 4
  %21 = call i32 @l2mgr(%struct.layer2* %19, i32 %20, i8* inttoptr (i64 67 to i8*))
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.layer2*, %struct.layer2** %8, align 8
  %24 = load i32, i32* @MDL_ERROR_IND, align 4
  %25 = call i32 @l2mgr(%struct.layer2* %23, i32 %24, i8* inttoptr (i64 68 to i8*))
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

declare dso_local i64 @get_PollFlagFree(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
