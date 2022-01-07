; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_parisc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_parisc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hardware_path = type { i8, i8* }
%struct.parisc_device = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.hardware_path*)* @match_parisc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_parisc_device(%struct.device* %0, i32 %1, %struct.hardware_path* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hardware_path*, align 8
  %7 = alloca %struct.parisc_device*, align 8
  %8 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hardware_path* %2, %struct.hardware_path** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.parisc_device* @to_parisc_device(%struct.device* %9)
  store %struct.parisc_device* %10, %struct.parisc_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.hardware_path*, %struct.hardware_path** %6, align 8
  %15 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = sext i8 %16 to i32
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.hardware_path*, %struct.hardware_path** %6, align 8
  %20 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %13
  %28 = phi i32 [ %17, %13 ], [ %26, %18 ]
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %8, align 1
  %30 = load %struct.parisc_device*, %struct.parisc_device** %7, align 8
  %31 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local %struct.parisc_device* @to_parisc_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
