; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_id_tbl = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_id_tbl*, i64)* @cnic_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_id(%struct.cnic_id_tbl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_id_tbl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cnic_id_tbl* %0, %struct.cnic_id_tbl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %8 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub nsw i64 %10, %9
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %21 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %25 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i64 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %32 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_bit(i64 %30, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %19
  %36 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %4, align 8
  %37 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
