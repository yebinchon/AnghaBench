; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init.h_bnx2x_init_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init.h_bnx2x_init_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmng_init_input = type { i64* }
%struct.cmng_init = type { %struct.cmng_struct_per_port, %struct.cmng_vnic }
%struct.cmng_struct_per_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cmng_vnic = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@RS_PERIODIC_TIMEOUT_USEC = common dso_local global i32 0, align 4
@SDM_TICKS = common dso_local global i32 0, align 4
@BNX2X_PORT2_MODE_NUM_VNICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmng_init_input*, i32, %struct.cmng_init*)* @bnx2x_init_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_max(%struct.cmng_init_input* %0, i32 %1, %struct.cmng_init* %2) #0 {
  %4 = alloca %struct.cmng_init_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmng_init*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmng_vnic*, align 8
  %9 = alloca %struct.cmng_struct_per_port*, align 8
  store %struct.cmng_init_input* %0, %struct.cmng_init_input** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmng_init* %2, %struct.cmng_init** %6, align 8
  %10 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %11 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %10, i32 0, i32 1
  store %struct.cmng_vnic* %11, %struct.cmng_vnic** %8, align 8
  %12 = load %struct.cmng_init*, %struct.cmng_init** %6, align 8
  %13 = getelementptr inbounds %struct.cmng_init, %struct.cmng_init* %12, i32 0, i32 0
  store %struct.cmng_struct_per_port* %13, %struct.cmng_struct_per_port** %9, align 8
  %14 = load i32, i32* @RS_PERIODIC_TIMEOUT_USEC, align 4
  %15 = load i32, i32* @SDM_TICKS, align 4
  %16 = sdiv i32 %14, %15
  %17 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %9, align 8
  %18 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @RS_PERIODIC_TIMEOUT_USEC, align 4
  %21 = mul nsw i32 5, %20
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sdiv i32 %23, 4
  %25 = load %struct.cmng_struct_per_port*, %struct.cmng_struct_per_port** %9, align 8
  %26 = getelementptr inbounds %struct.cmng_struct_per_port, %struct.cmng_struct_per_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %69, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BNX2X_PORT2_MODE_NUM_VNICS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %34 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cmng_vnic*, %struct.cmng_vnic** %8, align 8
  %41 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 %39, i64* %47, align 8
  %48 = load i32, i32* @RS_PERIODIC_TIMEOUT_USEC, align 4
  %49 = load %struct.cmng_vnic*, %struct.cmng_vnic** %8, align 8
  %50 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = mul nsw i32 %48, %58
  %60 = sdiv i32 %59, 8
  %61 = load %struct.cmng_vnic*, %struct.cmng_vnic** %8, align 8
  %62 = getelementptr inbounds %struct.cmng_vnic, %struct.cmng_vnic* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 8
  br label %69

69:                                               ; preds = %32
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %28

72:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
