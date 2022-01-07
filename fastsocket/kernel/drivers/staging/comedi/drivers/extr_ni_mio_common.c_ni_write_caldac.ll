; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_write_caldac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_write_caldac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32*)* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@boardtype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@caldac_none = common dso_local global i32 0, align 4
@caldacs = common dso_local global %struct.TYPE_5__* null, align 8
@Serial_Command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @ni_write_caldac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_write_caldac(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %114

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %74, %23
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @caldac_none, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %77

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caldacs, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caldacs, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(i32 %60, i32 %61, i32* %10)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @SerDacLd(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %77

65:                                               ; preds = %44
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @caldacs, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %31

77:                                               ; preds = %53, %43, %31
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %78, 1
  %80 = shl i32 1, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %104, %77
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 2, i32 0
  %91 = load i32, i32* @Serial_Command, align 4
  %92 = call i32 @ni_writeb(i32 %90, i32 %91)
  %93 = call i32 @udelay(i32 1)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 2, i32 0
  %100 = or i32 1, %99
  %101 = load i32, i32* @Serial_Command, align 4
  %102 = call i32 @ni_writeb(i32 %100, i32 %101)
  %103 = call i32 @udelay(i32 1)
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %9, align 4
  %106 = lshr i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @Serial_Command, align 4
  %110 = call i32 @ni_writeb(i32 %108, i32 %109)
  %111 = call i32 @udelay(i32 1)
  %112 = load i32, i32* @Serial_Command, align 4
  %113 = call i32 @ni_writeb(i32 0, i32 %112)
  br label %114

114:                                              ; preds = %107, %22
  ret void
}

declare dso_local i32 @SerDacLd(i32) #1

declare dso_local i32 @ni_writeb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
