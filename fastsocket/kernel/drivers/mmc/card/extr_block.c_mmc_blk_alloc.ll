; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_data = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, %struct.mmc_blk_data*, i32*, i32 }
%struct.TYPE_10__ = type { i32, %struct.mmc_blk_data*, i32 }
%struct.mmc_card = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@dev_use = common dso_local global i32 0, align 4
@MMC_NUM_MINORS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_SHIFT = common dso_local global i32 0, align 4
@mmc_blk_issue_rq = common dso_local global i32 0, align 4
@MMC_BLOCK_MAJOR = common dso_local global i32 0, align 4
@mmc_bdops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mmcblk%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_blk_data* (%struct.mmc_card*)* @mmc_blk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_blk_data* @mmc_blk_alloc(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_blk_data*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_blk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %7 = load i32, i32* @dev_use, align 4
  %8 = load i32, i32* @MMC_NUM_MINORS, align 4
  %9 = call i32 @find_first_zero_bit(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MMC_NUM_MINORS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mmc_blk_data* @ERR_PTR(i32 %15)
  store %struct.mmc_blk_data* %16, %struct.mmc_blk_data** %2, align 8
  br label %160

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @dev_use, align 4
  %20 = call i32 @__set_bit(i32 %18, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mmc_blk_data* @kzalloc(i32 48, i32 %21)
  store %struct.mmc_blk_data* %22, %struct.mmc_blk_data** %4, align 8
  %23 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %24 = icmp ne %struct.mmc_blk_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %157

28:                                               ; preds = %17
  %29 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %30 = call i32 @mmc_blk_readonly(%struct.mmc_card* %29)
  %31 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MMC_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = call %struct.TYPE_9__* @alloc_disk(i32 %34)
  %36 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %36, i32 0, i32 1
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %154

45:                                               ; preds = %28
  %46 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %51, i32 0, i32 2
  %53 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %54 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %54, i32 0, i32 3
  %56 = call i32 @mmc_init_queue(%struct.TYPE_10__* %52, %struct.mmc_card* %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %149

60:                                               ; preds = %45
  %61 = load i32, i32* @mmc_blk_issue_rq, align 4
  %62 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %66 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store %struct.mmc_blk_data* %65, %struct.mmc_blk_data** %68, align 8
  %69 = load i32, i32* @MMC_BLOCK_MAJOR, align 4
  %70 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 6
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MMC_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  store i32* @mmc_bdops, i32** %84, align 8
  %85 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %86 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  store %struct.mmc_blk_data* %85, %struct.mmc_blk_data** %89, align 8
  %90 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 8
  %98 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %98, i32 0, i32 2
  %100 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i32* %99, i32** %103, align 8
  %104 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @sprintf(i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @blk_queue_logical_block_size(i32 %114, i32 512)
  %116 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %117 = call i32 @mmc_card_sd(%struct.mmc_card* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %60
  %120 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %121 = call i64 @mmc_card_blockaddr(%struct.mmc_card* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %125 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %128 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @set_capacity(%struct.TYPE_9__* %126, i32 %130)
  br label %147

132:                                              ; preds = %119, %60
  %133 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %134 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %137 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %141 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 9
  %145 = shl i32 %139, %144
  %146 = call i32 @set_capacity(%struct.TYPE_9__* %135, i32 %145)
  br label %147

147:                                              ; preds = %132, %123
  %148 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  store %struct.mmc_blk_data* %148, %struct.mmc_blk_data** %2, align 8
  br label %160

149:                                              ; preds = %59
  %150 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %151 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = call i32 @put_disk(%struct.TYPE_9__* %152)
  br label %154

154:                                              ; preds = %149, %42
  %155 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %4, align 8
  %156 = call i32 @kfree(%struct.mmc_blk_data* %155)
  br label %157

157:                                              ; preds = %154, %25
  %158 = load i32, i32* %6, align 4
  %159 = call %struct.mmc_blk_data* @ERR_PTR(i32 %158)
  store %struct.mmc_blk_data* %159, %struct.mmc_blk_data** %2, align 8
  br label %160

160:                                              ; preds = %157, %147, %13
  %161 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  ret %struct.mmc_blk_data* %161
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local %struct.mmc_blk_data* @ERR_PTR(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local %struct.mmc_blk_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mmc_blk_readonly(%struct.mmc_card*) #1

declare dso_local %struct.TYPE_9__* @alloc_disk(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mmc_init_queue(%struct.TYPE_10__*, %struct.mmc_card*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_blockaddr(%struct.mmc_card*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.mmc_blk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
