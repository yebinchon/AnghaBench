; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_decode_error_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_decode_error_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"A/D FIFO Full status (Fatal Error!)\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"A/D Burst Mode Overrun Status (Fatal Error!)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"A/D Over Speed Status (Warning!)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"A/D Overrun Status (Fatal Error!)\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.comedi_device*, %struct.comedi_subdevice*, i8)* @pci9118_decode_error_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @pci9118_decode_error_status(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8 zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 256
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = call i32 @comedi_error(%struct.comedi_device* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, -257
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  br label %21

21:                                               ; preds = %12, %3
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = call i32 @comedi_error(%struct.comedi_device* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, -9
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = call i32 @comedi_error(%struct.comedi_device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -5
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = call i32 @comedi_error(%struct.comedi_device* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, -3
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 4
  %69 = zext i8 %68 to i32
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %74 = load i32, i32* @COMEDI_CB_EOA, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %84 = call i32 @pci9118_ai_cancel(%struct.comedi_device* %82, %struct.comedi_subdevice* %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = call i32 @comedi_event(%struct.comedi_device* %85, %struct.comedi_subdevice* %86)
  store i8 1, i8* %4, align 1
  br label %89

88:                                               ; preds = %63
  store i8 0, i8* %4, align 1
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i8, i8* %4, align 1
  ret i8 %90
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pci9118_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
