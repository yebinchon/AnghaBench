; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [29 x i8] c"comedi%d: c6xdigio: 0x%04lx\0A\00", align 1
@C6XDIGIO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"c6xdigio\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"comedi%d: I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@c6xdigio_pnp_driver = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"comedi%d: irq = %u ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"comedi%d: no irq\0A\00", align 1
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITEABLE = common dso_local global i32 0, align 4
@c6xdigio_pwmo_insn_read = common dso_local global i32 0, align 4
@c6xdigio_pwmo_insn_write = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@COMEDI_SUBD_COUNTER = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@c6xdigio_ei_insn_read = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @c6xdigio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c6xdigio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @C6XDIGIO_SIZE, align 4
  %22 = call i32 @request_region(i64 %20, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i32 @alloc_subdevices(%struct.comedi_device* %37, i32 2)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %31
  %44 = call i32 @pnp_register_driver(i32* @c6xdigio_pnp_driver)
  %45 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  br label %68

59:                                               ; preds = %43
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 2
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %70, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i64 0
  store %struct.comedi_subdevice* %72, %struct.comedi_subdevice** %9, align 8
  %73 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @SDF_WRITEABLE, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 1
  store i32 2, i32* %80, align 4
  %81 = load i32, i32* @c6xdigio_pwmo_insn_read, align 4
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @c6xdigio_pwmo_insn_write, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 2
  store i32 500, i32* %88, align 8
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 3
  store i32* @range_bipolar10, i32** %90, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 2
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %92, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i64 1
  store %struct.comedi_subdevice* %94, %struct.comedi_subdevice** %9, align 8
  %95 = load i32, i32* @COMEDI_SUBD_COUNTER, align 4
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @SDF_READABLE, align 4
  %99 = load i32, i32* @SDF_LSAMPL, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 1
  store i32 2, i32* %104, align 4
  %105 = load i32, i32* @c6xdigio_ei_insn_read, align 4
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 2
  store i32 16777215, i32* %109, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 3
  store i32* @range_unknown, i32** %111, align 8
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = call i32 @board_init(%struct.comedi_device* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %68, %41, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pnp_register_driver(i32*) #1

declare dso_local i32 @board_init(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
