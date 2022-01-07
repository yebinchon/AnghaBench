; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_command_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_command_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmsdcc_host = type { i32, i32, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: Command expiry misfire\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Command timeout (%p %p %p %p)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MMCICOMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @msmsdcc_command_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmsdcc_command_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.msmsdcc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.msmsdcc_host*
  store %struct.msmsdcc_host* %7, %struct.msmsdcc_host** %3, align 8
  %8 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %9 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %13 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  store %struct.mmc_request* %15, %struct.mmc_request** %4, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = icmp ne %struct.mmc_request* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %20 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mmc_hostname(i32 %21)
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %25 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %74

28:                                               ; preds = %1
  %29 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %30 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mmc_hostname(i32 %31)
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %41 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32, %struct.mmc_request* %33, %struct.TYPE_6__* %36, i32 %39, i32 %43)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %52 = call i32 @msmsdcc_stop_data(%struct.msmsdcc_host* %51)
  %53 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %54 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MMCICOMMAND, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  %59 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %60 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %61, align 8
  %62 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %63 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %66 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %65, i32 0, i32 1
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %70 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %73 = call i32 @mmc_request_done(i32 %71, %struct.mmc_request* %72)
  br label %74

74:                                               ; preds = %28, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, %struct.mmc_request*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @msmsdcc_stop_data(%struct.msmsdcc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
