; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @nand_davinci_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  store %struct.nand_chip* %10, %struct.nand_chip** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = and i32 3, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 3, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 2
  %26 = call i32 @ioread32_rep(i32 %22, i32* %23, i32 %25)
  br label %52

27:                                               ; preds = %15, %3
  %28 = load i32*, i32** %5, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = and i32 1, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = and i32 1, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  %43 = call i32 @ioread16_rep(i32 %39, i32* %40, i32 %42)
  br label %51

44:                                               ; preds = %32, %27
  %45 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ioread8_rep(i32 %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %36
  br label %52

52:                                               ; preds = %51, %19
  ret void
}

declare dso_local i32 @ioread32_rep(i32, i32*, i32) #1

declare dso_local i32 @ioread16_rep(i32, i32*, i32) #1

declare dso_local i32 @ioread8_rep(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
