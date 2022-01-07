; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_vblank_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_vblank_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32 }
%struct.work_struct = type { i32 }

@MAPLE_ENABLE = common dso_local global i32 0, align 4
@maple_sentq = common dso_local global i32 0, align 4
@maple_bus_type = common dso_local global i32 0, align 4
@setup_maple_commands = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@maple_pnp_time = common dso_local global i64 0, align 8
@MAPLE_PORTS = common dso_local global i32 0, align 4
@checked = common dso_local global i64* null, align 8
@empty = common dso_local global i64* null, align 8
@baseunits = common dso_local global %struct.maple_device** null, align 8
@MAPLE_COMMAND_DEVINFO = common dso_local global i32 0, align 4
@MAPLE_PNP_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @maple_vblank_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_vblank_handler(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.maple_device*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = call i32 (...) @maple_dma_done()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %72

9:                                                ; preds = %1
  %10 = load i32, i32* @MAPLE_ENABLE, align 4
  %11 = call i32 @ctrl_outl(i32 0, i32 %10)
  %12 = call i32 @list_empty(i32* @maple_sentq)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %70

15:                                               ; preds = %9
  %16 = load i32, i32* @setup_maple_commands, align 4
  %17 = call i32 @bus_for_each_dev(i32* @maple_bus_type, i32* null, i32* null, i32 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @maple_pnp_time, align 8
  %20 = call i64 @time_after(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %62, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAPLE_PORTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i64*, i64** @checked, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load i64*, i64** @empty, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.maple_device**, %struct.maple_device*** @baseunits, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.maple_device*, %struct.maple_device** %42, i64 %44
  %46 = load %struct.maple_device*, %struct.maple_device** %45, align 8
  store %struct.maple_device* %46, %struct.maple_device** %5, align 8
  %47 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %48 = icmp ne %struct.maple_device* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %65

50:                                               ; preds = %41
  %51 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %52 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %51, i32 0, i32 0
  %53 = call i32 @atomic_set(i32* %52, i32 1)
  %54 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %55 = load i32, i32* @MAPLE_COMMAND_DEVINFO, align 4
  %56 = call i32 @maple_add_packet(%struct.maple_device* %54, i32 0, i32 %55, i32 0, i32* null)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %65

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %34, %27
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %23

65:                                               ; preds = %59, %49, %23
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* @MAPLE_PNP_INTERVAL, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* @maple_pnp_time, align 8
  br label %69

69:                                               ; preds = %65, %15
  br label %70

70:                                               ; preds = %69, %14
  %71 = call i32 (...) @maple_send()
  br label %72

72:                                               ; preds = %70, %8
  ret void
}

declare dso_local i32 @maple_dma_done(...) #1

declare dso_local i32 @ctrl_outl(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i32*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @maple_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
