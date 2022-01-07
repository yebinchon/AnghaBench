; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_native.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32 }

@MMC_RSP_R2 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, i32*, i32)* @mmc_send_cxd_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_cxd_native(%struct.mmc_host* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_command, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %13 = icmp ne %struct.mmc_host* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = call i32 @memset(%struct.mmc_command* %11, i32 0, i32 16)
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MMC_RSP_R2, align 4
  %28 = load i32, i32* @MMC_CMD_AC, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %32 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %33 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %31, %struct.mmc_command* %11, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32* %39, i32 %41, i32 16)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %36
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
