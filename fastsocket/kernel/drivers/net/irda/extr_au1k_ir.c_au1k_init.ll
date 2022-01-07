; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_au1k_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_au1k_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1k_private = type { %struct.TYPE_2__**, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@NUM_IR_DESC = common dso_local global i32 0, align 4
@AU_OWN = common dso_local global i32 0, align 4
@IR_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@IR_ENABLE = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@IR_MAX_PKT_LEN = common dso_local global i32 0, align 4
@IR_RING_BASE_ADDR_H = common dso_local global i32 0, align 4
@IR_RING_BASE_ADDR_L = common dso_local global i32 0, align 4
@RING_SIZE_64 = common dso_local global i32 0, align 4
@IR_RING_SIZE = common dso_local global i32 0, align 4
@IR_ONE_PIN = common dso_local global i32 0, align 4
@IR_CONFIG_2 = common dso_local global i32 0, align 4
@IR_RING_ADDR_CMPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1k_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1k_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1k_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.au1k_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1k_private* %8, %struct.au1k_private** %3, align 8
  store i32 14, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %12 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %14 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %16 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NUM_IR_DESC, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* @AU_OWN, align 4
  %23 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %24 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %22, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IR_INTERFACE_CONFIG, align 4
  %37 = call i32 @writel(i32 %35, i32 %36)
  %38 = call i32 @au_sync_delay(i32 10)
  %39 = load i32, i32* @IR_ENABLE, align 4
  %40 = call i32 @read_ir_reg(i32 %39)
  %41 = and i32 %40, -32769
  %42 = load i32, i32* @IR_ENABLE, align 4
  %43 = call i32 @writel(i32 %41, i32 %42)
  %44 = call i32 @au_sync_delay(i32 1)
  %45 = load i32, i32* @MAX_BUF_SIZE, align 4
  %46 = load i32, i32* @IR_MAX_PKT_LEN, align 4
  %47 = call i32 @writel(i32 %45, i32 %46)
  %48 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %49 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = bitcast %struct.TYPE_2__* %52 to i8*
  %54 = call i64 @virt_to_phys(i8* %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 26
  %58 = load i32, i32* @IR_RING_BASE_ADDR_H, align 4
  %59 = call i32 @writel(i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 10
  %62 = and i32 %61, 65535
  %63 = load i32, i32* @IR_RING_BASE_ADDR_L, align 4
  %64 = call i32 @writel(i32 %62, i32 %63)
  %65 = load i32, i32* @RING_SIZE_64, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* @RING_SIZE_64, align 4
  %68 = shl i32 %67, 12
  %69 = or i32 %66, %68
  %70 = load i32, i32* @IR_RING_SIZE, align 4
  %71 = call i32 @writel(i32 %69, i32 %70)
  %72 = load i32, i32* @IR_ONE_PIN, align 4
  %73 = or i32 4, %72
  %74 = load i32, i32* @IR_CONFIG_2, align 4
  %75 = call i32 @writel(i32 %73, i32 %74)
  %76 = load i32, i32* @IR_RING_ADDR_CMPR, align 4
  %77 = call i32 @writel(i32 0, i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @au1k_irda_set_speed(%struct.net_device* %78, i32 9600)
  ret i32 0
}

declare dso_local %struct.au1k_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @au_sync_delay(i32) #1

declare dso_local i32 @read_ir_reg(i32) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @au1k_irda_set_speed(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
