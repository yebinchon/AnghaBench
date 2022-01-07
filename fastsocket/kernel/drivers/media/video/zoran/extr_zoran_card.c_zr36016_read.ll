; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_card.c_zr36016_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_card.c_zr36016_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.zoran = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, i32)* @zr36016_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36016_read(%struct.videocodec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videocodec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zoran*, align 8
  %7 = alloca i32, align 4
  store %struct.videocodec* %0, %struct.videocodec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.videocodec*, %struct.videocodec** %4, align 8
  %9 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zoran*
  store %struct.zoran* %13, %struct.zoran** %6, align 8
  %14 = load %struct.zoran*, %struct.zoran** %6, align 8
  %15 = call i64 @post_office_wait(%struct.zoran* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.zoran*, %struct.zoran** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 3
  %22 = call i32 @post_office_read(%struct.zoran* %19, i32 2, i32 %21)
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @post_office_wait(%struct.zoran*) #1

declare dso_local i32 @post_office_read(%struct.zoran*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
