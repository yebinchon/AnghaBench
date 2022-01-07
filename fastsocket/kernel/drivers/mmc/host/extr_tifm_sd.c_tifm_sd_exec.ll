; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i64, %struct.tifm_dev* }
%struct.tifm_dev = type { i64, i32 }
%struct.mmc_command = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TIFM_MMCSD_ODTO = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TIFM_MMCSD_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"executing opcode 0x%x, arg: 0x%x, mask: 0x%x\0A\00", align 1
@SOCK_MMCSD_ARG_HIGH = common dso_local global i64 0, align 8
@SOCK_MMCSD_ARG_LOW = common dso_local global i64 0, align 8
@SOCK_MMCSD_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.mmc_command*)* @tifm_sd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_exec(%struct.tifm_sd* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.tifm_sd*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.tifm_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.tifm_sd* %0, %struct.tifm_sd** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %8 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %7, i32 0, i32 1
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  store %struct.tifm_dev* %9, %struct.tifm_dev** %5, align 8
  %10 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %11 = call i32 @tifm_sd_op_flags(%struct.mmc_command* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %13 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @TIFM_MMCSD_ODTO, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MMC_DATA_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @TIFM_MMCSD_READ, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %25, %20
  %39 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %40 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %39, i32 0, i32 1
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %47)
  %49 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 65535
  %54 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %55 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SOCK_MMCSD_ARG_HIGH, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 65535
  %64 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %65 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SOCK_MMCSD_ARG_LOW, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %76 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SOCK_MMCSD_COMMAND, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  ret void
}

declare dso_local i32 @tifm_sd_op_flags(%struct.mmc_command*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
