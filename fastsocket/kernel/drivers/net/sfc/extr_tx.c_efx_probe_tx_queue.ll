; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_probe_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_probe_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32*, i32*, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32 }

@EFX_MIN_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"creating TX queue %d size %#x mask %#x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_probe_tx_queue(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @roundup_pow_of_two(i32 %12)
  %14 = load i32, i32* @EFX_MIN_DMAQ_SIZE, align 4
  %15 = call i32 @max(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @EFX_BUG_ON_PARANOID(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 1
  %23 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_dbg(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 4, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %47 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %98

53:                                               ; preds = %1
  %54 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %55 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %62 = call i32 @efx_tsoh_page_count(%struct.efx_tx_queue* %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kcalloc(i32 %62, i32 4, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %69 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %90

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %78 = call i32 @efx_nic_probe_tx(%struct.efx_tx_queue* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %83

82:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %98

83:                                               ; preds = %81
  %84 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %85 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @kfree(i32* %86)
  %88 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %89 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %83, %72
  %91 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %92 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %96 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %82, %50
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @efx_tsoh_page_count(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_nic_probe_tx(%struct.efx_tx_queue*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
