; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_cmdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_cmdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_CMDRB = common dso_local global i32 0, align 4
@IPAC_CMDRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*, i32)* @hscx_cmdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_cmdr(%struct.hscx_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hscx_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %6 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %15 = load i32, i32* @IPACX_CMDRB, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @WriteHSCX(%struct.hscx_hw* %14, i32 %15, i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %20 = call i32 @waitforCEC(%struct.hscx_hw* %19)
  %21 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %22 = load i32, i32* @IPAC_CMDRB, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WriteHSCX(%struct.hscx_hw* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @WriteHSCX(%struct.hscx_hw*, i32, i32) #1

declare dso_local i32 @waitforCEC(%struct.hscx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
