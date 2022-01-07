; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mxcmci_host = type { i32, i32, %struct.mmc_request* }

@CMD_DAT_CONT_INIT = common dso_local global i32 0, align 4
@CMD_DAT_CONT_DATA_ENABLE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@CMD_DAT_CONT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mxcmci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mxcmci_host* %9, %struct.mxcmci_host** %5, align 8
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %14 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %13, i32 0, i32 2
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  %16 = icmp ne %struct.mmc_request* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %20 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %21 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %20, i32 0, i32 2
  store %struct.mmc_request* %19, %struct.mmc_request** %21, align 8
  %22 = load i32, i32* @CMD_DAT_CONT_INIT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %25 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %2
  %33 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @mxcmci_setup_data(%struct.mxcmci_host* %33, %struct.TYPE_4__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %70

46:                                               ; preds = %32
  %47 = load i32, i32* @CMD_DAT_CONT_DATA_ENABLE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MMC_DATA_WRITE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @CMD_DAT_CONT_WRITE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %46
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %65 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mxcmci_start_cmd(%struct.mxcmci_host* %64, %struct.TYPE_3__* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %40
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = call i32 @mxcmci_finish_request(%struct.mxcmci_host* %74, %struct.mmc_request* %75)
  br label %77

77:                                               ; preds = %73, %70
  ret void
}

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mxcmci_setup_data(%struct.mxcmci_host*, %struct.TYPE_4__*) #1

declare dso_local i32 @mxcmci_start_cmd(%struct.mxcmci_host*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mxcmci_finish_request(%struct.mxcmci_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
