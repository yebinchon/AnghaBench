; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_read_element_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_read_element_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"asked for element 0x%02x, got 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"device has no volume tag support\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"READ ELEMENT STATUS for element 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*)* @ch_read_element_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_read_element_status(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @kmalloc(i32 512, i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %106

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %95, %20
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 48)
  %24 = load i32, i32* @READ_ELEMENT_STATUS, align 4
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 16, i32 0
  %38 = or i32 %31, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ch_elem_to_typecode(%struct.TYPE_7__* %39, i32 %40)
  %42 = or i32 %38, %41
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 5
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 9
  store i32 255, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @ch_do_scsi(%struct.TYPE_7__* %53, i32* %54, i32* %55, i32 256, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp eq i32 0, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %21
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 17
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 17
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %106

85:                                               ; preds = %59
  %86 = load i8*, i8** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  %89 = call i32 @memcpy(i8* %86, i32* %88, i32 16)
  br label %102

90:                                               ; preds = %21
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = call i32 @vprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %21

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %85
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @kfree(i32* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %70, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_elem_to_typecode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_7__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @vprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
