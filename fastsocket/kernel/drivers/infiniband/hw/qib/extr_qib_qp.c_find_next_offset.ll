; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_find_next_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_find_next_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qpn_table = type { i32 }
%struct.qpn_map = type { i32 }

@BITS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qpn_table*, %struct.qpn_map*, i32, i32)* @find_next_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_offset(%struct.qib_qpn_table* %0, %struct.qpn_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_qpn_table*, align 8
  %6 = alloca %struct.qpn_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_qpn_table* %0, %struct.qib_qpn_table** %5, align 8
  store %struct.qpn_map* %1, %struct.qpn_map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %5, align 8
  %10 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %5, align 8
  %18 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = lshr i32 %20, 1
  %22 = load i32, i32* %8, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.qib_qpn_table*, %struct.qib_qpn_table** %5, align 8
  %27 = getelementptr inbounds %struct.qib_qpn_table, %struct.qib_qpn_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = add i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %13
  br label %39

32:                                               ; preds = %4
  %33 = load %struct.qpn_map*, %struct.qpn_map** %6, align 8
  %34 = getelementptr inbounds %struct.qpn_map, %struct.qpn_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BITS_PER_PAGE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @find_next_zero_bit(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
