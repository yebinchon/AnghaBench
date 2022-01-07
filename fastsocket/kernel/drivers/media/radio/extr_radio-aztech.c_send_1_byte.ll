; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aztech.c_send_1_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aztech.c_send_1_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aztech = type { i32, i32 }

@radio_wait_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aztech*)* @send_1_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_1_byte(%struct.aztech* %0) #0 {
  %2 = alloca %struct.aztech*, align 8
  store %struct.aztech* %0, %struct.aztech** %2, align 8
  %3 = load i32, i32* @radio_wait_time, align 4
  %4 = call i32 @udelay(i32 %3)
  %5 = load %struct.aztech*, %struct.aztech** %2, align 8
  %6 = getelementptr inbounds %struct.aztech, %struct.aztech* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @volconvert(i32 %7)
  %9 = add nsw i64 130, %8
  %10 = load %struct.aztech*, %struct.aztech** %2, align 8
  %11 = getelementptr inbounds %struct.aztech, %struct.aztech* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @outb_p(i64 %9, i32 %12)
  %14 = load %struct.aztech*, %struct.aztech** %2, align 8
  %15 = getelementptr inbounds %struct.aztech, %struct.aztech* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @volconvert(i32 %16)
  %18 = add nsw i64 194, %17
  %19 = load %struct.aztech*, %struct.aztech** %2, align 8
  %20 = getelementptr inbounds %struct.aztech, %struct.aztech* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @outb_p(i64 %18, i32 %21)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb_p(i64, i32) #1

declare dso_local i64 @volconvert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
