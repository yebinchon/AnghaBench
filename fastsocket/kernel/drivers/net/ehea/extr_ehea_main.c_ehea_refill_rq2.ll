; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_refill_rq2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_refill_rq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { i32 }

@EHEA_RWQE2_TYPE = common dso_local global i32 0, align 4
@EHEA_RQ2_PKT_SIZE = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port_res*, i32)* @ehea_refill_rq2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_refill_rq2(%struct.ehea_port_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_port_res*, align 8
  %4 = alloca i32, align 4
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %6 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %7 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EHEA_RWQE2_TYPE, align 4
  %10 = load i64, i64* @EHEA_RQ2_PKT_SIZE, align 8
  %11 = load i64, i64* @NET_IP_ALIGN, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @ehea_refill_rq_def(%struct.ehea_port_res* %5, i32* %7, i32 2, i32 %8, i32 %9, i64 %12)
  ret i32 %13
}

declare dso_local i32 @ehea_refill_rq_def(%struct.ehea_port_res*, i32*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
