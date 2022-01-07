; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_busy_wait_for_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_busy_wait_for_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"busy wait timeout in %s, STATUS = 0x%x (0x%x)\0A\00", align 1
@MMC_REG_STATUS = common dso_local global i64 0, align 8
@STATUS_END_CMD_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"busy wait for %d usec in %s, STATUS = 0x%x (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxmci_host*, i32*, i32, i32, i8*)* @imxmci_busy_wait_for_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_busy_wait_for_status(%struct.imxmci_host* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.imxmci_host*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %36, %5
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.imxmci_host*, %struct.imxmci_host** %7, align 8
  %28 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @mmc_dev(%struct.TYPE_4__* %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %33, i32 %34)
  store i32 -1, i32* %6, align 4
  br label %77

36:                                               ; preds = %20
  %37 = call i32 @udelay(i32 2)
  %38 = load %struct.imxmci_host*, %struct.imxmci_host** %7, align 8
  %39 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_REG_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readw(i64 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %77

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @STATUS_END_CMD_RESP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.imxmci_host*, %struct.imxmci_host** %7, align 8
  %58 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 8000000
  br i1 %63, label %64, label %75

64:                                               ; preds = %56, %51
  %65 = load %struct.imxmci_host*, %struct.imxmci_host** %7, align 8
  %66 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @mmc_dev(%struct.TYPE_4__* %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dev_info(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %56
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %50, %26
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
