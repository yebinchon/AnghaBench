; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c___c2port_write_flash_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c___c2port_write_flash_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { i32 }

@C2PORT_FPDAT = common dso_local global i32 0, align 4
@C2PORT_DEVICE_ERASE = common dso_local global i32 0, align 4
@C2PORT_COMMAND_OK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*)* @__c2port_write_flash_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__c2port_write_flash_erase(%struct.c2port_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c2port_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %3, align 8
  %6 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %7 = load i32, i32* @C2PORT_FPDAT, align 4
  %8 = call i32 @c2port_write_ar(%struct.c2port_device* %6, i32 %7)
  %9 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %10 = load i32, i32* @C2PORT_DEVICE_ERASE, align 4
  %11 = call i32 @c2port_write_dr(%struct.c2port_device* %9, i32 %10)
  %12 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %13 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %20 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %27 = call i32 @c2port_read_dr(%struct.c2port_device* %26, i64* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %74

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @C2PORT_COMMAND_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %74

39:                                               ; preds = %32
  %40 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %41 = call i32 @c2port_write_dr(%struct.c2port_device* %40, i32 222)
  %42 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %43 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %74

48:                                               ; preds = %39
  %49 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %50 = call i32 @c2port_write_dr(%struct.c2port_device* %49, i32 173)
  %51 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %52 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %74

57:                                               ; preds = %48
  %58 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %59 = call i32 @c2port_write_dr(%struct.c2port_device* %58, i32 165)
  %60 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %61 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %57
  %67 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %68 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %64, %55, %46, %36, %30, %23, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @c2port_write_ar(%struct.c2port_device*, i32) #1

declare dso_local i32 @c2port_write_dr(%struct.c2port_device*, i32) #1

declare dso_local i32 @c2port_poll_in_busy(%struct.c2port_device*) #1

declare dso_local i32 @c2port_poll_out_ready(%struct.c2port_device*) #1

declare dso_local i32 @c2port_read_dr(%struct.c2port_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
