; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_get_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_get_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ipw_tty = type { i32 }

@ipw_tty_driver = common dso_local global %struct.TYPE_2__* null, align 8
@IPWIRELESS_PCMCIA_MINORS = common dso_local global i32 0, align 4
@ipwireless_loopback = common dso_local global i32 0, align 4
@IPWIRELESS_PCMCIA_MINOR_RANGE = common dso_local global i32 0, align 4
@TTYTYPE_RAS_RAW = common dso_local global i32 0, align 4
@ttys = common dso_local global %struct.ipw_tty** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipw_tty* (i32)* @get_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipw_tty* @get_tty(i32 %0) #0 {
  %2 = alloca %struct.ipw_tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipw_tty_driver, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipw_tty_driver, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IPWIRELESS_PCMCIA_MINORS, align 4
  %16 = add nsw i32 %14, %15
  %17 = icmp sge i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  store %struct.ipw_tty* null, %struct.ipw_tty** %2, align 8
  br label %40

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipw_tty_driver, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @ipwireless_loopback, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %30 = load i32, i32* @TTYTYPE_RAS_RAW, align 4
  %31 = mul nsw i32 %29, %30
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.ipw_tty* null, %struct.ipw_tty** %2, align 8
  br label %40

34:                                               ; preds = %27, %19
  %35 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %35, i64 %37
  %39 = load %struct.ipw_tty*, %struct.ipw_tty** %38, align 8
  store %struct.ipw_tty* %39, %struct.ipw_tty** %2, align 8
  br label %40

40:                                               ; preds = %34, %33, %18
  %41 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  ret %struct.ipw_tty* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
