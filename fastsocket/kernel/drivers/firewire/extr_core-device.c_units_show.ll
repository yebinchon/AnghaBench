; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_units_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_units_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fw_device = type { i32* }
%struct.fw_csr_iterator = type { i64 }

@fw_device_rwsem = common dso_local global i32 0, align 4
@CSR_UNIT = common dso_local global i32 0, align 4
@CSR_DIRECTORY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @units_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @units_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca %struct.fw_csr_iterator, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.fw_device* @fw_device(%struct.device* %12)
  store %struct.fw_device* %13, %struct.fw_device** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @down_read(i32* @fw_device_rwsem)
  %15 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  %19 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %8, i32* %18)
  br label %20

20:                                               ; preds = %51, %29, %3
  %21 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %8, i32* %9, i32* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CSR_UNIT, align 4
  %26 = load i32, i32* @CSR_DIRECTORY, align 4
  %27 = or i32 %25, %26
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %20

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = sub nsw i64 %39, 1
  %41 = call i64 @units_sprintf(i8* %34, i64 %40)
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 18
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %52

51:                                               ; preds = %30
  br label %20

52:                                               ; preds = %50, %20
  %53 = call i32 @up_read(i32* @fw_device_rwsem)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 10, i8* %61, align 1
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local %struct.fw_device* @fw_device(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local i64 @units_sprintf(i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
