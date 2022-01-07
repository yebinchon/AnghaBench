; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_xfer_mode2shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_xfer_mode2shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_xfer_ent = type { i64, i64, i64 }

@ata_xfer_tbl = common dso_local global %struct.ata_xfer_ent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_xfer_mode2shift(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_xfer_ent*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** @ata_xfer_tbl, align 8
  store %struct.ata_xfer_ent* %5, %struct.ata_xfer_ent** %4, align 8
  br label %6

6:                                                ; preds = %33, %1
  %7 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %8 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %14 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %20 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %23 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = icmp ult i64 %18, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %29 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %17, %11
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %4, align 8
  %35 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %34, i32 1
  store %struct.ata_xfer_ent* %35, %struct.ata_xfer_ent** %4, align 8
  br label %6

36:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
