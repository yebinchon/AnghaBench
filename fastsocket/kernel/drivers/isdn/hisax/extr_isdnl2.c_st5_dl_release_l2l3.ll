; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_st5_dl_release_l2l3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_st5_dl_release_l2l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32 }
%struct.PStack.0 = type opaque

@FLG_PEND_REL = common dso_local global i32 0, align 4
@DL_RELEASE = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*)* @st5_dl_release_l2l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st5_dl_release_l2l3(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  %3 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  %4 = load i32, i32* @FLG_PEND_REL, align 4
  %5 = load %struct.PStack*, %struct.PStack** %2, align 8
  %6 = getelementptr inbounds %struct.PStack, %struct.PStack* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i64 @test_and_clear_bit(i32 %4, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @DL_RELEASE, align 4
  %12 = load i32, i32* @CONFIRM, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @DL_RELEASE, align 4
  %16 = load i32, i32* @INDICATION, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.PStack*, %struct.PStack** %2, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %21, align 8
  %23 = load %struct.PStack*, %struct.PStack** %2, align 8
  %24 = bitcast %struct.PStack* %23 to %struct.PStack.0*
  %25 = load i32, i32* %3, align 4
  %26 = call i32 %22(%struct.PStack.0* %24, i32 %25, i32* null)
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
