; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_670x.c_ni_670x_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_670x.c_ni_670x_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_struct = type { %struct.TYPE_6__*, i64, %struct.mite_struct* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.mite_struct* }
%struct.comedi_device = type { %struct.TYPE_7__* }

@mite_devices = common dso_local global %struct.mite_struct* null, align 8
@n_ni_670x_boards = common dso_local global i32 0, align 4
@ni_670x_boards = common dso_local global %struct.TYPE_7__* null, align 8
@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"no device found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_670x_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_670x_find_device(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mite_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mite_struct*, %struct.mite_struct** @mite_devices, align 8
  store %struct.mite_struct* %10, %struct.mite_struct** %8, align 8
  br label %11

11:                                               ; preds = %77, %3
  %12 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %13 = icmp ne %struct.mite_struct* %12, null
  br i1 %13, label %14, label %81

14:                                               ; preds = %11
  %15 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %16 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %77

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %29 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %27, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %39 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PCI_SLOT(i32 %42)
  %44 = icmp ne i32 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %26
  br label %77

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %23
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @n_ni_670x_boards, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %54 = call i64 @mite_device_id(%struct.mite_struct* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ni_670x_boards, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ni_670x_boards, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.mite_struct* %69, %struct.mite_struct** %71, align 8
  store i32 0, i32* %4, align 4
  br label %86

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %48

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %45, %19
  %78 = load %struct.mite_struct*, %struct.mite_struct** %8, align 8
  %79 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %78, i32 0, i32 2
  %80 = load %struct.mite_struct*, %struct.mite_struct** %79, align 8
  store %struct.mite_struct* %80, %struct.mite_struct** %8, align 8
  br label %11

81:                                               ; preds = %11
  %82 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 (...) @mite_list_devices()
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %62
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i64 @mite_device_id(%struct.mite_struct*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mite_list_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
