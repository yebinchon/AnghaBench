; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_swap_interleaved_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_swap_interleaved_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amd64_pvt = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SWAP_INTLV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32)* @f1x_swap_interleaved_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_swap_interleaved_region(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %19, %16
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %27 = load i32, i32* @SWAP_INTLV_REG, align 4
  %28 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %26, i32 %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %68

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 3
  %37 = and i32 %36, 127
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 11
  %40 = and i32 %39, 127
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 20
  %43 = and i32 %42, 127
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 27
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 34
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 27
  %65 = xor i32 %62, %64
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %57, %34
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %61, %32, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
