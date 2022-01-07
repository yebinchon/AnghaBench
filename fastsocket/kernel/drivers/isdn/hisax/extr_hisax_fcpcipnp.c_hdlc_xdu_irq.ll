; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_xdu_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_xdu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { i64, i64, i32, %struct.TYPE_3__, %struct.fritz_adapter* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.fritz_adapter = type { i32 (%struct.fritz_bcs*, i32)* }

@HDLC_CMD_XRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"XDU without skb\00", align 1
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*)* @hdlc_xdu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_xdu_irq(%struct.fritz_bcs* %0) #0 {
  %2 = alloca %struct.fritz_bcs*, align 8
  %3 = alloca %struct.fritz_adapter*, align 8
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %2, align 8
  %4 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %5 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %4, i32 0, i32 4
  %6 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  store %struct.fritz_adapter* %6, %struct.fritz_adapter** %3, align 8
  %7 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %8 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @HDLC_CMD_XRS, align 4
  %12 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %13 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 8
  %18 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %18, i32 0, i32 0
  %20 = load i32 (%struct.fritz_bcs*, i32)*, i32 (%struct.fritz_bcs*, i32)** %19, align 8
  %21 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %22 = call i32 %20(%struct.fritz_bcs* %21, i32 1)
  %23 = load i32, i32* @HDLC_CMD_XRS, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %26 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %24
  store i32 %30, i32* %28, align 8
  %31 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %32 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %1
  %36 = call i32 @DBG(i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %37, i32 0, i32 0
  %39 = load i32 (%struct.fritz_bcs*, i32)*, i32 (%struct.fritz_bcs*, i32)** %38, align 8
  %40 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %41 = call i32 %39(%struct.fritz_bcs* %40, i32 1)
  br label %58

42:                                               ; preds = %1
  %43 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %44 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L1_MODE_HDLC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %50 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %53 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @skb_push(i32 %51, i64 %54)
  %56 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %57 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %35, %48, %42
  ret void
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @skb_push(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
