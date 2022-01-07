; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_init_special_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_init_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_special_buffer = type { i32, i32, i32, i32 }

@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mapping special buffer %d at %llx\0A\00", align 1
@FRF_AZ_BUF_ADR_REGION = common dso_local global i32 0, align 4
@FRF_AZ_BUF_ADR_FBUF = common dso_local global i32 0, align 4
@FRF_AZ_BUF_OWNER_ID_FBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_special_buffer*)* @efx_init_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_init_special_buffer(%struct.efx_nic* %0, %struct.efx_special_buffer* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_special_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_special_buffer* %1, %struct.efx_special_buffer** %4, align 8
  %9 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @EFX_BUG_ON_PARANOID(i32 %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %54, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %16
  %23 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EFX_BUF_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = load i32, i32* @probe, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @netif_dbg(%struct.efx_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FRF_AZ_BUF_ADR_REGION, align 4
  %46 = load i32, i32* @FRF_AZ_BUF_ADR_FBUF, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 12
  %49 = load i32, i32* @FRF_AZ_BUF_OWNER_ID_FBUF, align 4
  %50 = call i32 @EFX_POPULATE_QWORD_3(i32 %44, i32 %45, i32 0, i32 %46, i32 %48, i32 %49, i32 0)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @efx_write_buf_tbl(%struct.efx_nic* %51, i32* %5, i32 %52)
  br label %54

54:                                               ; preds = %22
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %16

57:                                               ; preds = %16
  ret void
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @EFX_POPULATE_QWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_write_buf_tbl(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
