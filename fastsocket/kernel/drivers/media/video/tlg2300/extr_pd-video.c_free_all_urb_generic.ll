; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_free_all_urb_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_free_all_urb_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all_urb_generic(%struct.urb** %0, i32 %1) #0 {
  %3 = alloca %struct.urb**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.urb** %0, %struct.urb*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = load %struct.urb**, %struct.urb*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.urb*, %struct.urb** %12, i64 %14
  %16 = load %struct.urb*, %struct.urb** %15, align 8
  store %struct.urb* %16, %struct.urb** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %11
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_buffer_free(i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = call i32 @usb_free_urb(%struct.urb* %33)
  %35 = load %struct.urb**, %struct.urb*** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.urb*, %struct.urb** %35, i64 %37
  store %struct.urb* null, %struct.urb** %38, align 8
  br label %39

39:                                               ; preds = %19, %11
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %7

43:                                               ; preds = %7
  ret void
}

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
