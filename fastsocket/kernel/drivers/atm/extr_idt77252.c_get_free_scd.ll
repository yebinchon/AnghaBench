; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_get_free_scd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_get_free_scd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64, %struct.vc_map** }
%struct.vc_map = type { i32 }

@SAR_SRAM_SCD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.idt77252_dev*, %struct.vc_map*)* @get_free_scd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_free_scd(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca %struct.vc_map*, align 8
  %6 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %4, align 8
  store %struct.vc_map* %1, %struct.vc_map** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %10 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %15 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %14, i32 0, i32 2
  %16 = load %struct.vc_map**, %struct.vc_map*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %16, i64 %18
  %20 = load %struct.vc_map*, %struct.vc_map** %19, align 8
  %21 = icmp ne %struct.vc_map* %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %13
  %23 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 2
  %26 = load %struct.vc_map**, %struct.vc_map*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %26, i64 %28
  store %struct.vc_map* %23, %struct.vc_map** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %32 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %34 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SAR_SRAM_SCD_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add i64 %35, %39
  store i64 %40, i64* %3, align 8
  br label %46

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
