; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_setup_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_setup_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"adv_pci1710 EDBG:  setup_channel_list(...,%d,%d)\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"SegLen: %d\0A\00", align 1
@muxonechan = common dso_local global i32* null, align 8
@PCI171x_MUX = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@AREF_DIFF = common dso_local global i64 0, align 8
@PCI171x_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"GS: %2d. [%4x]=%4x %4x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"MUX: %4x L%4x.H%4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32)* @setup_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %87, %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load i32*, i32** @muxonechan, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_CHAN(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI171x_MUX, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 %39, i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CR_RANGE(i32 %53)
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @CR_AREF(i32 %61)
  %63 = load i64, i64* @AREF_DIFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %28
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, 32
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %28
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PCI171x_RANGE, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outw(i32 %69, i64 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %24

90:                                               ; preds = %24
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CR_CHAN(i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sub i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CR_CHAN(i32 %100)
  %102 = shl i32 %101, 8
  %103 = or i32 %94, %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PCI171x_MUX, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outw(i32 %108, i64 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @CR_CHAN(i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sub i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CR_CHAN(i32 %124)
  %126 = shl i32 %125, 8
  %127 = or i32 %118, %126
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_CHAN(i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sub i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CR_CHAN(i32 %137)
  %139 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %131, i32 %138)
  ret void
}

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
