; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdricoh_host = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@R2F0_RESET = common dso_local global i32 0, align 4
@R2E0_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R224_MODE = common dso_local global i32 0, align 4
@R228_POWER = common dso_local global i32 0, align 4
@R21C_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdricoh_host*)* @sdricoh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_reset(%struct.sdricoh_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdricoh_host*, align 8
  store %struct.sdricoh_host* %0, %struct.sdricoh_host** %3, align 8
  %4 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %5 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %9 = load i32, i32* @R2F0_RESET, align 4
  %10 = call i32 @sdricoh_writel(%struct.sdricoh_host* %8, i32 %9, i32 65537)
  %11 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %12 = load i32, i32* @R2E0_INIT, align 4
  %13 = call i32 @sdricoh_writel(%struct.sdricoh_host* %11, i32 %12, i32 65536)
  %14 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %15 = load i32, i32* @R2E0_INIT, align 4
  %16 = call i32 @sdricoh_readl(%struct.sdricoh_host* %14, i32 %15)
  %17 = icmp ne i32 %16, 65536
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %23 = load i32, i32* @R2E0_INIT, align 4
  %24 = call i32 @sdricoh_writel(%struct.sdricoh_host* %22, i32 %23, i32 65543)
  %25 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %26 = load i32, i32* @R224_MODE, align 4
  %27 = call i32 @sdricoh_writel(%struct.sdricoh_host* %25, i32 %26, i32 33554432)
  %28 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %29 = load i32, i32* @R228_POWER, align 4
  %30 = call i32 @sdricoh_writel(%struct.sdricoh_host* %28, i32 %29, i32 224)
  %31 = load %struct.sdricoh_host*, %struct.sdricoh_host** %3, align 8
  %32 = load i32, i32* @R21C_STATUS, align 4
  %33 = call i32 @sdricoh_writel(%struct.sdricoh_host* %31, i32 %32, i32 24)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
