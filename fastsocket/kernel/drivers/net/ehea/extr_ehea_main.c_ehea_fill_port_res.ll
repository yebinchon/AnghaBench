; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_fill_port_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_fill_port_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ehea_qp_init_attr }
%struct.ehea_qp_init_attr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port_res*)* @ehea_fill_port_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_fill_port_res(%struct.ehea_port_res* %0) #0 {
  %2 = alloca %struct.ehea_port_res*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_qp_init_attr*, align 8
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %2, align 8
  %5 = load %struct.ehea_port_res*, %struct.ehea_port_res** %2, align 8
  %6 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.ehea_qp_init_attr* %8, %struct.ehea_qp_init_attr** %4, align 8
  %9 = load %struct.ehea_port_res*, %struct.ehea_port_res** %2, align 8
  %10 = load %struct.ehea_port_res*, %struct.ehea_port_res** %2, align 8
  %11 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ehea_init_fill_rq1(%struct.ehea_port_res* %9, i32 %13)
  %15 = load %struct.ehea_port_res*, %struct.ehea_port_res** %2, align 8
  %16 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %4, align 8
  %17 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @ehea_refill_rq2(%struct.ehea_port_res* %15, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.ehea_port_res*, %struct.ehea_port_res** %2, align 8
  %22 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %4, align 8
  %23 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @ehea_refill_rq3(%struct.ehea_port_res* %21, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ehea_init_fill_rq1(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @ehea_refill_rq2(%struct.ehea_port_res*, i64) #1

declare dso_local i32 @ehea_refill_rq3(%struct.ehea_port_res*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
