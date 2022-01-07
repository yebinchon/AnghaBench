; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_free_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_free_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { %struct.qpn_map* }
%struct.qpn_map = type { i32, i64 }

@BITS_PER_PAGE = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp_table*, i32)* @free_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_qpn(%struct.ipath_qp_table* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_qp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qpn_map*, align 8
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %7 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %6, i32 0, i32 0
  %8 = load %struct.qpn_map*, %struct.qpn_map** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BITS_PER_PAGE, align 4
  %11 = sdiv i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %8, i64 %12
  store %struct.qpn_map* %13, %struct.qpn_map** %5, align 8
  %14 = load %struct.qpn_map*, %struct.qpn_map** %5, align 8
  %15 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.qpn_map*, %struct.qpn_map** %5, align 8
  %23 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @clear_bit(i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.qpn_map*, %struct.qpn_map** %5, align 8
  %28 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  ret void
}

declare dso_local i32 @clear_bit(i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
