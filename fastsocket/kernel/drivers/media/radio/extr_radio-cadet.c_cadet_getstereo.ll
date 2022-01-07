; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_getstereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_getstereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i64, i32, i64 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cadet*)* @cadet_getstereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_getstereo(%struct.cadet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  %5 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.cadet*, %struct.cadet** %3, align 8
  %7 = getelementptr inbounds %struct.cadet, %struct.cadet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.cadet*, %struct.cadet** %3, align 8
  %14 = getelementptr inbounds %struct.cadet, %struct.cadet* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.cadet*, %struct.cadet** %3, align 8
  %17 = getelementptr inbounds %struct.cadet, %struct.cadet* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @outb(i32 7, i64 %18)
  %20 = load %struct.cadet*, %struct.cadet** %3, align 8
  %21 = getelementptr inbounds %struct.cadet, %struct.cadet* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @inb(i64 %23)
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load %struct.cadet*, %struct.cadet** %3, align 8
  %31 = getelementptr inbounds %struct.cadet, %struct.cadet* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
