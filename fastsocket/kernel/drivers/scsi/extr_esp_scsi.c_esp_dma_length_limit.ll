; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_dma_length_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_dma_length_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64 }

@FASHME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, i32, i32)* @esp_dma_length_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_dma_length_limit(%struct.esp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.esp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.esp*, %struct.esp** %4, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FASHME, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ugt i32 %15, 16777216
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 16777216, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %36

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ugt i32 %20, 65536
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 65536, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 16777215
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ugt i32 %29, 16777216
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 16777216, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
