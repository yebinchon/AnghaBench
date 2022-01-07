; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to clear routing bits.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@QL_ASIC_RECOVERY = common dso_local global i32 0, align 4
@MB_SET_MPI_TFK_STOP = common dso_local global i32 0, align 4
@RST_FO = common dso_local global i32 0, align 4
@RST_FO_FR = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ETIMEDOUT!!! errored out of resetting the chip!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MB_SET_MPI_TFK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_reset(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = call i32 @ql_clear_routing_entries(%struct.ql_adapter* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = load i32, i32* @ifup, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_err(%struct.ql_adapter* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load i64, i64* @jiffies, align 8
  %21 = call i32 @usecs_to_jiffies(i32 30)
  %22 = call i64 @max(i64 1, i32 %21)
  %23 = add i64 %20, %22
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @QL_ASIC_RECOVERY, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %31 = load i32, i32* @MB_SET_MPI_TFK_STOP, align 4
  %32 = call i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter* %30, i32 %31)
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = call i32 @ql_wait_fifo_empty(%struct.ql_adapter* %33)
  br label %40

35:                                               ; preds = %19
  %36 = load i32, i32* @QL_ASIC_RECOVERY, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = load i32, i32* @RST_FO, align 4
  %43 = load i32, i32* @RST_FO_FR, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* @RST_FO_FR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ql_write32(%struct.ql_adapter* %41, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %59, %40
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %50 = load i32, i32* @RST_FO, align 4
  %51 = call i32 @ql_read32(%struct.ql_adapter* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @RST_FO_FR, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %64

57:                                               ; preds = %48
  %58 = call i32 (...) @cpu_relax()
  br label %59

59:                                               ; preds = %57
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @time_before(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %48, label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RST_FO_FR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %71 = load i32, i32* @ifdown, align 4
  %72 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netif_err(%struct.ql_adapter* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %80 = load i32, i32* @MB_SET_MPI_TFK_RESUME, align 4
  %81 = call i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter* %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %11
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ql_clear_routing_entries(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_mb_set_mgmnt_traffic_ctl(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_wait_fifo_empty(%struct.ql_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
