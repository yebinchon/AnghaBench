; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_set_promisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_SETMODE = common dso_local global i32 0, align 4
@JOB_PROMISC = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PROMISC = common dso_local global i32 0, align 4
@NOPROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @airo_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_set_promisc(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  %5 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 8)
  %6 = load i32, i32* @CMD_SETMODE, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @JOB_PROMISC, align 4
  %9 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %10 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %9, i32 0, i32 2
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %13 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @PROMISC, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @NOPROMISC, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %26 = call i32 @issuecommand(%struct.airo_info* %25, %struct.TYPE_4__* %3, i32* %4)
  %27 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %28 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %27, i32 0, i32 1
  %29 = call i32 @up(i32* %28)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @issuecommand(%struct.airo_info*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
