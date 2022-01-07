; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_network.c_ipwireless_associate_network_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_network.c_ipwireless_associate_network_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { %struct.ipw_tty*** }
%struct.ipw_tty = type { i32 }

@MAX_ASSOCIATED_TTYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipwireless_associate_network_tty(%struct.ipw_network* %0, i32 %1, %struct.ipw_tty* %2) #0 {
  %4 = alloca %struct.ipw_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_tty*, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_network* %0, %struct.ipw_network** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ipw_tty* %2, %struct.ipw_tty** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_ASSOCIATED_TTYS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %14 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %13, i32 0, i32 0
  %15 = load %struct.ipw_tty***, %struct.ipw_tty**** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ipw_tty**, %struct.ipw_tty*** %15, i64 %17
  %19 = load %struct.ipw_tty**, %struct.ipw_tty*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %19, i64 %21
  %23 = load %struct.ipw_tty*, %struct.ipw_tty** %22, align 8
  %24 = icmp eq %struct.ipw_tty* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %27 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %28 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %27, i32 0, i32 0
  %29 = load %struct.ipw_tty***, %struct.ipw_tty**** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ipw_tty**, %struct.ipw_tty*** %29, i64 %31
  %33 = load %struct.ipw_tty**, %struct.ipw_tty*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %33, i64 %35
  store %struct.ipw_tty* %26, %struct.ipw_tty** %36, align 8
  br label %41

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %25, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
