; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_request_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_request_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmsdcc_host = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MMCICOMMAND = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msmsdcc_host*, %struct.mmc_request*)* @msmsdcc_request_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmsdcc_request_end(%struct.msmsdcc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.msmsdcc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.msmsdcc_host* %0, %struct.msmsdcc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %6 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMCICOMMAND, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %12 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %17 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %20 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %28 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @mdelay(i32 5)
  br label %46

46:                                               ; preds = %44, %35
  %47 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %48 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %51 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = call i32 @mmc_request_done(i32 %52, %struct.mmc_request* %53)
  %55 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %56 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
