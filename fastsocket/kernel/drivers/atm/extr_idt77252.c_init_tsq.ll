; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_init_tsq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_init_tsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.tsq_entry*, %struct.tsq_entry*, %struct.tsq_entry* }
%struct.tsq_entry = type { i32 }

@RSQSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: can't allocate TSQ.\0A\00", align 1
@TSQSIZE = common dso_local global i32 0, align 4
@TSQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@SAR_TSQE_INVALID = common dso_local global i32 0, align 4
@SAR_REG_TSQB = common dso_local global i32 0, align 4
@SAR_REG_TSQH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @init_tsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tsq(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.tsq_entry*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RSQSIZE, align 4
  %9 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %10 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.tsq_entry* @pci_alloc_consistent(i32 %7, i32 %8, i64* %11)
  %13 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %14 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.tsq_entry* %12, %struct.tsq_entry** %15, align 8
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.tsq_entry*, %struct.tsq_entry** %18, align 8
  %20 = icmp eq %struct.tsq_entry* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %23 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %90

26:                                               ; preds = %1
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %28 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.tsq_entry*, %struct.tsq_entry** %29, align 8
  %31 = load i32, i32* @TSQSIZE, align 4
  %32 = call i32 @memset(%struct.tsq_entry* %30, i32 0, i32 %31)
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %34 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.tsq_entry*, %struct.tsq_entry** %35, align 8
  %37 = load i32, i32* @TSQ_NUM_ENTRIES, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %39, i64 -1
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %42 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store %struct.tsq_entry* %40, %struct.tsq_entry** %43, align 8
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load %struct.tsq_entry*, %struct.tsq_entry** %46, align 8
  %48 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %49 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %struct.tsq_entry* %47, %struct.tsq_entry** %50, align 8
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %52 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.tsq_entry*, %struct.tsq_entry** %53, align 8
  store %struct.tsq_entry* %54, %struct.tsq_entry** %4, align 8
  br label %55

55:                                               ; preds = %67, %26
  %56 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load %struct.tsq_entry*, %struct.tsq_entry** %59, align 8
  %61 = icmp ule %struct.tsq_entry* %56, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* @SAR_TSQE_INVALID, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %66 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load %struct.tsq_entry*, %struct.tsq_entry** %4, align 8
  %69 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %68, i32 1
  store %struct.tsq_entry* %69, %struct.tsq_entry** %4, align 8
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @SAR_REG_TSQB, align 4
  %76 = call i32 @writel(i64 %74, i32 %75)
  %77 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %78 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load %struct.tsq_entry*, %struct.tsq_entry** %79, align 8
  %81 = ptrtoint %struct.tsq_entry* %80 to i64
  %82 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %83 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load %struct.tsq_entry*, %struct.tsq_entry** %84, align 8
  %86 = ptrtoint %struct.tsq_entry* %85 to i64
  %87 = sub i64 %81, %86
  %88 = load i32, i32* @SAR_REG_TSQH, align 4
  %89 = call i32 @writel(i64 %87, i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %70, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.tsq_entry* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memset(%struct.tsq_entry*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
