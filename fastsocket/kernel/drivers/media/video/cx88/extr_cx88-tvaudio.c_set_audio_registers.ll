; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_set_audio_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_set_audio_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.rlist = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, %struct.rlist*)* @set_audio_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_audio_registers(%struct.cx88_core* %0, %struct.rlist* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.rlist*, align 8
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.rlist* %1, %struct.rlist** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %50, %2
  %7 = load %struct.rlist*, %struct.rlist** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rlist, %struct.rlist* %7, i64 %9
  %11 = getelementptr inbounds %struct.rlist, %struct.rlist* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %6
  %15 = load %struct.rlist*, %struct.rlist** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rlist, %struct.rlist* %15, i64 %17
  %19 = getelementptr inbounds %struct.rlist, %struct.rlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 131, label %21
    i32 132, label %21
    i32 133, label %21
    i32 128, label %21
    i32 129, label %21
    i32 130, label %21
  ]

21:                                               ; preds = %14, %14, %14, %14, %14, %14
  %22 = load %struct.rlist*, %struct.rlist** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.rlist, %struct.rlist* %22, i64 %24
  %26 = getelementptr inbounds %struct.rlist, %struct.rlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rlist*, %struct.rlist** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rlist, %struct.rlist* %28, i64 %30
  %32 = getelementptr inbounds %struct.rlist, %struct.rlist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cx_writeb(i32 %27, i32 %33)
  br label %49

35:                                               ; preds = %14
  %36 = load %struct.rlist*, %struct.rlist** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rlist, %struct.rlist* %36, i64 %38
  %40 = getelementptr inbounds %struct.rlist, %struct.rlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rlist*, %struct.rlist** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rlist, %struct.rlist* %42, i64 %44
  %46 = getelementptr inbounds %struct.rlist, %struct.rlist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx_write(i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %35, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %6

53:                                               ; preds = %6
  ret void
}

declare dso_local i32 @cx_writeb(i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
