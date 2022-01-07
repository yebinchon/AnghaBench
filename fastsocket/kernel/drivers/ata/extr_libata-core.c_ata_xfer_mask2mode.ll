; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_xfer_mask2mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_xfer_mask2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_xfer_ent = type { i32, i32, i32 }

@ata_xfer_tbl = common dso_local global %struct.ata_xfer_ent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_xfer_mask2mode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_xfer_ent*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @fls(i64 %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** @ata_xfer_tbl, align 8
  store %struct.ata_xfer_ent* %9, %struct.ata_xfer_ent** %5, align 8
  br label %10

10:                                               ; preds = %42, %1
  %11 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %12 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %18 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %24 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %27 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = icmp slt i32 %22, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %33 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %38 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %21, %15
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.ata_xfer_ent*, %struct.ata_xfer_ent** %5, align 8
  %44 = getelementptr inbounds %struct.ata_xfer_ent, %struct.ata_xfer_ent* %43, i32 1
  store %struct.ata_xfer_ent* %44, %struct.ata_xfer_ent** %5, align 8
  br label %10

45:                                               ; preds = %10
  store i32 255, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
