; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.device = type { i32 }

@acer_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfkill* (%struct.device*, i32, i8*, i64)* @acer_rfkill_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfkill* @acer_rfkill_register(%struct.device* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.rfkill*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rfkill*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call %struct.rfkill* @rfkill_alloc(i8* %12, %struct.device* %13, i32 %14, i32* @acer_rfkill_ops, i8* %16)
  store %struct.rfkill* %17, %struct.rfkill** %11, align 8
  %18 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %19 = icmp ne %struct.rfkill* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.rfkill* @ERR_PTR(i32 %22)
  store %struct.rfkill* %23, %struct.rfkill** %5, align 8
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %26 = call i32 @rfkill_register(%struct.rfkill* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %31 = call i32 @rfkill_destroy(%struct.rfkill* %30)
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.rfkill* @ERR_PTR(i32 %32)
  store %struct.rfkill* %33, %struct.rfkill** %5, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  store %struct.rfkill* %35, %struct.rfkill** %5, align 8
  br label %36

36:                                               ; preds = %34, %29, %20
  %37 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  ret %struct.rfkill* %37
}

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, %struct.device*, i32, i32*, i8*) #1

declare dso_local %struct.rfkill* @ERR_PTR(i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
