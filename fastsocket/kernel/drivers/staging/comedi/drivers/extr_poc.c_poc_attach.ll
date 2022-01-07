; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_poc.c_poc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_poc.c_poc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [38 x i8] c"comedi%d: poc: using %s iobase 0x%lx\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"io base address required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dac02\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"I/O port conflict: failed to allocate ports 0x%lx to 0x%lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i64 0, align 8
@COMEDI_SUBD_DO = common dso_local global i64 0, align 8
@SDF_WRITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @poc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poc_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i64 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %132

33:                                               ; preds = %2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @request_region(i64 %37, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = sub i64 %46, 1
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %42, i64 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %132

51:                                               ; preds = %33
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = call i64 @alloc_subdevices(%struct.comedi_device* %55, i32 1)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %132

61:                                               ; preds = %51
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @alloc_private(%struct.comedi_device* %62, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %132

74:                                               ; preds = %61
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 1
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %76, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i64 0
  store %struct.comedi_subdevice* %78, %struct.comedi_subdevice** %6, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 1, %91
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @COMEDI_SUBD_AO, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %74
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @COMEDI_SUBD_DO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121, %74
  %128 = load i32, i32* @SDF_WRITABLE, align 4
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %121
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %71, %58, %41, %29
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
