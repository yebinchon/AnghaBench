; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_add_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_info = type { i32 }
%struct.s3c2410_nand_mtd = type { i32 }
%struct.s3c2410_nand_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_nand_info*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*)* @s3c2410_nand_add_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_mtd* %1, %struct.s3c2410_nand_set* %2) #0 {
  %4 = alloca %struct.s3c2410_nand_info*, align 8
  %5 = alloca %struct.s3c2410_nand_mtd*, align 8
  %6 = alloca %struct.s3c2410_nand_set*, align 8
  store %struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_info** %4, align 8
  store %struct.s3c2410_nand_mtd* %1, %struct.s3c2410_nand_mtd** %5, align 8
  store %struct.s3c2410_nand_set* %2, %struct.s3c2410_nand_set** %6, align 8
  %7 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %8 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %7, i32 0, i32 0
  %9 = call i32 @add_mtd_device(i32* %8)
  ret i32 %9
}

declare dso_local i32 @add_mtd_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
