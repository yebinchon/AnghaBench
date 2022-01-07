; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c___saa7134_ir_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c___saa7134_ir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__saa7134_ir_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__saa7134_ir_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_card_ir*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %6, %struct.saa7134_dev** %3, align 8
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = icmp ne %struct.saa7134_dev* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 0
  %12 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %11, align 8
  %13 = icmp ne %struct.saa7134_card_ir* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 0
  %18 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %17, align 8
  store %struct.saa7134_card_ir* %18, %struct.saa7134_card_ir** %4, align 8
  %19 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %20 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %43

24:                                               ; preds = %15
  %25 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %26 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %31 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %36 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %35, i32 0, i32 2
  %37 = call i32 @del_timer_sync(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %40 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %4, align 8
  %42 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %23, %14
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
