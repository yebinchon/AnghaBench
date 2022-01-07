; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCL818_FI_INTCLR = common dso_local global i64 0, align 8
@PCL818_FI_FLUSH = common dso_local global i64 0, align 8
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@PCL818_DA_LO = common dso_local global i64 0, align 8
@PCL818_DA_HI = common dso_local global i64 0, align 8
@PCL818_DO_HI = common dso_local global i64 0, align 8
@PCL818_DO_LO = common dso_local global i64 0, align 8
@PCL818_CONTROL = common dso_local global i64 0, align 8
@PCL818_CNTENABLE = common dso_local global i64 0, align 8
@PCL818_MUX = common dso_local global i64 0, align 8
@PCL818_CLRINT = common dso_local global i64 0, align 8
@PCL818_CTRCTL = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@PCL818_RANGE = common dso_local global i64 0, align 8
@PCL718_DA2_LO = common dso_local global i64 0, align 8
@PCL718_DA2_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcl818_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCL818_FI_INTCLR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 0, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCL818_FI_FLUSH, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 0, i64 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 0, i64 %24)
  br label %26

26:                                               ; preds = %7, %1
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCL818_DA_LO, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 0, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCL818_DA_HI, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 0, i64 %37)
  %39 = call i32 @udelay(i32 1)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCL818_DO_HI, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 0, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCL818_DO_LO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCL818_CONTROL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 0, i64 %57)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCL818_CNTENABLE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 0, i64 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCL818_MUX, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 0, i64 %69)
  %71 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCL818_CLRINT, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 0, i64 %75)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCL818_CTRCTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 176, i64 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCL818_CTRCTL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 112, i64 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCL818_CTRCTL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 48, i64 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %26
  %100 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCL818_RANGE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 0, i64 %104)
  br label %119

106:                                              ; preds = %26
  %107 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCL718_DA2_LO, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 0, i64 %111)
  %113 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %114 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PCL718_DA2_HI, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outb(i32 0, i64 %117)
  br label %119

119:                                              ; preds = %106, %99
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
