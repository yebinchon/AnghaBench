; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl724.c_pcl724_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl724.c_pcl724_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32 }
%struct.comedi_device = type { i64, i32, i32, i64, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@PCL722_96_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"comedi%d: pcl724: board=%s, 0x%03lx \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pcl724\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@subdev_8255mapped_cb = common dso_local global i32 0, align 4
@subdev_8255_cb = common dso_local global i32 0, align 4
@SIZE_8255 = common dso_local global i32 0, align 4
@interrupt_pcl724 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl724_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl724_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 96
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %23
  %38 = load i32, i32* @PCL722_96_SIZE, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %30, %2
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @request_region(i64 %48, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %148

56:                                               ; preds = %39
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %56
  %74 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %75 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 96
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %73
  store i32 4, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %80, %56
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @alloc_subdevices(%struct.comedi_device* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %148

96:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %144, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %97
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i32, i32* @subdev_8255mapped_cb, align 4
  %117 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %120, 4096
  %122 = sext i32 %121 to i64
  %123 = add i64 %119, %122
  %124 = call i32 @subdev_8255_init(%struct.comedi_device* %109, i64 %115, i32 %116, i64 %123)
  br label %143

125:                                              ; preds = %103
  %126 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %127 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* @subdev_8255_cb, align 4
  %134 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @SIZE_8255, align 4
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = add i64 %136, %140
  %142 = call i32 @subdev_8255_init(%struct.comedi_device* %126, i64 %132, i32 %133, i64 %141)
  br label %143

143:                                              ; preds = %125, %108
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %97

147:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %94, %52
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
