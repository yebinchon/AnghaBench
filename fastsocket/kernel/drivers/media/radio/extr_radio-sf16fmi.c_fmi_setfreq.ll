; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmi.c_fmi_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmi.c_fmi_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmi = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmi*, i64)* @fmi_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmi_setfreq(%struct.fmi* %0, i64 %1) #0 {
  %3 = alloca %struct.fmi*, align 8
  %4 = alloca i64, align 8
  store %struct.fmi* %0, %struct.fmi** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fmi*, %struct.fmi** %3, align 8
  %6 = getelementptr inbounds %struct.fmi, %struct.fmi* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.fmi*, %struct.fmi** %3, align 8
  %10 = getelementptr inbounds %struct.fmi, %struct.fmi* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @RSF16_ENCODE(i64 %11)
  %13 = load %struct.fmi*, %struct.fmi** %3, align 8
  %14 = getelementptr inbounds %struct.fmi, %struct.fmi* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @outbits(i32 16, i32 %12, i32 %15)
  %17 = load %struct.fmi*, %struct.fmi** %3, align 8
  %18 = getelementptr inbounds %struct.fmi, %struct.fmi* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @outbits(i32 8, i32 192, i32 %19)
  %21 = call i32 @msleep(i32 143)
  %22 = load %struct.fmi*, %struct.fmi** %3, align 8
  %23 = getelementptr inbounds %struct.fmi, %struct.fmi* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.fmi*, %struct.fmi** %3, align 8
  %26 = getelementptr inbounds %struct.fmi, %struct.fmi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.fmi*, %struct.fmi** %3, align 8
  %31 = call i32 @fmi_unmute(%struct.fmi* %30)
  br label %32

32:                                               ; preds = %29, %2
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outbits(i32, i32, i32) #1

declare dso_local i32 @RSF16_ENCODE(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fmi_unmute(%struct.fmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
