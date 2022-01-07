; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_get_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_get_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp_table = type { i32 }
%struct.qpn_map = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp_table*, %struct.qpn_map*)* @get_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_map_page(%struct.ipath_qp_table* %0, %struct.qpn_map* %1) #0 {
  %3 = alloca %struct.ipath_qp_table*, align 8
  %4 = alloca %struct.qpn_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ipath_qp_table* %0, %struct.ipath_qp_table** %3, align 8
  store %struct.qpn_map* %1, %struct.qpn_map** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @get_zeroed_page(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.qpn_map*, %struct.qpn_map** %4, align 8
  %14 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @free_page(i64 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.qpn_map*, %struct.qpn_map** %4, align 8
  %24 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.ipath_qp_table*, %struct.ipath_qp_table** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_qp_table, %struct.ipath_qp_table* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
