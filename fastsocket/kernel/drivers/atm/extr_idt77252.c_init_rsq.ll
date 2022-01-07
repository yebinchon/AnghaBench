; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_init_rsq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_init_rsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.rsq_entry*, %struct.rsq_entry*, %struct.rsq_entry* }
%struct.rsq_entry = type { i64 }

@RSQSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: can't allocate RSQ.\0A\00", align 1
@RSQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@SAR_REG_RSQH = common dso_local global i32 0, align 4
@SAR_REG_RSQB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: RSQ base at 0x%lx (0x%x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: RSQ head = 0x%x, base = 0x%x, tail = 0x%x.\0A\00", align 1
@SAR_REG_RSQT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*)* @init_rsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rsq(%struct.idt77252_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.rsq_entry*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  %5 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RSQSIZE, align 4
  %9 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %10 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.rsq_entry* @pci_alloc_consistent(i32 %7, i32 %8, i64* %11)
  %13 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %14 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.rsq_entry* %12, %struct.rsq_entry** %15, align 8
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %17 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.rsq_entry*, %struct.rsq_entry** %18, align 8
  %20 = icmp eq %struct.rsq_entry* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %23 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %110

26:                                               ; preds = %1
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %28 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.rsq_entry*, %struct.rsq_entry** %29, align 8
  %31 = load i32, i32* @RSQSIZE, align 4
  %32 = call i32 @memset(%struct.rsq_entry* %30, i32 0, i32 %31)
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %34 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.rsq_entry*, %struct.rsq_entry** %35, align 8
  %37 = load i32, i32* @RSQ_NUM_ENTRIES, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %39, i64 -1
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %42 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store %struct.rsq_entry* %40, %struct.rsq_entry** %43, align 8
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load %struct.rsq_entry*, %struct.rsq_entry** %46, align 8
  %48 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %49 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store %struct.rsq_entry* %47, %struct.rsq_entry** %50, align 8
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %52 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.rsq_entry*, %struct.rsq_entry** %53, align 8
  store %struct.rsq_entry* %54, %struct.rsq_entry** %4, align 8
  br label %55

55:                                               ; preds = %65, %26
  %56 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load %struct.rsq_entry*, %struct.rsq_entry** %59, align 8
  %61 = icmp ule %struct.rsq_entry* %56, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %64 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.rsq_entry*, %struct.rsq_entry** %4, align 8
  %67 = getelementptr inbounds %struct.rsq_entry, %struct.rsq_entry* %66, i32 1
  store %struct.rsq_entry* %67, %struct.rsq_entry** %4, align 8
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %70 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load %struct.rsq_entry*, %struct.rsq_entry** %71, align 8
  %73 = ptrtoint %struct.rsq_entry* %72 to i64
  %74 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %75 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.rsq_entry*, %struct.rsq_entry** %76, align 8
  %78 = ptrtoint %struct.rsq_entry* %77 to i64
  %79 = sub i64 %73, %78
  %80 = load i32, i32* @SAR_REG_RSQH, align 4
  %81 = call i32 @writel(i64 %79, i32 %80)
  %82 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %83 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @SAR_REG_RSQB, align 4
  %87 = call i32 @writel(i64 %85, i32 %86)
  %88 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %89 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %92 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.rsq_entry*, %struct.rsq_entry** %93, align 8
  %95 = ptrtoint %struct.rsq_entry* %94 to i64
  %96 = load i32, i32* @SAR_REG_RSQB, align 4
  %97 = call i32 @readl(i32 %96)
  %98 = call i32 (i8*, i32, i64, i32, ...) @IPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %95, i32 %97)
  %99 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %100 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SAR_REG_RSQH, align 4
  %103 = call i32 @readl(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* @SAR_REG_RSQB, align 4
  %106 = call i32 @readl(i32 %105)
  %107 = load i32, i32* @SAR_REG_RSQT, align 4
  %108 = call i32 @readl(i32 %107)
  %109 = call i32 (i8*, i32, i64, i32, ...) @IPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %101, i64 %104, i32 %106, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %68, %21
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.rsq_entry* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memset(%struct.rsq_entry*, i32, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @IPRINTK(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
