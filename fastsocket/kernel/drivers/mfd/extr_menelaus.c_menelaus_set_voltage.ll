; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.menelaus_vtg = type { i32, i32, i32, i32, i32 }

@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Setting voltage '%s'to %d mV (reg 0x%02x, val 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menelaus_vtg*, i32, i32, i32)* @menelaus_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menelaus_set_voltage(%struct.menelaus_vtg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.menelaus_vtg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.menelaus_vtg* %0, %struct.menelaus_vtg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %19 = icmp eq %struct.menelaus_vtg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %69

21:                                               ; preds = %4
  %22 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %23 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @menelaus_read_reg(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %75

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %32 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %37 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %30, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %44 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %42, %45
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %52 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %56 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %61 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @menelaus_write_reg(i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %29
  br label %75

68:                                               ; preds = %29
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %71 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @menelaus_write_reg(i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %69, %67, %28
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @msleep(i32 1)
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
