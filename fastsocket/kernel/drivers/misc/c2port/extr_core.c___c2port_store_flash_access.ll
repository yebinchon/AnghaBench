; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c___c2port_store_flash_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c___c2port_store_flash_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@C2PORT_FPCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*, i32)* @__c2port_store_flash_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__c2port_store_flash_access(%struct.c2port_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2port_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %8 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %21 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %23 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %46

27:                                               ; preds = %14
  %28 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %29 = load i32, i32* @C2PORT_FPCTL, align 4
  %30 = call i32 @c2port_write_ar(%struct.c2port_device* %28, i32 %29)
  %31 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %32 = call i32 @c2port_write_dr(%struct.c2port_device* %31, i32 2)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %39 = call i32 @c2port_write_dr(%struct.c2port_device* %38, i32 1)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37
  %45 = call i32 @mdelay(i32 25)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %35, %26, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @c2port_write_ar(%struct.c2port_device*, i32) #1

declare dso_local i32 @c2port_write_dr(%struct.c2port_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
