; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_mpc8xxx_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32 (%struct.mpc8xxx_spi*)*, %struct.TYPE_2__*, i32, i64, i32 (i32, %struct.mpc8xxx_spi*)*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SPIE_NE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SPIE_NF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc8xxx_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xxx_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpc8xxx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mpc8xxx_spi*
  store %struct.mpc8xxx_spi* %11, %struct.mpc8xxx_spi** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %14 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mpc8xxx_spi_read_reg(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SPIE_NE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = call i32 @mpc8xxx_spi_read_reg(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %29 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %34 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %33, i32 0, i32 4
  %35 = load i32 (i32, %struct.mpc8xxx_spi*)*, i32 (i32, %struct.mpc8xxx_spi*)** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %38 = call i32 %35(i32 %36, %struct.mpc8xxx_spi* %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SPIE_NF, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %56, %46
  %48 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %49 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mpc8xxx_spi_read_reg(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @SPIE_NF, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 (...) @cpu_relax()
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %61 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %65 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %70 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %69, i32 0, i32 0
  %71 = load i32 (%struct.mpc8xxx_spi*)*, i32 (%struct.mpc8xxx_spi*)** %70, align 8
  %72 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %73 = call i32 %71(%struct.mpc8xxx_spi* %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %75 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @mpc8xxx_spi_write_reg(i32* %77, i32 %78)
  br label %84

80:                                               ; preds = %59
  %81 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %82 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %81, i32 0, i32 2
  %83 = call i32 @complete(i32* %82)
  br label %84

84:                                               ; preds = %80, %68
  %85 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %86 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @mpc8xxx_spi_write_reg(i32* %88, i32 %89)
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
