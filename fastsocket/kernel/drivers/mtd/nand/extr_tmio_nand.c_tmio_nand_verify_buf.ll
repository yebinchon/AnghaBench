; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_verify_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_verify_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.tmio_nand = type { i64 }

@FCR_DATA = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32)* @tmio_nand_verify_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_nand_verify_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmio_nand*, align 8
  %9 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info* %10)
  store %struct.tmio_nand* %11, %struct.tmio_nand** %8, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %19, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %24 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FCR_DATA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @tmio_ioread16(i64 %27)
  %29 = icmp ne i64 %22, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info*) #1

declare dso_local i64 @tmio_ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
