; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_stop_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_stop_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { i64 }

@CX2341X_ENC_STOP_CAPTURE = common dso_local global i32 0, align 4
@BLACKBIRD_END_NOW = common dso_local global i32 0, align 4
@BLACKBIRD_MPEG_CAPTURE = common dso_local global i32 0, align 4
@BLACKBIRD_RAW_BITS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @blackbird_stop_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackbird_stop_codec(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %3 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %4 = load i32, i32* @CX2341X_ENC_STOP_CAPTURE, align 4
  %5 = load i32, i32* @BLACKBIRD_END_NOW, align 4
  %6 = load i32, i32* @BLACKBIRD_MPEG_CAPTURE, align 4
  %7 = load i32, i32* @BLACKBIRD_RAW_BITS_NONE, align 4
  %8 = call i32 @blackbird_api_cmd(%struct.cx8802_dev* %3, i32 %4, i32 3, i32 0, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  ret i32 0
}

declare dso_local i32 @blackbird_api_cmd(%struct.cx8802_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
