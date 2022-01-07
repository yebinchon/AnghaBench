; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_new_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_new_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.device = type { i32 }

@eeepc_rfkill_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfkill**, i8*, %struct.device*, i32, i32)* @eeepc_new_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_new_rfkill(%struct.rfkill** %0, i8* %1, %struct.device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfkill**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rfkill** %0, %struct.rfkill*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @get_acpi(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %6, align 4
  br label %54

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call %struct.rfkill* @rfkill_alloc(i8* %20, %struct.device* %21, i32 %22, i32* @eeepc_rfkill_ops, i8* %25)
  %27 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  store %struct.rfkill* %26, %struct.rfkill** %27, align 8
  %28 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  %29 = load %struct.rfkill*, %struct.rfkill** %28, align 8
  %30 = icmp ne %struct.rfkill* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %54

34:                                               ; preds = %19
  %35 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  %36 = load %struct.rfkill*, %struct.rfkill** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @get_acpi(i32 %37)
  %39 = icmp ne i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @rfkill_init_sw_state(%struct.rfkill* %36, i32 %40)
  %42 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  %43 = load %struct.rfkill*, %struct.rfkill** %42, align 8
  %44 = call i32 @rfkill_register(%struct.rfkill* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  %49 = load %struct.rfkill*, %struct.rfkill** %48, align 8
  %50 = call i32 @rfkill_destroy(%struct.rfkill* %49)
  %51 = load %struct.rfkill**, %struct.rfkill*** %7, align 8
  store %struct.rfkill* null, %struct.rfkill** %51, align 8
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %47, %31, %17
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @get_acpi(i32) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, %struct.device*, i32, i32*, i8*) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
