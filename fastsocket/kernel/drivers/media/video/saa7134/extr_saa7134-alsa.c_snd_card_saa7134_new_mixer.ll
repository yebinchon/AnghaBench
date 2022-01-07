; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_new_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_new_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.snd_kcontrol**, %struct.snd_card* }
%struct.snd_kcontrol = type { i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SAA7134 Mixer\00", align 1
@snd_saa7134_volume_controls = common dso_local global %struct.TYPE_9__* null, align 8
@snd_saa7134_capture_controls = common dso_local global %struct.TYPE_9__* null, align 8
@MIXER_ADDR_UNSELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @snd_card_saa7134_new_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_new_mixer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snd_saa7134_volume_controls, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snd_saa7134_volume_controls, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_9__* %25, %struct.TYPE_8__* %26)
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %5, align 8
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %30 = call i32 @snd_ctl_add(%struct.snd_card* %28, %struct.snd_kcontrol* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %73, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snd_saa7134_capture_controls, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snd_saa7134_capture_controls, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_9__* %49, %struct.TYPE_8__* %50)
  store %struct.snd_kcontrol* %51, %struct.snd_kcontrol** %5, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snd_saa7134_capture_controls, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %61, i64 %63
  store %struct.snd_kcontrol* %58, %struct.snd_kcontrol** %64, align 8
  %65 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %67 = call i32 @snd_ctl_add(%struct.snd_card* %65, %struct.snd_kcontrol* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %45
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %40

76:                                               ; preds = %40
  %77 = load i32, i32* @MIXER_ADDR_UNSELECTED, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %70, %33
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
