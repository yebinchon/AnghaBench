; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_nrerrorrecovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_nrerrorrecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i32 }

@MDL_ERROR_IND = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*)* @nrerrorrecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nrerrorrecovery(%struct.FsmInst* %0) #0 {
  %2 = alloca %struct.FsmInst*, align 8
  %3 = alloca %struct.layer2*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %2, align 8
  %4 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %5 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %4, i32 0, i32 0
  %6 = load %struct.layer2*, %struct.layer2** %5, align 8
  store %struct.layer2* %6, %struct.layer2** %3, align 8
  %7 = load %struct.layer2*, %struct.layer2** %3, align 8
  %8 = load i32, i32* @MDL_ERROR_IND, align 4
  %9 = call i32 @l2mgr(%struct.layer2* %7, i32 %8, i8* inttoptr (i64 74 to i8*))
  %10 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %11 = call i32 @establishlink(%struct.FsmInst* %10)
  %12 = load i32, i32* @FLG_L3_INIT, align 4
  %13 = load %struct.layer2*, %struct.layer2** %3, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 0
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  ret void
}

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
