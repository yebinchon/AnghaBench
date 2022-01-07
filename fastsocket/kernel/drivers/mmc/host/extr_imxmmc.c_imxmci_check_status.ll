; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [9 x i8] c"card %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"inserted\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@IMXMCI_PEND_CARD_XCHG_b = common dso_local global i32 0, align 4
@IMXMCI_PEND_WAIT_RESP_b = common dso_local global i32 0, align 4
@IMXMCI_PEND_DMA_DATA_b = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @imxmci_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_check_status(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.imxmci_host*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.imxmci_host*
  store %struct.imxmci_host* %5, %struct.imxmci_host** %3, align 8
  %6 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %7 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %6, i32 0, i32 6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  %18 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %19 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mmc_dev(i32 %25)
  %27 = call i32 %22(i32 %26)
  %28 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %29 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %17
  %33 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %34 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %38 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mmc_dev(i32 %39)
  %41 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %42 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @IMXMCI_PEND_CARD_XCHG_b, align 4
  %49 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %50 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %49, i32 0, i32 4
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %53 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %52, i32 0, i32 3
  %54 = call i32 @tasklet_schedule(i32* %53)
  br label %55

55:                                               ; preds = %32, %17, %10, %1
  %56 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %57 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %58 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %57, i32 0, i32 4
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @IMXMCI_PEND_DMA_DATA_b, align 4
  %63 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %64 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %63, i32 0, i32 4
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61, %55
  %68 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %69 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %68, i32 0, i32 2
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %72 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %71, i32 0, i32 2
  %73 = call i32 @atomic_read(i32* %72)
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %77 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %76, i32 0, i32 3
  %78 = call i32 @tasklet_schedule(i32* %77)
  br label %79

79:                                               ; preds = %75, %67
  br label %84

80:                                               ; preds = %61
  %81 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %82 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %81, i32 0, i32 2
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %86 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %85, i32 0, i32 1
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* @HZ, align 4
  %89 = ashr i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @mod_timer(i32* %86, i64 %91)
  ret void
}

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
