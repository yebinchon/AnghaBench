; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i32 }
%struct.bchannel = type { i32 }

@HDLC_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: spurious ch1 IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: spurious ch2 IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritzcard*)* @HDLC_irq_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HDLC_irq_main(%struct.fritzcard* %0) #0 {
  %2 = alloca %struct.fritzcard*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bchannel*, align 8
  store %struct.fritzcard* %0, %struct.fritzcard** %2, align 8
  %5 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %6 = call i32 @read_status(%struct.fritzcard* %5, i32 1)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HDLC_INT_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %13 = call %struct.bchannel* @Sel_BCS(%struct.fritzcard* %12, i32 1)
  store %struct.bchannel* %13, %struct.bchannel** %4, align 8
  %14 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %15 = icmp ne %struct.bchannel* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @HDLC_irq(%struct.bchannel* %17, i32 %18)
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %22 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %28 = call i32 @read_status(%struct.fritzcard* %27, i32 2)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @HDLC_INT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %35 = call %struct.bchannel* @Sel_BCS(%struct.fritzcard* %34, i32 2)
  store %struct.bchannel* %35, %struct.bchannel** %4, align 8
  %36 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %37 = icmp ne %struct.bchannel* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @HDLC_irq(%struct.bchannel* %39, i32 %40)
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %44 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %26
  ret void
}

declare dso_local i32 @read_status(%struct.fritzcard*, i32) #1

declare dso_local %struct.bchannel* @Sel_BCS(%struct.fritzcard*, i32) #1

declare dso_local i32 @HDLC_irq(%struct.bchannel*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
