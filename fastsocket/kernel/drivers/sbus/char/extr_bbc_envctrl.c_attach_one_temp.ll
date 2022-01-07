; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bbc_i2c_bus = type { i32 }
%struct.of_device = type { i32 }
%struct.bbc_cpu_temperature = type { i32, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@all_temps = common dso_local global i32 0, align 4
@MAX1617_WR_CFG_BYTE = common dso_local global i32 0, align 4
@MAX1617_WR_CVRATE_BYTE = common dso_local global i32 0, align 4
@amb_temp_limits = common dso_local global %struct.TYPE_4__* null, align 8
@MAX1617_WR_AMB_HIGHLIM = common dso_local global i32 0, align 4
@MAX1617_WR_AMB_LOWLIM = common dso_local global i32 0, align 4
@cpu_temp_limits = common dso_local global %struct.TYPE_3__* null, align 8
@MAX1617_WR_CPU_HIGHLIM = common dso_local global i32 0, align 4
@MAX1617_WR_CPU_LOWLIM = common dso_local global i32 0, align 4
@FAN_SAME = common dso_local global i8* null, align 8
@FAN_AMBIENT = common dso_local global i64 0, align 8
@FAN_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_i2c_bus*, %struct.of_device*, i32)* @attach_one_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_one_temp(%struct.bbc_i2c_bus* %0, %struct.of_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca %struct.of_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_cpu_temperature*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %4, align 8
  store %struct.of_device* %1, %struct.of_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bbc_cpu_temperature* @kzalloc(i32 56, i32 %8)
  store %struct.bbc_cpu_temperature* %9, %struct.bbc_cpu_temperature** %7, align 8
  %10 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %11 = icmp ne %struct.bbc_cpu_temperature* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %128

13:                                               ; preds = %3
  %14 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %15 = load %struct.of_device*, %struct.of_device** %5, align 8
  %16 = call i32 @bbc_i2c_attach(%struct.bbc_i2c_bus* %14, %struct.of_device* %15)
  %17 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %20 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %25 = call i32 @kfree(%struct.bbc_cpu_temperature* %24)
  br label %128

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %29 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %31 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %30, i32 0, i32 10
  %32 = call i32 @list_add(i32* %31, i32* @all_temps)
  %33 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %34 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %33, i32 0, i32 9
  %35 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %36 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %39 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX1617_WR_CFG_BYTE, align 4
  %42 = call i32 @bbc_i2c_writeb(i32 %40, i32 0, i32 %41)
  %43 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %44 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX1617_WR_CVRATE_BYTE, align 4
  %47 = call i32 @bbc_i2c_writeb(i32 %45, i32 2, i32 %46)
  %48 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %49 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amb_temp_limits, align 8
  %52 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %53 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MAX1617_WR_AMB_HIGHLIM, align 4
  %60 = call i32 @bbc_i2c_writeb(i32 %50, i32 %58, i32 %59)
  %61 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %62 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amb_temp_limits, align 8
  %65 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %66 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX1617_WR_AMB_LOWLIM, align 4
  %73 = call i32 @bbc_i2c_writeb(i32 %63, i32 %71, i32 %72)
  %74 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %75 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_temp_limits, align 8
  %78 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %79 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MAX1617_WR_CPU_HIGHLIM, align 4
  %86 = call i32 @bbc_i2c_writeb(i32 %76, i32 %84, i32 %85)
  %87 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %88 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_temp_limits, align 8
  %91 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %92 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAX1617_WR_CPU_LOWLIM, align 4
  %99 = call i32 @bbc_i2c_writeb(i32 %89, i32 %97, i32 %98)
  %100 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %101 = call i32 @get_current_temps(%struct.bbc_cpu_temperature* %100)
  %102 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %103 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %106 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %108 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %107, i32 0, i32 7
  store i32 %104, i32* %108, align 4
  %109 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %110 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %113 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %115 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %114, i32 0, i32 4
  store i32 %111, i32* %115, align 8
  %116 = load i8*, i8** @FAN_SAME, align 8
  %117 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %118 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  %120 = load i64, i64* @FAN_AMBIENT, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  store i8* %116, i8** %121, align 8
  %122 = load i8*, i8** @FAN_SAME, align 8
  %123 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %7, align 8
  %124 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* @FAN_CPU, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8* %122, i8** %127, align 8
  br label %128

128:                                              ; preds = %26, %23, %12
  ret void
}

declare dso_local %struct.bbc_cpu_temperature* @kzalloc(i32, i32) #1

declare dso_local i32 @bbc_i2c_attach(%struct.bbc_i2c_bus*, %struct.of_device*) #1

declare dso_local i32 @kfree(%struct.bbc_cpu_temperature*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @bbc_i2c_writeb(i32, i32, i32) #1

declare dso_local i32 @get_current_temps(%struct.bbc_cpu_temperature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
