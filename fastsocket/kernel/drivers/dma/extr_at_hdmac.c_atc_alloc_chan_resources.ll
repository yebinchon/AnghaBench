; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, %struct.at_dma_slave*, i32 }
%struct.at_dma_slave = type { i64, i64 }
%struct.at_dma_chan = type { i32, i32, i32, i32 }
%struct.at_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.at_desc = type { i32 }

@tmp_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"alloc_chan_resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DMA channel not idle ?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATC_DEFAULT_CFG = common dso_local global i64 0, align 8
@init_nr_desc_per_channel = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Only %d initial descriptors\0A\00", align 1
@CFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"alloc_chan_resources: allocated %d descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @atc_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.at_dma_chan*, align 8
  %5 = alloca %struct.at_dma*, align 8
  %6 = alloca %struct.at_desc*, align 8
  %7 = alloca %struct.at_dma_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = call %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan* %10)
  store %struct.at_dma_chan* %11, %struct.at_dma_chan** %4, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.at_dma* @to_at_dma(i32 %14)
  store %struct.at_dma* %15, %struct.at_dma** %5, align 8
  %16 = load i32, i32* @tmp_list, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %19 = call i32 @chan2dev(%struct.dma_chan* %18)
  %20 = call i32 @dev_vdbg(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %22 = call i64 @atc_chan_is_enabled(%struct.at_dma_chan* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %26 = call i32 @chan2dev(%struct.dma_chan* %25)
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %1
  %31 = load i64, i64* @ATC_DEFAULT_CFG, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %32, i32 0, i32 1
  %34 = load %struct.at_dma_slave*, %struct.at_dma_slave** %33, align 8
  store %struct.at_dma_slave* %34, %struct.at_dma_slave** %7, align 8
  %35 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %36 = icmp ne %struct.at_dma_slave* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %39 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %44 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %47 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br label %51

51:                                               ; preds = %42, %37
  %52 = phi i1 [ true, %37 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %56 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %61 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %59, %51
  br label %64

64:                                               ; preds = %63, %30
  %65 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %66 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %65, i32 0, i32 3
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %71 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %2, align 4
  br label %128

73:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %95, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @init_nr_desc_per_channel, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.at_desc* @atc_alloc_descriptor(%struct.dma_chan* %79, i32 %80)
  store %struct.at_desc* %81, %struct.at_desc** %6, align 8
  %82 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %83 = icmp ne %struct.at_desc* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %86 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(i64 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %98

91:                                               ; preds = %78
  %92 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %93 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %93, i32* @tmp_list)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %74

98:                                               ; preds = %84, %74
  %99 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %100 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %99, i32 0, i32 2
  %101 = call i32 @spin_lock_bh(i32* %100)
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %104 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %106 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %105, i32 0, i32 3
  %107 = call i32 @list_splice(i32* @tmp_list, i32* %106)
  %108 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %109 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %111 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %113 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_bh(i32* %113)
  %115 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %116 = load i32, i32* @CFG, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @channel_writel(%struct.at_dma_chan* %115, i32 %116, i64 %117)
  %119 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %120 = call i32 @chan2dev(%struct.dma_chan* %119)
  %121 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %122 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %126 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %98, %69, %24
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i64 @atc_chan_is_enabled(%struct.at_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.at_desc* @atc_alloc_descriptor(%struct.dma_chan*, i32) #1

declare dso_local i32 @dev_err(i64, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @channel_writel(%struct.at_dma_chan*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
