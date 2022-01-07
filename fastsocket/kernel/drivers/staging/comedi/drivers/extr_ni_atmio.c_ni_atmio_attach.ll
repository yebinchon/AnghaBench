; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_atmio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_atmio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.pnp_dev*, i32*, i32*, i32*, i32* }
%struct.pnp_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i64, i32, i32, i64, i32 }
%struct.comedi_devconfig = type { i64* }

@ni_atmio_win_out = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@ni_atmio_win_in = common dso_local global i32 0, align 4
@win_out2 = common dso_local global i32 0, align 4
@win_in2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"comedi%d: ni_atmio: 0x%04lx\00", align 1
@NI_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ni_atmio\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ni_boards = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ni_irqpin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c" invalid irq %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" ( irq = %u )\00", align 1
@ni_E_interrupt = common dso_local global i32 0, align 4
@NI_E_IRQ_FLAGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c" irq not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @ni_atmio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_atmio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i32 @ni_alloc_private(%struct.comedi_device* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %134

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i32* @ni_atmio_win_out, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32* @ni_atmio_win_in, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32* @win_out2, i32** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32* @win_in2, i32** %25, align 8
  %26 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  store %struct.pnp_dev* null, %struct.pnp_dev** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %17
  %40 = call i32 @ni_isapnp_find_board(%struct.pnp_dev** %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %134

45:                                               ; preds = %39
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %47 = call i64 @pnp_port_start(%struct.pnp_dev* %46, i32 0)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %49 = call i32 @pnp_irq(%struct.pnp_dev* %48, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.pnp_dev* %50, %struct.pnp_dev** %52, align 8
  br label %53

53:                                               ; preds = %45, %17
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @NI_SIZE, align 4
  %61 = call i32 @request_region(i64 %59, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %53
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %134

67:                                               ; preds = %53
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = call i32 @ni_getboardtype(%struct.comedi_device* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %134

78:                                               ; preds = %67
  %79 = load i64, i64* @ni_boards, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %78
  %93 = load i32, i32* %10, align 4
  %94 = icmp ugt i32 %93, 15
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** @ni_irqpin, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %107

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %134

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @ni_E_interrupt, align 4
  %112 = load i32, i32* @NI_E_IRQ_FLAGS, align 4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %114 = call i32 @request_irq(i32 %110, i32 %111, i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.comedi_device* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %134

121:                                              ; preds = %107
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %78
  %126 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %127 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %128 = call i32 @ni_E_init(%struct.comedi_device* %126, %struct.comedi_devconfig* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %131, %117, %102, %75, %63, %43, %15
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @ni_isapnp_find_board(%struct.pnp_dev**) #1

declare dso_local i64 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @ni_getboardtype(%struct.comedi_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, %struct.comedi_devconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
