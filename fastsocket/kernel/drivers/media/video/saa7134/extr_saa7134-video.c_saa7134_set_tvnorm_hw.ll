; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_set_tvnorm_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_set_tvnorm_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_set_tvnorm_hw(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %5 = call i32 @saa7134_set_decoder(%struct.saa7134_dev* %4)
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @card_in(%struct.saa7134_dev* %6, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %17 = load i32, i32* @core, align 4
  %18 = load i32, i32* @s_std, align 4
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @saa_call_all(%struct.saa7134_dev* %16, i32 %17, i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = load i32, i32* @core, align 4
  %28 = load i32, i32* @s_std, align 4
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @saa_call_empress(%struct.saa7134_dev* %26, i32 %27, i32 %28, i32 %33)
  ret void
}

declare dso_local i32 @saa7134_set_decoder(%struct.saa7134_dev*) #1

declare dso_local i64 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, i32) #1

declare dso_local i32 @saa_call_empress(%struct.saa7134_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
