; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_write_chanlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_write_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"In ai_write_chanlist()\0A\00", align 1
@ME4000_AI_LIST_RANGE_UNIPOLAR_2_5 = common dso_local global i32 0, align 4
@ME4000_AI_LIST_RANGE_UNIPOLAR_10 = common dso_local global i32 0, align 4
@ME4000_AI_LIST_RANGE_BIPOLAR_2_5 = common dso_local global i32 0, align 4
@ME4000_AI_LIST_RANGE_BIPOLAR_10 = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@ME4000_AI_LIST_INPUT_DIFFERENTIAL = common dso_local global i32 0, align 4
@ME4000_AI_LIST_INPUT_SINGLE_ENDED = common dso_local global i32 0, align 4
@info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ai_write_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_write_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %6, align 8
  %12 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %91, %3
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %94

19:                                               ; preds = %13
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_RANGE(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CR_AREF(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %19
  %48 = load i32, i32* @ME4000_AI_LIST_RANGE_UNIPOLAR_2_5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %71

51:                                               ; preds = %19
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @ME4000_AI_LIST_RANGE_UNIPOLAR_10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @ME4000_AI_LIST_RANGE_BIPOLAR_2_5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @ME4000_AI_LIST_RANGE_BIPOLAR_10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @SDF_DIFF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @ME4000_AI_LIST_INPUT_DIFFERENTIAL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @ME4000_AI_LIST_INPUT_SINGLE_ENDED, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @me4000_outl(%struct.comedi_device* %84, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %13

94:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @me4000_outl(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
