; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c___saa7134_ir_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c___saa7134_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@saa7134_input_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ir_raw_decode_timer_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__saa7134_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__saa7134_ir_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_card_ir*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %7, %struct.saa7134_dev** %4, align 8
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %9 = icmp ne %struct.saa7134_dev* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %11, i32 0, i32 0
  %13 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %12, align 8
  %14 = icmp ne %struct.saa7134_card_ir* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %66

18:                                               ; preds = %10
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %20, align 8
  store %struct.saa7134_card_ir* %21, %struct.saa7134_card_ir** %5, align 8
  %22 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %23 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %66

27:                                               ; preds = %18
  %28 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %29 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %31 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %33 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %38 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %37, i32 0, i32 2
  %39 = load i32, i32* @saa7134_input_timer, align 4
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %41 = ptrtoint %struct.saa7134_dev* %40 to i64
  %42 = call i32 @setup_timer(%struct.TYPE_3__* %38, i32 %39, i64 %41)
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @HZ, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %47 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %50 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %49, i32 0, i32 2
  %51 = call i32 @add_timer(%struct.TYPE_3__* %50)
  br label %65

52:                                               ; preds = %27
  %53 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %54 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %5, align 8
  %59 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %58, i32 0, i32 2
  %60 = load i32, i32* @ir_raw_decode_timer_end, align 4
  %61 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %62 = ptrtoint %struct.saa7134_dev* %61 to i64
  %63 = call i32 @setup_timer(%struct.TYPE_3__* %59, i32 %60, i64 %62)
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %36
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %26, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @setup_timer(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
