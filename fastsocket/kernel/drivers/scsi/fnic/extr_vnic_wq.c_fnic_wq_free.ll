; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_wq.c_fnic_wq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_wq.c_fnic_wq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32*, i32**, i32, %struct.vnic_dev* }
%struct.vnic_dev = type { i32 }

@VNIC_WQ_BUF_BLKS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_wq_free(%struct.vnic_wq* %0) #0 {
  %2 = alloca %struct.vnic_wq*, align 8
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %2, align 8
  %5 = load %struct.vnic_wq*, %struct.vnic_wq** %2, align 8
  %6 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %5, i32 0, i32 3
  %7 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  store %struct.vnic_dev* %7, %struct.vnic_dev** %3, align 8
  %8 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %9 = load %struct.vnic_wq*, %struct.vnic_wq** %2, align 8
  %10 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %9, i32 0, i32 2
  %11 = call i32 @vnic_dev_free_desc_ring(%struct.vnic_dev* %8, i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VNIC_WQ_BUF_BLKS_MAX, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.vnic_wq*, %struct.vnic_wq** %2, align 8
  %18 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.vnic_wq*, %struct.vnic_wq** %2, align 8
  %26 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.vnic_wq*, %struct.vnic_wq** %2, align 8
  %36 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  ret void
}

declare dso_local i32 @vnic_dev_free_desc_ring(%struct.vnic_dev*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
