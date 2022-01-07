; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_write_gpio_tx_gp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_write_gpio_tx_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, i64, i64, i64*)* @sci_write_gpio_tx_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_write_gpio_tx_gp(%struct.isci_host* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.isci_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %79

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %72, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %23 = call i32 @isci_gpio_count(%struct.isci_host* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %20
  store i32 1092, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %30, 2
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @to_sas_gpio_od(i32 %33, i32 %34)
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @try_test_sas_gpio_gp_bit(i32 %35, i64* %36, i64 %37, i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %55

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 %45, 2
  %47 = add nsw i32 %46, 2
  %48 = shl i32 %44, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %26

55:                                               ; preds = %42, %26
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %75

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %62 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @writel(i32 %60, i32* %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %20

75:                                               ; preds = %58, %20
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %16
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @isci_gpio_count(%struct.isci_host*) #1

declare dso_local i32 @try_test_sas_gpio_gp_bit(i32, i64*, i64, i64) #1

declare dso_local i32 @to_sas_gpio_od(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
