; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_op_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_op_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i32 }

@TIFM_MMCSD_RSP_R0 = common dso_local global i32 0, align 4
@TIFM_MMCSD_RSP_BUSY = common dso_local global i32 0, align 4
@TIFM_MMCSD_RSP_R1 = common dso_local global i32 0, align 4
@TIFM_MMCSD_RSP_R2 = common dso_local global i32 0, align 4
@TIFM_MMCSD_RSP_R3 = common dso_local global i32 0, align 4
@TIFM_MMCSD_CMD_BC = common dso_local global i32 0, align 4
@TIFM_MMCSD_CMD_BCR = common dso_local global i32 0, align 4
@TIFM_MMCSD_CMD_AC = common dso_local global i32 0, align 4
@TIFM_MMCSD_CMD_ADTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_command*)* @tifm_sd_op_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_sd_op_flags(%struct.mmc_command* %0) #0 {
  %2 = alloca %struct.mmc_command*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_command* %0, %struct.mmc_command** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mmc_command*, %struct.mmc_command** %2, align 8
  %5 = call i32 @mmc_resp_type(%struct.mmc_command* %4)
  switch i32 %5, label %26 [
    i32 132, label %6
    i32 130, label %10
    i32 131, label %14
    i32 129, label %18
    i32 128, label %22
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @TIFM_MMCSD_RSP_R0, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @TIFM_MMCSD_RSP_BUSY, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %1, %10
  %15 = load i32, i32* @TIFM_MMCSD_RSP_R1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @TIFM_MMCSD_RSP_R2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @TIFM_MMCSD_RSP_R3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %1
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %22, %18, %14, %6
  %29 = load %struct.mmc_command*, %struct.mmc_command** %2, align 8
  %30 = call i32 @mmc_cmd_type(%struct.mmc_command* %29)
  switch i32 %30, label %47 [
    i32 134, label %31
    i32 133, label %35
    i32 136, label %39
    i32 135, label %43
  ]

31:                                               ; preds = %28
  %32 = load i32, i32* @TIFM_MMCSD_CMD_BC, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load i32, i32* @TIFM_MMCSD_CMD_BCR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %28
  %40 = load i32, i32* @TIFM_MMCSD_CMD_AC, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %28
  %44 = load i32, i32* @TIFM_MMCSD_CMD_ADTC, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %28
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %43, %39, %35, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mmc_cmd_type(%struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
