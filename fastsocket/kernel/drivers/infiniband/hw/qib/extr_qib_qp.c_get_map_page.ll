; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_get_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_get_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qpn_table = type { i32 }
%struct.qpn_map = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qpn_table*, %struct.qpn_map*)* @get_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_map_page(%struct.qib_qpn_table* %0, %struct.qpn_map* %1) #0 {
  %3 = alloca %struct.qib_qpn_table*, align 8
  %4 = alloca %struct.qpn_map*, align 8
  %5 = alloca i64, align 8
  store %struct.qib_qpn_table* %0, %struct.qib_qpn_table** %3, align 8
  store %struct.qpn_map* %1, %struct.qpn_map** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %3, align 8
  %9 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.qpn_map*, %struct.qpn_map** %4, align 8
  %12 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @free_page(i64 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.qpn_map*, %struct.qpn_map** %4, align 8
  %22 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %3, align 8
  %25 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
