; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_wrb_handles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_free_wrb_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_2__, %struct.hwi_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @free_wrb_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_wrb_handles(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwi_controller*, align 8
  %5 = alloca %struct.hwi_wrb_context*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 1
  %8 = load %struct.hwi_controller*, %struct.hwi_controller** %7, align 8
  store %struct.hwi_controller* %8, %struct.hwi_controller** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %18 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %17, i32 0, i32 0
  %19 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %19, i64 %21
  store %struct.hwi_wrb_context* %22, %struct.hwi_wrb_context** %5, align 8
  %23 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %24 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfree(i32 %25)
  %27 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %5, align 8
  %28 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9

34:                                               ; preds = %9
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
