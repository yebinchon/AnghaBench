; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_regs_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.atmel_mci* }
%struct.atmel_mci = type { i32, i32, i32 }

@MCI_REGS_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"MR:\090x%08x%s%s CLKDIV=%u\0A\00", align 1
@MCI_MR = common dso_local global i32 0, align 4
@MCI_MR_RDPROOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" RDPROOF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MCI_MR_WRPROOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" WRPROOF\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DTOR:\090x%08x\0A\00", align 1
@MCI_DTOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"SDCR:\090x%08x\0A\00", align 1
@MCI_SDCR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"ARGR:\090x%08x\0A\00", align 1
@MCI_ARGR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"BLKR:\090x%08x BCNT=%u BLKLEN=%u\0A\00", align 1
@MCI_BLKR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@MCI_SR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@MCI_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @atmci_regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_regs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  %7 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.atmel_mci*, %struct.atmel_mci** %9, align 8
  store %struct.atmel_mci* %10, %struct.atmel_mci** %6, align 8
  %11 = load i32, i32* @MCI_REGS_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 %11, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %21 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %24 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_enable(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MCI_REGS_SIZE, align 4
  %32 = call i32 @memcpy_fromio(i32* %27, i32 %30, i32 %31)
  %33 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_disable(i32 %35)
  %37 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %38 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @MCI_MR, align 4
  %43 = sdiv i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @MCI_MR, align 4
  %49 = sdiv i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MCI_MR_RDPROOF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @MCI_MR, align 4
  %60 = sdiv i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MCI_MR_WRPROOF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @MCI_MR, align 4
  %71 = sdiv i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %57, i8* %68, i32 %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @MCI_DTOR, align 4
  %80 = sdiv i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @MCI_SDCR, align 4
  %88 = sdiv i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @MCI_ARGR, align 4
  %96 = sdiv i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @MCI_BLKR, align 4
  %104 = sdiv i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @MCI_BLKR, align 4
  %110 = sdiv i32 %109, 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65535
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* @MCI_BLKR, align 4
  %117 = sdiv i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 65535
  %123 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %114, i32 %122)
  %124 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @MCI_SR, align 4
  %127 = sdiv i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @atmci_show_status_reg(%struct.seq_file* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @MCI_IMR, align 4
  %135 = sdiv i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @atmci_show_status_reg(%struct.seq_file* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @kfree(i32* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %19, %16
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @atmci_show_status_reg(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
