; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_clock = type { i32, i32 }
%struct.ata_port = type { i32 }

@hpt3x2n_clocks = common dso_local global %struct.hpt_clock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @hpt3x2n_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3x2n_find_mode(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpt_clock*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hpt_clock*, %struct.hpt_clock** @hpt3x2n_clocks, align 8
  store %struct.hpt_clock* %7, %struct.hpt_clock** %6, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.hpt_clock*, %struct.hpt_clock** %6, align 8
  %10 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.hpt_clock*, %struct.hpt_clock** %6, align 8
  %15 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.hpt_clock*, %struct.hpt_clock** %6, align 8
  %21 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.hpt_clock*, %struct.hpt_clock** %6, align 8
  %25 = getelementptr inbounds %struct.hpt_clock, %struct.hpt_clock* %24, i32 1
  store %struct.hpt_clock* %25, %struct.hpt_clock** %6, align 8
  br label %8

26:                                               ; preds = %8
  %27 = call i32 (...) @BUG()
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
