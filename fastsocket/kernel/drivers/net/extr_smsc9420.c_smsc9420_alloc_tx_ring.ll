; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32, i64, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocated tx_buffers\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TDES1_TER_ = common dso_local global i64 0, align 8
@TX_BASE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*)* @smsc9420_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %3, align 8
  %5 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %6 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @TX_RING_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_4__* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %18, i32 0, i32 4
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %21 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @IFUP, align 4
  %26 = call i32 @smsc_warn(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TX_RING_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %36 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %43 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %50 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %64 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %71 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %34
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %30

80:                                               ; preds = %30
  %81 = load i64, i64* @TDES1_TER_, align 8
  %82 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %83 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* @TX_RING_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 %81, i64* %89, align 8
  %90 = call i32 (...) @wmb()
  %91 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %92 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %94 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %96 = load i32, i32* @TX_BASE_ADDR, align 4
  %97 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %98 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %95, i32 %96, i32 %99)
  %101 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %102 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %80, %24
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @kmalloc(i32, i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
