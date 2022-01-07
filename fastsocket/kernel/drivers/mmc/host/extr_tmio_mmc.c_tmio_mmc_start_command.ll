; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_start_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.mmc_command*, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32 }
%struct.mmc_command = type { i32, i32 }

@CTL_STOP_INTERNAL_ACTION = common dso_local global i32 0, align 4
@RESP_NONE = common dso_local global i32 0, align 4
@RESP_R1 = common dso_local global i32 0, align 4
@RESP_R1B = common dso_local global i32 0, align 4
@RESP_R2 = common dso_local global i32 0, align 4
@RESP_R3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown response type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DATA_PRESENT = common dso_local global i32 0, align 4
@TRANSFER_MULTI = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@TMIO_MASK_CMD = common dso_local global i32 0, align 4
@CTL_ARG_REG = common dso_local global i32 0, align 4
@CTL_SD_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, %struct.mmc_command*)* @tmio_mmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_start_command(%struct.tmio_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %6, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %25 = load i32, i32* @CTL_STOP_INTERNAL_ACTION, align 4
  %26 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %24, i32 %25, i32 1)
  store i32 0, i32* %3, align 4
  br label %103

27:                                               ; preds = %18, %2
  %28 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %29 = call i32 @mmc_resp_type(%struct.mmc_command* %28)
  switch i32 %29, label %50 [
    i32 132, label %30
    i32 131, label %34
    i32 130, label %38
    i32 129, label %42
    i32 128, label %46
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @RESP_NONE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %56

34:                                               ; preds = %27
  %35 = load i32, i32* @RESP_R1, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %56

38:                                               ; preds = %27
  %39 = load i32, i32* @RESP_R1B, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %27
  %43 = load i32, i32* @RESP_R2, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %56

46:                                               ; preds = %27
  %47 = load i32, i32* @RESP_R3, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %56

50:                                               ; preds = %27
  %51 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %52 = call i32 @mmc_resp_type(%struct.mmc_command* %51)
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %103

56:                                               ; preds = %46, %42, %38, %34, %30
  %57 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %58 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %59 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %58, i32 0, i32 0
  store %struct.mmc_command* %57, %struct.mmc_command** %59, align 8
  %60 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %61 = icmp ne %struct.mmc_data* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load i32, i32* @DATA_PRESENT, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %72 = load i32, i32* @CTL_STOP_INTERNAL_ACTION, align 4
  %73 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %71, i32 %72, i32 256)
  %74 = load i32, i32* @TRANSFER_MULTI, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MMC_DATA_READ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @TRANSFER_READ, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %77
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %91 = load i32, i32* @TMIO_MASK_CMD, align 4
  %92 = call i32 @enable_mmc_irqs(%struct.tmio_mmc_host* %90, i32 %91)
  %93 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %94 = load i32, i32* @CTL_ARG_REG, align 4
  %95 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sd_ctrl_write32(%struct.tmio_mmc_host* %93, i32 %94, i32 %97)
  %99 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %100 = load i32, i32* @CTL_SD_CMD, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %99, i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %89, %50, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write32(%struct.tmio_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
