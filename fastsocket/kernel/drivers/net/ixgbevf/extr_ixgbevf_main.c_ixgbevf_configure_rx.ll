; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFPSRTYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_rx(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 2
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %4, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %11 = load i8*, i8** @IXGBE_VFPSRTYPE, align 8
  %12 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %10, i8* %11, i32 0)
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = call i32 @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter* %13)
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %94, %1
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %24
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  %39 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @IXGBE_VFRDBAL(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @DMA_BIT_MASK(i32 32)
  %52 = and i32 %50, %51
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i8* %49, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @IXGBE_VFRDBAH(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = ashr i32 %57, 32
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i8* %56, i32 %58)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @IXGBE_VFRDLEN(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i8* %62, i32 %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @IXGBE_VFRDH(i32 %66)
  %68 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i8* %67, i32 0)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @IXGBE_VFRDT(i32 %70)
  %72 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i8* %71, i32 0)
  %73 = load i32, i32* %6, align 4
  %74 = call i8* @IXGBE_VFRDH(i32 %73)
  %75 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i8* %74, i8** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @IXGBE_VFRDT(i32 %82)
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i8* %83, i8** %90, align 8
  %91 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter* %91, i32 %92)
  br label %94

94:                                               ; preds = %30
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %24

97:                                               ; preds = %24
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i8*, i32) #1

declare dso_local i32 @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter*) #1

declare dso_local i8* @IXGBE_VFRDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @IXGBE_VFRDBAH(i32) #1

declare dso_local i8* @IXGBE_VFRDLEN(i32) #1

declare dso_local i8* @IXGBE_VFRDH(i32) #1

declare dso_local i8* @IXGBE_VFRDT(i32) #1

declare dso_local i32 @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
