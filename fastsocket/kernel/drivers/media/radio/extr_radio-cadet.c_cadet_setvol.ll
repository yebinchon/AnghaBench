; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_setvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_setvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*, i32)* @cadet_setvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_setvol(%struct.cadet* %0, i32 %1) #0 {
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cadet*, %struct.cadet** %3, align 8
  %6 = getelementptr inbounds %struct.cadet, %struct.cadet* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cadet*, %struct.cadet** %3, align 8
  %9 = getelementptr inbounds %struct.cadet, %struct.cadet* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @outb(i32 7, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.cadet*, %struct.cadet** %3, align 8
  %16 = getelementptr inbounds %struct.cadet, %struct.cadet* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @outb(i32 32, i64 %18)
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.cadet*, %struct.cadet** %3, align 8
  %22 = getelementptr inbounds %struct.cadet, %struct.cadet* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @outb(i32 0, i64 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.cadet*, %struct.cadet** %3, align 8
  %28 = getelementptr inbounds %struct.cadet, %struct.cadet* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
