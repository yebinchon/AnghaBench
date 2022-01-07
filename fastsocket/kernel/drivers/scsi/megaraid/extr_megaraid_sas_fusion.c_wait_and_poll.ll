; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_wait_and_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_wait_and_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.megasas_header }
%struct.megasas_header = type { i32 }

@MFI_POLL_TIMEOUT_SECS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_and_poll(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.megasas_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.megasas_header*, align 8
  %8 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %5, align 8
  %9 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.megasas_header* %12, %struct.megasas_header** %7, align 8
  %13 = load i32, i32* @MFI_POLL_TIMEOUT_SECS, align 4
  %14 = mul nsw i32 %13, 1000
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.megasas_header*, %struct.megasas_header** %7, align 8
  %21 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 255
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = call i32 (...) @rmb()
  %28 = call i32 @msleep(i32 20)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 20
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %24
  %33 = load %struct.megasas_header*, %struct.megasas_header** %7, align 8
  %34 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
