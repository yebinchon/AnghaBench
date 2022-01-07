; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_ssfdcr_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_ssfdcr_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.ssfdcr_record = type { i32, i32, i32 }

@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"SSFDC_RO: ssfdcr_getgeo() C=%d, H=%d, S=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)* @ssfdcr_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssfdcr_getgeo(%struct.mtd_blktrans_dev* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.mtd_blktrans_dev*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.ssfdcr_record*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %3, align 8
  %7 = bitcast %struct.mtd_blktrans_dev* %6 to %struct.ssfdcr_record*
  store %struct.ssfdcr_record* %7, %struct.ssfdcr_record** %5, align 8
  %8 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %9 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %10 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %13 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %16 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DEBUG(i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %20 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %23 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %25 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %28 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %5, align 8
  %30 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %33 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
