; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_urb_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_urb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote2 = type { i32*, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ati_remote2*)* @ati_remote2_urb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote2_urb_cleanup(%struct.ati_remote2* %0) #0 {
  %2 = alloca %struct.ati_remote2*, align 8
  %3 = alloca i32, align 4
  store %struct.ati_remote2* %0, %struct.ati_remote2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %9 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_free_urb(i32 %14)
  %16 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %17 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %20 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ati_remote2*, %struct.ati_remote2** %2, align 8
  %27 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_buffer_free(i32 %18, i32 4, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4

37:                                               ; preds = %4
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
