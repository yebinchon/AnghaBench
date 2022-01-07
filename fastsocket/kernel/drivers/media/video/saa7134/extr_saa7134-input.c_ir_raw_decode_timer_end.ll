; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_ir_raw_decode_timer_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_ir_raw_decode_timer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ir_raw_decode_timer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_raw_decode_timer_end(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_card_ir*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %6, %struct.saa7134_dev** %3, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %8, align 8
  store %struct.saa7134_card_ir* %9, %struct.saa7134_card_ir** %4, align 8
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 0
  %12 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %11, align 8
  %13 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ir_raw_event_handle(i32 %14)
  %16 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %17 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  ret void
}

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
