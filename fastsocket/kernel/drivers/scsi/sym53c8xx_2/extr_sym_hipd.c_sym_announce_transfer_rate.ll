; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_announce_transfer_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_announce_transfer_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_tcb = type { %struct.TYPE_2__, %struct.scsi_target* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.scsi_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_tcb*)* @sym_announce_transfer_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_announce_transfer_rate(%struct.sym_tcb* %0) #0 {
  %2 = alloca %struct.sym_tcb*, align 8
  %3 = alloca %struct.scsi_target*, align 8
  store %struct.sym_tcb* %0, %struct.sym_tcb** %2, align 8
  %4 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %5 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %4, i32 0, i32 1
  %6 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  store %struct.scsi_target* %6, %struct.scsi_target** %3, align 8
  %7 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %8 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %12 = call i64 @spi_period(%struct.scsi_target* %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %60, label %14

14:                                               ; preds = %1
  %15 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %16 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %20 = call i64 @spi_offset(%struct.scsi_target* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %60, label %22

22:                                               ; preds = %14
  %23 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %24 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %28 = call i64 @spi_width(%struct.scsi_target* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %60, label %30

30:                                               ; preds = %22
  %31 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %32 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %36 = call i64 @spi_iu(%struct.scsi_target* %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %60, label %38

38:                                               ; preds = %30
  %39 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %40 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %44 = call i64 @spi_dt(%struct.scsi_target* %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %38
  %47 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %48 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %52 = call i64 @spi_qas(%struct.scsi_target* %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %56 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %54, %46, %38, %30, %22, %14, %1
  %61 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %62 = call i64 @spi_period(%struct.scsi_target* %61)
  %63 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %64 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %67 = call i64 @spi_offset(%struct.scsi_target* %66)
  %68 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %69 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %72 = call i64 @spi_width(%struct.scsi_target* %71)
  %73 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %74 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %77 = call i64 @spi_iu(%struct.scsi_target* %76)
  %78 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %79 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i64 %77, i64* %80, align 8
  %81 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %82 = call i64 @spi_dt(%struct.scsi_target* %81)
  %83 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %84 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i64 %82, i64* %85, align 8
  %86 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %87 = call i64 @spi_qas(%struct.scsi_target* %86)
  %88 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %89 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  store i64 %87, i64* %90, align 8
  %91 = load %struct.sym_tcb*, %struct.sym_tcb** %2, align 8
  %92 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 6
  store i32 1, i32* %93, align 8
  %94 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %95 = call i32 @spi_display_xfer_agreement(%struct.scsi_target* %94)
  br label %96

96:                                               ; preds = %60, %54
  ret void
}

declare dso_local i64 @spi_period(%struct.scsi_target*) #1

declare dso_local i64 @spi_offset(%struct.scsi_target*) #1

declare dso_local i64 @spi_width(%struct.scsi_target*) #1

declare dso_local i64 @spi_iu(%struct.scsi_target*) #1

declare dso_local i64 @spi_dt(%struct.scsi_target*) #1

declare dso_local i64 @spi_qas(%struct.scsi_target*) #1

declare dso_local i32 @spi_display_xfer_agreement(%struct.scsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
