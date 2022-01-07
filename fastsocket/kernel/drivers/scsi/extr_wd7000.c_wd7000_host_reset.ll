; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_wd7000_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @wd7000_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd7000_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @spin_unlock_irq(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @wd7000_adapter_reset(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @spin_unlock_irq(i32 %31)
  %33 = load i32, i32* @FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %1
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @wd7000_enable_intr(i32* %35)
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spin_unlock_irq(i32 %43)
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @wd7000_adapter_reset(i32*) #1

declare dso_local i32 @wd7000_enable_intr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
