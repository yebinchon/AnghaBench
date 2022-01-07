; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmsdcc_host = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [44 x i8] c"%s: Slot status change detected (%d -> %d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @msmsdcc_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmsdcc_check_status(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.msmsdcc_host*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.msmsdcc_host*
  store %struct.msmsdcc_host* %6, %struct.msmsdcc_host** %3, align 8
  %7 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %8 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %15 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_detect_change(i32 %16, i32 0)
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %20 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %25 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mmc_dev(i32 %26)
  %28 = call i32 %23(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %34 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %37 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %18
  %42 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %43 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mmc_hostname(i32 %44)
  %46 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %47 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %55 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HZ, align 4
  %58 = mul nsw i32 5, %57
  %59 = sdiv i32 %58, 2
  %60 = call i32 @mmc_detect_change(i32 %56, i32 %59)
  br label %66

61:                                               ; preds = %41
  %62 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %63 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mmc_detect_change(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %61, %53
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %70 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %13
  %72 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %73 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %79 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %78, i32 0, i32 2
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i32, i32* @HZ, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @mod_timer(%struct.TYPE_4__* %79, i64 %83)
  br label %85

85:                                               ; preds = %77, %71
  ret void
}

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
