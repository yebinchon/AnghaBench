; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_lapb_dl_release_l2l3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_lapb_dl_release_l2l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.1*, i32, i32*)*, i32 }
%struct.PStack.0 = type opaque
%struct.PStack.1 = type opaque

@FLG_LAPB = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@DL_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32)* @lapb_dl_release_l2l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_dl_release_l2l3(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FLG_LAPB, align 4
  %6 = load %struct.PStack*, %struct.PStack** %3, align 8
  %7 = getelementptr inbounds %struct.PStack, %struct.PStack* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %5, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.PStack*, %struct.PStack** %3, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.PStack.1*, i32, i32*)*, i32 (%struct.PStack.1*, i32, i32*)** %14, align 8
  %16 = load %struct.PStack*, %struct.PStack** %3, align 8
  %17 = bitcast %struct.PStack* %16 to %struct.PStack.1*
  %18 = load i32, i32* @PH_DEACTIVATE, align 4
  %19 = load i32, i32* @REQUEST, align 4
  %20 = or i32 %18, %19
  %21 = call i32 %15(%struct.PStack.1* %17, i32 %20, i32* null)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.PStack*, %struct.PStack** %3, align 8
  %24 = getelementptr inbounds %struct.PStack, %struct.PStack* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %25, align 8
  %27 = load %struct.PStack*, %struct.PStack** %3, align 8
  %28 = bitcast %struct.PStack* %27 to %struct.PStack.0*
  %29 = load i32, i32* @DL_RELEASE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %29, %30
  %32 = call i32 %26(%struct.PStack.0* %28, i32 %31, i32* null)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
