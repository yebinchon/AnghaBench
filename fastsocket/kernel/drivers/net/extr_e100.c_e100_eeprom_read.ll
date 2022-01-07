; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@op_read = common dso_local global i32 0, align 4
@eecs = common dso_local global i32 0, align 4
@eesk = common dso_local global i32 0, align 4
@eedi = common dso_local global i32 0, align 4
@eedo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i32*, i32)* @e100_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_eeprom_read(%struct.nic* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @op_read, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %11, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  %17 = shl i32 %16, 16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @eecs, align 4
  %19 = load i32, i32* @eesk, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.nic*, %struct.nic** %4, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @iowrite8(i32 %20, i32* %24)
  %26 = load %struct.nic*, %struct.nic** %4, align 8
  %27 = call i32 @e100_write_flush(%struct.nic* %26)
  %28 = call i32 @udelay(i32 4)
  store i32 31, i32* %10, align 4
  br label %29

29:                                               ; preds = %94, %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @eecs, align 4
  %40 = load i32, i32* @eedi, align 4
  %41 = or i32 %39, %40
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @eecs, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %41, %38 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.nic*, %struct.nic** %4, align 8
  %48 = getelementptr inbounds %struct.nic, %struct.nic* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @iowrite8(i32 %46, i32* %50)
  %52 = load %struct.nic*, %struct.nic** %4, align 8
  %53 = call i32 @e100_write_flush(%struct.nic* %52)
  %54 = call i32 @udelay(i32 4)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @eesk, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.nic*, %struct.nic** %4, align 8
  %59 = getelementptr inbounds %struct.nic, %struct.nic* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @iowrite8(i32 %57, i32* %61)
  %63 = load %struct.nic*, %struct.nic** %4, align 8
  %64 = call i32 @e100_write_flush(%struct.nic* %63)
  %65 = call i32 @udelay(i32 4)
  %66 = load %struct.nic*, %struct.nic** %4, align 8
  %67 = getelementptr inbounds %struct.nic, %struct.nic* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @ioread8(i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @eedo, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %44
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 16
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 16
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  store i32 17, i32* %10, align 4
  br label %84

84:                                               ; preds = %78, %75, %44
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @eedo, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = or i32 %86, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  br label %29

97:                                               ; preds = %29
  %98 = load %struct.nic*, %struct.nic** %4, align 8
  %99 = getelementptr inbounds %struct.nic, %struct.nic* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @iowrite8(i32 0, i32* %101)
  %103 = load %struct.nic*, %struct.nic** %4, align 8
  %104 = call i32 @e100_write_flush(%struct.nic* %103)
  %105 = call i32 @udelay(i32 4)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @cpu_to_le16(i32 %106)
  ret i32 %107
}

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
