; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_wq_copy_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_wq_copy_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32* }

@fnic_fcpio_cmpl_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_wq_copy_cmpl_handler(%struct.fnic* %0, i32 %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.fnic*, %struct.fnic** %3, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.fnic*, %struct.fnic** %3, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  %21 = load %struct.fnic*, %struct.fnic** %3, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.fnic*, %struct.fnic** %3, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @fnic_fcpio_cmpl_handler, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vnic_cq_copy_service(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @vnic_cq_copy_service(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
