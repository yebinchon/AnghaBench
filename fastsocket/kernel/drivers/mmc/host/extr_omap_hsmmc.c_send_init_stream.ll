; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_send_init_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_send_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i64 }

@CON = common dso_local global i32 0, align 4
@INIT_STREAM = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@INIT_STREAM_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MMC_TIMEOUT_MS = common dso_local global i32 0, align 4
@CC = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@STAT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @send_init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_init_stream(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @disable_irq(i32 %13)
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CON, align 4
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CON, align 4
  %23 = call i32 @OMAP_HSMMC_READ(i32 %21, i32 %22)
  %24 = load i32, i32* @INIT_STREAM, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @OMAP_HSMMC_WRITE(i32 %17, i32 %18, i32 %25)
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CMD, align 4
  %31 = load i32, i32* @INIT_STREAM_CMD, align 4
  %32 = call i32 @OMAP_HSMMC_WRITE(i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @MMC_TIMEOUT_MS, align 4
  %35 = call i64 @msecs_to_jiffies(i32 %34)
  %36 = add i64 %33, %35
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %48, %10
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CC, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @time_before(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %50 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @STAT, align 4
  %53 = call i32 @OMAP_HSMMC_READ(i32 %51, i32 %52)
  %54 = load i32, i32* @CC, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %3, align 4
  br label %37

56:                                               ; preds = %46
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CON, align 4
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CON, align 4
  %65 = call i32 @OMAP_HSMMC_READ(i32 %63, i32 %64)
  %66 = load i32, i32* @INIT_STREAM, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @OMAP_HSMMC_WRITE(i32 %59, i32 %60, i32 %68)
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STAT, align 4
  %74 = load i32, i32* @STAT_CLEAR, align 4
  %75 = call i32 @OMAP_HSMMC_WRITE(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %77 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @STAT, align 4
  %80 = call i32 @OMAP_HSMMC_READ(i32 %78, i32 %79)
  %81 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %82 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @enable_irq(i32 %83)
  br label %85

85:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
