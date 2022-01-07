; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_wait_sp_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_wait_sp_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Filtering completion timed out. sp_state 0x%lx, mask 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64)* @bnx2x_wait_sp_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_wait_sp_comp(%struct.bnx2x* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 5000, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = call i32 (...) @smp_mb()
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_addr_lock_bh(i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netif_addr_unlock_bh(i32 %26)
  store i32 1, i32* %3, align 4
  br label %61

28:                                               ; preds = %11
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_addr_unlock_bh(i32 %31)
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %7

34:                                               ; preds = %7
  %35 = call i32 (...) @smp_mb()
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_addr_lock_bh(i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_addr_unlock_bh(i32 %54)
  store i32 0, i32* %3, align 4
  br label %61

56:                                               ; preds = %34
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netif_addr_unlock_bh(i32 %59)
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %46, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_addr_lock_bh(i32) #1

declare dso_local i32 @netif_addr_unlock_bh(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
