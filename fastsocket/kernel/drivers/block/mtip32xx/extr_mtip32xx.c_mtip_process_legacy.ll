; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.mtip_port* }
%struct.mtip_port = type { i32*, i32, %struct.mtip_cmd* }
%struct.mtip_cmd = type { i32, i32 (%struct.mtip_port*, i64, i32, i32)* }

@MTIP_TAG_INTERNAL = common dso_local global i64 0, align 8
@MTIP_PF_IC_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i32)* @mtip_process_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_process_legacy(%struct.driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca %struct.mtip_cmd*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 0
  %9 = load %struct.mtip_port*, %struct.mtip_port** %8, align 8
  store %struct.mtip_port* %9, %struct.mtip_port** %5, align 8
  %10 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %11 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %10, i32 0, i32 2
  %12 = load %struct.mtip_cmd*, %struct.mtip_cmd** %11, align 8
  %13 = load i64, i64* @MTIP_TAG_INTERNAL, align 8
  %14 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %12, i64 %13
  store %struct.mtip_cmd* %14, %struct.mtip_cmd** %6, align 8
  %15 = load i32, i32* @MTIP_PF_IC_ACTIVE_BIT, align 4
  %16 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %17 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %22 = icmp ne %struct.mtip_cmd* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %25 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @MTIP_TAG_INTERNAL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  %31 = load i64, i64* @MTIP_TAG_INTERNAL, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %23
  %37 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %37, i32 0, i32 1
  %39 = load i32 (%struct.mtip_port*, i64, i32, i32)*, i32 (%struct.mtip_port*, i64, i32, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.mtip_port*, i64, i32, i32)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %42, i32 0, i32 1
  %44 = load i32 (%struct.mtip_port*, i64, i32, i32)*, i32 (%struct.mtip_port*, i64, i32, i32)** %43, align 8
  %45 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %46 = load i64, i64* @MTIP_TAG_INTERNAL, align 8
  %47 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(%struct.mtip_port* %45, i64 %46, i32 %49, i32 0)
  br label %53

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %23, %20, %2
  br label %53

53:                                               ; preds = %52, %41
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
