; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_alloc_mite_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_alloc_mite_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32***, i32 }

@counters_per_chip = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_660x_alloc_mite_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_alloc_mite_rings(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.TYPE_4__* @board(%struct.comedi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @counters_per_chip, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = call %struct.TYPE_3__* @private(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @mite_alloc_ring(i32 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_3__* @private(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32***, i32**** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32**, i32*** %27, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %23, i32** %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = call %struct.TYPE_3__* @private(%struct.comedi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32***, i32**** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32**, i32*** %38, i64 %40
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %14

55:                                               ; preds = %14
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %6

59:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i32* @mite_alloc_ring(i32) #1

declare dso_local %struct.TYPE_3__* @private(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
