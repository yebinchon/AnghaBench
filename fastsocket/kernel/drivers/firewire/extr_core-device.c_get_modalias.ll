; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_get_modalias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_get_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32* }
%struct.fw_device = type { i32* }
%struct.fw_csr_iterator = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ieee1394:ven%08Xmo%08Xsp%08Xver%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, i8*, i64)* @get_modalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modalias(%struct.fw_unit* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca %struct.fw_csr_iterator, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %16 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %15)
  store %struct.fw_device* %16, %struct.fw_device** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %18 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  %21 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %8, i32* %20)
  br label %22

22:                                               ; preds = %31, %3
  %23 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %8, i32* %9, i32* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %31 [
    i32 129, label %27
    i32 131, label %29
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %25, %29, %27
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %34 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %8, i32* %35)
  br label %37

37:                                               ; preds = %46, %32
  %38 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %8, i32* %9, i32* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %46 [
    i32 130, label %42
    i32 128, label %44
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %13, align 4
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %40, %44, %42
  br label %37

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @snprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
