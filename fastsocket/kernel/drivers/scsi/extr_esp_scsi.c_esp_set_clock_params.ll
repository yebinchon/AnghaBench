; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_set_clock_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_set_clock_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, i32, i32 }

@SYNC_DEFP_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_set_clock_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_set_clock_params(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %5 = load %struct.esp*, %struct.esp** %2, align 8
  %6 = getelementptr inbounds %struct.esp, %struct.esp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 1000000
  %10 = add nsw i32 %9, 4
  %11 = sdiv i32 %10, 5
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 5000000
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15
  store i32 20000000, i32* %3, align 4
  store i32 4, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  %33 = load %struct.esp*, %struct.esp** %2, align 8
  %34 = getelementptr inbounds %struct.esp, %struct.esp* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.esp*, %struct.esp** %2, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ESP_HZ_TO_CYCLE(i32 %38)
  %40 = load %struct.esp*, %struct.esp** %2, align 8
  %41 = getelementptr inbounds %struct.esp, %struct.esp* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.esp*, %struct.esp** %2, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ESP_TICK(i32 %42, i32 %45)
  %47 = load %struct.esp*, %struct.esp** %2, align 8
  %48 = getelementptr inbounds %struct.esp, %struct.esp* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ESP_NEG_DEFP(i32 %49, i32 %50)
  %52 = load %struct.esp*, %struct.esp** %2, align 8
  %53 = getelementptr inbounds %struct.esp, %struct.esp* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @SYNC_DEFP_SLOW, align 4
  %55 = load %struct.esp*, %struct.esp** %2, align 8
  %56 = getelementptr inbounds %struct.esp, %struct.esp* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @ESP_HZ_TO_CYCLE(i32) #1

declare dso_local i32 @ESP_TICK(i32, i32) #1

declare dso_local i32 @ESP_NEG_DEFP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
