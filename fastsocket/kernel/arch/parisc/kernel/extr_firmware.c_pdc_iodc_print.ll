; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_firmware.c_pdc_iodc_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_firmware.c_pdc_iodc_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@pdc_iodc_print.posx = internal global i32 0, align 4
@iodc_dbuf = common dso_local global i8* null, align 8
@pdc_lock = common dso_local global i32 0, align 4
@PAGE0 = common dso_local global %struct.TYPE_6__* null, align 8
@ENTRY_IO_COUT = common dso_local global i32 0, align 4
@iodc_retbuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_iodc_print(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 79
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i1 [ false, %7 ], [ %13, %11 ]
  br i1 %15, label %16, label %69

16:                                               ; preds = %14
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %54 [
    i32 10, label %23
    i32 9, label %36
    i32 8, label %51
  ]

23:                                               ; preds = %16
  %24 = load i8*, i8** @iodc_dbuf, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 0
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 13, i8* %28, align 1
  %29 = load i8*, i8** @iodc_dbuf, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 10, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 2
  store i32 %35, i32* %5, align 4
  store i32 0, i32* @pdc_iodc_print.posx, align 4
  br label %93

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* @pdc_iodc_print.posx, align 4
  %39 = and i32 %38, 7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** @iodc_dbuf, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 32, i8* %45, align 1
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @pdc_iodc_print.posx, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @pdc_iodc_print.posx, align 4
  br label %37

50:                                               ; preds = %37
  br label %68

51:                                               ; preds = %16
  %52 = load i32, i32* @pdc_iodc_print.posx, align 4
  %53 = sub nsw i32 %52, 2
  store i32 %53, i32* @pdc_iodc_print.posx, align 4
  br label %54

54:                                               ; preds = %16, %51
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** @iodc_dbuf, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @pdc_iodc_print.posx, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @pdc_iodc_print.posx, align 4
  br label %68

68:                                               ; preds = %54, %50
  br label %7

69:                                               ; preds = %14
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 79
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i8*, i8** @iodc_dbuf, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sub i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 10
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load i8*, i8** @iodc_dbuf, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 0
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 13, i8* %86, align 1
  %87 = load i8*, i8** @iodc_dbuf, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 10, i8* %91, align 1
  br label %92

92:                                               ; preds = %81, %72, %69
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @ENTRY_IO_COUT, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @__pa(i8* %113)
  %115 = load i8*, i8** @iodc_retbuf, align 8
  %116 = call i32 @__pa(i8* %115)
  %117 = load i8*, i8** @iodc_dbuf, align 8
  %118 = call i32 @__pa(i8* %117)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @real32_call(i32 %99, i64 %103, i32 %104, i32 %108, i32 %114, i32 %116, i32 0, i32 %118, i32 %119, i32 0)
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %121)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @real32_call(i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
