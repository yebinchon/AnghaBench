; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_IncStat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_IncStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_pointer = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_pointer*, i32)* @IncStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IncStat(%struct.scsi_pointer* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_pointer*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_pointer* %0, %struct.scsi_pointer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  br label %43

25:                                               ; preds = %16
  %26 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %27, align 8
  %30 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @sg_virt(%struct.TYPE_2__* %32)
  %34 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.scsi_pointer*, %struct.scsi_pointer** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %25, %22
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @sg_virt(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
