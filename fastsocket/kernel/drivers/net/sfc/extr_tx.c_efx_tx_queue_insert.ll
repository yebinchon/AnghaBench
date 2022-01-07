; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_tx_queue_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_tx_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i64, %struct.efx_tx_buffer*, %struct.efx_nic* }
%struct.efx_tx_buffer = type { i32, i32, i32, i32 }
%struct.efx_nic = type { i64 }

@EFX_TX_BUF_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32, i32, %struct.efx_tx_buffer**)* @efx_tx_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_tx_queue_insert(%struct.efx_tx_queue* %0, i32 %1, i32 %2, %struct.efx_tx_buffer** %3) #0 {
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_tx_buffer**, align 8
  %9 = alloca %struct.efx_tx_buffer*, align 8
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.efx_tx_buffer** %3, %struct.efx_tx_buffer*** %8, align 8
  %13 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %14 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %13, i32 0, i32 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ule i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @EFX_BUG_ON_PARANOID(i32 %18)
  br label %20

20:                                               ; preds = %4, %74
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %28, i32 0, i32 3
  %30 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %30, i64 %32
  store %struct.efx_tx_buffer* %33, %struct.efx_tx_buffer** %9, align 8
  %34 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %35 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %39 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %43 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @EFX_BUG_ON_PARANOID(i32 %50)
  %52 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %53 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @EFX_BUG_ON_PARANOID(i32 %54)
  %56 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %57 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @EFX_BUG_ON_PARANOID(i32 %58)
  %60 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %61 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @EFX_BUG_ON_PARANOID(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @efx_max_tx_len(%struct.efx_nic* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %20
  br label %87

74:                                               ; preds = %20
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %77 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %79 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %80 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %20

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @EFX_BUG_ON_PARANOID(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %95 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %97 = load %struct.efx_tx_buffer**, %struct.efx_tx_buffer*** %8, align 8
  store %struct.efx_tx_buffer* %96, %struct.efx_tx_buffer** %97, align 8
  ret void
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @efx_max_tx_len(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
