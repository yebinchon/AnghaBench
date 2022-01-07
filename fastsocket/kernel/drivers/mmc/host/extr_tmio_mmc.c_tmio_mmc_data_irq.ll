; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_data_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Spurious data end IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Completed data request\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_MASK_READOP = common dso_local global i32 0, align 4
@TMIO_MASK_WRITEOP = common dso_local global i32 0, align 4
@CTL_STOP_INTERNAL_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_data_irq(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 0
  %7 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  store %struct.mmc_data* %7, %struct.mmc_data** %3, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 0
  store %struct.mmc_data* null, %struct.mmc_data** %9, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %11 = icmp ne %struct.mmc_data* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 5
  %17 = load %struct.mmc_command*, %struct.mmc_command** %16, align 8
  store %struct.mmc_command* %17, %struct.mmc_command** %4, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %14
  %23 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %35

32:                                               ; preds = %14
  %33 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MMC_DATA_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %45 = load i32, i32* @TMIO_MASK_READOP, align 4
  %46 = call i32 @disable_mmc_irqs(%struct.tmio_mmc_host* %44, i32 %45)
  br label %51

47:                                               ; preds = %35
  %48 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %49 = load i32, i32* @TMIO_MASK_WRITEOP, align 4
  %50 = call i32 @disable_mmc_irqs(%struct.tmio_mmc_host* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = icmp ne %struct.mmc_command* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %66 = load i32, i32* @CTL_STOP_INTERNAL_ACTION, align 4
  %67 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %65, i32 %66, i32 0)
  br label %70

68:                                               ; preds = %59, %54
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %73 = call i32 @tmio_mmc_finish_request(%struct.tmio_mmc_host* %72)
  br label %74

74:                                               ; preds = %71, %12
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @disable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @tmio_mmc_finish_request(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
