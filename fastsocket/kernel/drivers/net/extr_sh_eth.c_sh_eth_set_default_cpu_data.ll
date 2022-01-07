; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_set_default_cpu_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_set_default_cpu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_eth_cpu_data = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@DEFAULT_ECSR_INIT = common dso_local global i64 0, align 8
@DEFAULT_ECSIPR_INIT = common dso_local global i64 0, align 8
@DEFAULT_FIFO_F_D_RFF = common dso_local global i32 0, align 4
@DEFAULT_FIFO_F_D_RFD = common dso_local global i32 0, align 4
@DEFAULT_FDR_INIT = common dso_local global i64 0, align 8
@DEFAULT_RMCR_VALUE = common dso_local global i64 0, align 8
@DEFAULT_TX_CHECK = common dso_local global i64 0, align 8
@DEFAULT_EESR_ERR_CHECK = common dso_local global i64 0, align 8
@DEFAULT_TX_ERROR_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_eth_cpu_data*)* @sh_eth_set_default_cpu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_set_default_cpu_data(%struct.sh_eth_cpu_data* %0) #0 {
  %2 = alloca %struct.sh_eth_cpu_data*, align 8
  store %struct.sh_eth_cpu_data* %0, %struct.sh_eth_cpu_data** %2, align 8
  %3 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %4 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @DEFAULT_ECSR_INIT, align 8
  %9 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %10 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %9, i32 0, i32 7
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %13 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* @DEFAULT_ECSIPR_INIT, align 8
  %18 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %19 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %22 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @DEFAULT_FIFO_F_D_RFF, align 4
  %27 = load i32, i32* @DEFAULT_FIFO_F_D_RFD, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %30 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %33 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @DEFAULT_FDR_INIT, align 8
  %38 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %39 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %42 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @DEFAULT_RMCR_VALUE, align 8
  %47 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %48 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %51 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* @DEFAULT_TX_CHECK, align 8
  %56 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %57 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %60 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @DEFAULT_EESR_ERR_CHECK, align 8
  %65 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %66 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %69 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @DEFAULT_TX_ERROR_CHECK, align 8
  %74 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %2, align 8
  %75 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
