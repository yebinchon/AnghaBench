; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_lookup_timeout_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_lookup_timeout_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@ATA_EH_CMD_TIMEOUT_TABLE_SIZE = common dso_local global i32 0, align 4
@ata_eh_cmd_timeout_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ata_lookup_timeout_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_lookup_timeout_table(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ATA_EH_CMD_TIMEOUT_TABLE_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ata_eh_cmd_timeout_table, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %5, align 8
  br label %17

17:                                               ; preds = %29, %10
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %5, align 8
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
