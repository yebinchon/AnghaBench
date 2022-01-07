; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2440_nand_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2440_nand_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { i64 }

@S3C2440_NFDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @s3c2440_nand_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2440_nand_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c2410_nand_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %8)
  store %struct.s3c2410_nand_info* %9, %struct.s3c2410_nand_info** %7, align 8
  %10 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %7, align 8
  %11 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2440_NFDATA, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 2
  %18 = call i32 @readsl(i64 %14, i32* %15, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -4
  %25 = load i32*, i32** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %5, align 8
  br label %28

28:                                               ; preds = %41, %22
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %7, align 8
  %34 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S3C2440_NFDATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readb(i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %28

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %3
  ret void
}

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local i32 @readsl(i64, i32*, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
