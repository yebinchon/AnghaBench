; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_ssfdcr_remove_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_ssfdcr_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.ssfdcr_record = type { %struct.ssfdcr_record* }

@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SSFDC_RO: remove_dev (i=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_blktrans_dev*)* @ssfdcr_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssfdcr_remove_dev(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca %struct.mtd_blktrans_dev*, align 8
  %3 = alloca %struct.ssfdcr_record*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %2, align 8
  %4 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %5 = bitcast %struct.mtd_blktrans_dev* %4 to %struct.ssfdcr_record*
  store %struct.ssfdcr_record* %5, %struct.ssfdcr_record** %3, align 8
  %6 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %7 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DEBUG(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %12 = call i32 @del_mtd_blktrans_dev(%struct.mtd_blktrans_dev* %11)
  %13 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %14 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %13, i32 0, i32 0
  %15 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %14, align 8
  %16 = call i32 @kfree(%struct.ssfdcr_record* %15)
  %17 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %18 = call i32 @kfree(%struct.ssfdcr_record* %17)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @del_mtd_blktrans_dev(%struct.mtd_blktrans_dev*) #1

declare dso_local i32 @kfree(%struct.ssfdcr_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
