; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.mpc8xxx_spi = type { i32, i32 (%struct.mpc8xxx_spi*)*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPIM_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @mpc8xxx_spi_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xxx_spi_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.mpc8xxx_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %12)
  store %struct.mpc8xxx_spi* %13, %struct.mpc8xxx_spi** %6, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %18 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %23 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %100

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 16
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %100

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %67 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %69 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @INIT_COMPLETION(i32 %70)
  %72 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %73 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* @SPIM_NE, align 4
  %77 = call i32 @mpc8xxx_spi_write_reg(i32* %75, i32 %76)
  %78 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %79 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %78, i32 0, i32 1
  %80 = load i32 (%struct.mpc8xxx_spi*)*, i32 (%struct.mpc8xxx_spi*)** %79, align 8
  %81 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %82 = call i32 %80(%struct.mpc8xxx_spi* %81)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %84 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mpc8xxx_spi_write_reg(i32* %86, i32 %87)
  %89 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %90 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %89, i32 0, i32 3
  %91 = call i32 @wait_for_completion(i32* %90)
  %92 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %93 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @mpc8xxx_spi_write_reg(i32* %95, i32 0)
  %97 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %98 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %64, %58, %45
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
