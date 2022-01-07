; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_devready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_devready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { i64 }

@S3C2410_NFSTAT = common dso_local global i64 0, align 8
@S3C2410_NFSTAT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @s3c2410_nand_devready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_nand_devready(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.s3c2410_nand_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %4)
  store %struct.s3c2410_nand_info* %5, %struct.s3c2410_nand_info** %3, align 8
  %6 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %7 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @S3C2410_NFSTAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readb(i64 %10)
  %12 = load i32, i32* @S3C2410_NFSTAT_BUSY, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
