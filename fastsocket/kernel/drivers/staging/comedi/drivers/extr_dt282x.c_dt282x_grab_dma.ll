; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_grab_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_grab_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c" (no dma)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dt282x A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dt282x B\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c" can't get DMA memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" (dma=%d,%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @dt282x_grab_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_grab_dma(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %123

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 7
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29, %26, %23, %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %123

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @request_dma(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %123

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @request_dma(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %123

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i32, i32* @GFP_DMA, align 4
  %80 = or i32 %78, %79
  %81 = call i64 @__get_free_page(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i8* %82, i8** %87, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = load i32, i32* @GFP_DMA, align 4
  %90 = or i32 %88, %89
  %91 = call i64 @__get_free_page(i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i8* %92, i8** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %68
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %105, %68
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %123

117:                                              ; preds = %105
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %117, %113, %65, %51, %35, %17
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_dma(i32, i8*) #1

declare dso_local i64 @__get_free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
