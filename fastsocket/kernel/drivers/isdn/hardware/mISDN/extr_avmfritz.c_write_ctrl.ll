; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, %struct.fritzcard* }
%struct.fritzcard = type { i32, i32, %struct.hdlc_hw* }
%struct.hdlc_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: hdlc %c wr%x ctrl %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_ctrl(%struct.bchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritzcard*, align 8
  %6 = alloca %struct.hdlc_hw*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %8 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %7, i32 0, i32 1
  %9 = load %struct.fritzcard*, %struct.fritzcard** %8, align 8
  store %struct.fritzcard* %9, %struct.fritzcard** %5, align 8
  %10 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %11 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %10, i32 0, i32 2
  %12 = load %struct.hdlc_hw*, %struct.hdlc_hw** %11, align 8
  %13 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %14 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %12, i64 %18
  store %struct.hdlc_hw* %19, %struct.hdlc_hw** %6, align 8
  %20 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %21 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %24 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 64, %25
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hdlc_hw*, %struct.hdlc_hw** %6, align 8
  %30 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i8 signext %27, i32 %28, i32 %32)
  %34 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %35 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %53 [
    i32 128, label %37
    i32 129, label %45
  ]

37:                                               ; preds = %2
  %38 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %39 = load %struct.hdlc_hw*, %struct.hdlc_hw** %6, align 8
  %40 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %41 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = trunc i32 %42 to i8
  %44 = call i32 @__write_ctrl_pciv2(%struct.fritzcard* %38, %struct.hdlc_hw* %39, i8 signext %43)
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %47 = load %struct.hdlc_hw*, %struct.hdlc_hw** %6, align 8
  %48 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %49 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = trunc i32 %50 to i8
  %52 = call i32 @__write_ctrl_pci(%struct.fritzcard* %46, %struct.hdlc_hw* %47, i8 signext %51)
  br label %53

53:                                               ; preds = %2, %45, %37
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i8 signext, i32, i32) #1

declare dso_local i32 @__write_ctrl_pciv2(%struct.fritzcard*, %struct.hdlc_hw*, i8 signext) #1

declare dso_local i32 @__write_ctrl_pci(%struct.fritzcard*, %struct.hdlc_hw*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
