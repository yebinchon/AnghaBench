; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i64 }
%struct.fc_exch_mgr = type { i64, i64, i32 }
%struct.fc_exch_pool = type { i32 }

@fc_cpu_mask = common dso_local global i64 0, align 8
@fc_cpu_order = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_exch* (%struct.fc_exch_mgr*, i64)* @fc_exch_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_exch* @fc_exch_find(%struct.fc_exch_mgr* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_exch_mgr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fc_exch_pool*, align 8
  %6 = alloca %struct.fc_exch*, align 8
  store %struct.fc_exch_mgr* %0, %struct.fc_exch_mgr** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.fc_exch* null, %struct.fc_exch** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %15 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @fc_cpu_mask, align 8
  %24 = and i64 %22, %23
  %25 = call %struct.fc_exch_pool* @per_cpu_ptr(i32 %21, i64 %24)
  store %struct.fc_exch_pool* %25, %struct.fc_exch_pool** %5, align 8
  %26 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %5, align 8
  %27 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %32 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load i64, i64* @fc_cpu_order, align 8
  %36 = ashr i64 %34, %35
  %37 = call %struct.fc_exch* @fc_exch_ptr_get(%struct.fc_exch_pool* %29, i64 %36)
  store %struct.fc_exch* %37, %struct.fc_exch** %6, align 8
  %38 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %39 = icmp ne %struct.fc_exch* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %18
  %41 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %42 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %48 = call i32 @fc_exch_hold(%struct.fc_exch* %47)
  br label %49

49:                                               ; preds = %46, %40, %18
  %50 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %5, align 8
  %51 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  br label %53

53:                                               ; preds = %49, %12, %2
  %54 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  ret %struct.fc_exch* %54
}

declare dso_local %struct.fc_exch_pool* @per_cpu_ptr(i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fc_exch* @fc_exch_ptr_get(%struct.fc_exch_pool*, i64) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
