; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_xm_link_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_xm_link_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw*, %struct.net_device* }
%struct.skge_hw = type { i32 }
%struct.net_device = type { i32 }

@XM_GP_PORT = common dso_local global i32 0, align 4
@XM_GP_INP_ASS = common dso_local global i32 0, align 4
@XM_IMSK = common dso_local global i32 0, align 4
@XM_IS_INP_ASS = common dso_local global i32 0, align 4
@XM_ISRC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LINK_HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xm_link_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xm_link_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.skge_port*
  store %struct.skge_port* %11, %struct.skge_port** %3, align 8
  %12 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 2
  %17 = load %struct.skge_hw*, %struct.skge_hw** %16, align 8
  store %struct.skge_hw* %17, %struct.skge_hw** %5, align 8
  %18 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %19 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %82

25:                                               ; preds = %1
  %26 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %27 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %43, %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @XM_GP_PORT, align 4
  %37 = call i32 @xm_read16(%struct.skge_hw* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @XM_GP_INP_ASS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %69

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i64 @xm_check_link(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @XM_IMSK, align 4
  %54 = call i32 @xm_read16(%struct.skge_hw* %51, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @XM_IS_INP_ASS, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @XM_IMSK, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @xm_write16(%struct.skge_hw* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @XM_ISRC, align 4
  %67 = call i32 @xm_read16(%struct.skge_hw* %64, i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %71 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %70, i32 0, i32 1
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* @LINK_HZ, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @round_jiffies(i64 %74)
  %76 = call i32 @mod_timer(i32* %71, i32 %75)
  br label %77

77:                                               ; preds = %69, %50
  %78 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %79 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %82

82:                                               ; preds = %77, %24
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i64 @xm_check_link(%struct.net_device*) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
