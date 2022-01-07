; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (i32)* }
%struct.pcmcia_device = type { i32*, %struct.TYPE_20__, %struct.TYPE_30__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_28__ = type { i32, i8*, i32, i64, i32* }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_22__ }
%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"mio_cs_config(link=%p)\0A\00", align 1
@CISTPL_CONFIG = common dso_local global i32 0, align 4
@CISTPL_MANFID = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i8* null, align 8
@CISTPL_CFTABLE_ENTRY = common dso_local global i32 0, align 4
@CISTPL_IO_LINES_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pcmcia_request_irq() returned error: %i\0A\00", align 1
@dev_node = common dso_local global i32 0, align 4
@CISTPL_LONGLINK_MFC = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@TUPLE_RETURN_LINK = common dso_local global i8* null, align 8
@info = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @mio_cs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mio_cs_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_28__, align 8
  %4 = alloca [128 x i32], align 16
  %5 = alloca %struct.TYPE_29__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %10)
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 4
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 0
  store i32 255, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* @CISTPL_CONFIG, align 4
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = call i32 @pcmcia_get_first_tuple(%struct.pcmcia_device* %19, %struct.TYPE_28__* %3)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %22 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %21, %struct.TYPE_28__* %3)
  store i32 %22, i32* %8, align 4
  %23 = call i32 @pcmcia_parse_tuple(%struct.TYPE_28__* %3, %struct.TYPE_29__* %5)
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @CISTPL_MANFID, align 4
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** @TUPLE_RETURN_COMMON, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %43 = call i32 @pcmcia_get_first_tuple(%struct.pcmcia_device* %42, %struct.TYPE_28__* %3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %1
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %47 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %46, %struct.TYPE_28__* %3)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %45, %1
  %57 = load i32, i32* @CISTPL_CFTABLE_ENTRY, align 4
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %3, i32 0, i32 1
  store i8* null, i8** %59, align 8
  %60 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %61 = call i32 @pcmcia_get_first_tuple(%struct.pcmcia_device* %60, %struct.TYPE_28__* %3)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %63 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %62, %struct.TYPE_28__* %3)
  store i32 %63, i32* %8, align 4
  %64 = call i32 @pcmcia_parse_tuple(%struct.TYPE_28__* %3, %struct.TYPE_29__* %5)
  store i32 %64, i32* %8, align 4
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CISTPL_IO_LINES_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %103, %56
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 1024
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %93 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 3
  %98 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %95, %struct.TYPE_19__* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %106

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 32
  store i32 %105, i32* %9, align 4
  br label %87

106:                                              ; preds = %101, %87
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %112 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %119 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %122 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %123 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %122, i32 0, i32 2
  %124 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %121, %struct.TYPE_30__* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %106
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %106
  %131 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %132 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 1
  %137 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %134, %struct.TYPE_20__* %136)
  store i32 %137, i32* %8, align 4
  %138 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %139 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %138, i32 0, i32 0
  store i32* @dev_node, i32** %139, align 8
  ret void
}

declare dso_local i32 @DPRINTK(i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_get_first_tuple(%struct.pcmcia_device*, %struct.TYPE_28__*) #1

declare dso_local i32 @pcmcia_get_tuple_data(%struct.pcmcia_device*, %struct.TYPE_28__*) #1

declare dso_local i32 @pcmcia_parse_tuple(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_19__*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_30__*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
