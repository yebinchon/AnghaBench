; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_info = type { i32 }
%struct.device = type { i32 }
%struct.ide_host = type { %struct.device**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpt_info* (%struct.device*)* @hpt3xx_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpt_info* @hpt3xx_get_info(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.hpt_info*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ide_host* @dev_get_drvdata(%struct.device* %5)
  store %struct.ide_host* %6, %struct.ide_host** %3, align 8
  %7 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %8 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hpt_info*
  store %struct.hpt_info* %10, %struct.hpt_info** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %13 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %12, i32 0, i32 0
  %14 = load %struct.device**, %struct.device*** %13, align 8
  %15 = getelementptr inbounds %struct.device*, %struct.device** %14, i64 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = icmp eq %struct.device* %11, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.hpt_info*, %struct.hpt_info** %4, align 8
  %20 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %19, i64 1
  br label %23

21:                                               ; preds = %1
  %22 = load %struct.hpt_info*, %struct.hpt_info** %4, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi %struct.hpt_info* [ %20, %18 ], [ %22, %21 ]
  ret %struct.hpt_info* %24
}

declare dso_local %struct.ide_host* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
