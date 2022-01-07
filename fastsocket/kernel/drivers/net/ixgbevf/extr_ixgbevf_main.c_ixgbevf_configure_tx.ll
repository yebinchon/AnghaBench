; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i64, %struct.ixgbevf_ring*, %struct.ixgbe_hw }
%struct.ixgbevf_ring = type { i64, i32, i32, i8*, i8* }
%struct.ixgbe_hw = type { i32 }

@IXGBE_DCA_TXCTRL_TX_WB_RO_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_tx(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %92, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %12
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 1
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %21, i64 %22
  store %struct.ixgbevf_ring* %23, %struct.ixgbevf_ring** %9, align 8
  %24 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @IXGBE_VFTDBAL(i64 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @DMA_BIT_MASK(i32 32)
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i8* %37, i64 %41)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i8* @IXGBE_VFTDBAH(i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i8* %45, i64 %48)
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i8* @IXGBE_VFTDLEN(i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i8* %52, i64 %53)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i8* @IXGBE_VFTDH(i64 %56)
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %55, i8* %57, i64 0)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i8* @IXGBE_VFTDT(i64 %60)
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i8* %61, i64 0)
  %63 = load i64, i64* %6, align 8
  %64 = call i8* @IXGBE_VFTDH(i64 %63)
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %65, i32 0, i32 1
  %67 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %67, i64 %68
  %70 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %69, i32 0, i32 4
  store i8* %64, i8** %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @IXGBE_VFTDT(i64 %71)
  %73 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %73, i32 0, i32 1
  %75 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %75, i64 %76
  %78 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %77, i32 0, i32 3
  store i8* %72, i8** %78, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @IXGBE_VFDCA_TXCTRL(i64 %80)
  %82 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %79, i8* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* @IXGBE_DCA_TXCTRL_TX_WB_RO_EN, align 8
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %8, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %8, align 8
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i8* @IXGBE_VFDCA_TXCTRL(i64 %88)
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i8* %89, i64 %90)
  br label %92

92:                                               ; preds = %18
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %12

95:                                               ; preds = %12
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i8* @IXGBE_VFTDBAL(i64) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @IXGBE_VFTDBAH(i64) #1

declare dso_local i8* @IXGBE_VFTDLEN(i64) #1

declare dso_local i8* @IXGBE_VFTDH(i64) #1

declare dso_local i8* @IXGBE_VFTDT(i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i8*) #1

declare dso_local i8* @IXGBE_VFDCA_TXCTRL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
