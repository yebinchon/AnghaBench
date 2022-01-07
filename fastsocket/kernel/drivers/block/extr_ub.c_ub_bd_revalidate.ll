; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.ub_lun* }
%struct.ub_lun = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @ub_bd_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_bd_revalidate(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.ub_lun*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 1
  %6 = load %struct.ub_lun*, %struct.ub_lun** %5, align 8
  store %struct.ub_lun* %6, %struct.ub_lun** %3, align 8
  %7 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %8 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %11 = call i32 @ub_revalidate(i32 %9, %struct.ub_lun* %10)
  %12 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %16 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @blk_queue_logical_block_size(i32 %14, i32 %18)
  %20 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %21 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %22 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_capacity(%struct.gendisk* %20, i32 %24)
  ret i32 0
}

declare dso_local i32 @ub_revalidate(i32, %struct.ub_lun*) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
