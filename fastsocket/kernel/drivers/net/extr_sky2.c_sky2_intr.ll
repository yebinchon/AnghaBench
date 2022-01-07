; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, i32* }

@B0_Y2_SP_ISRC2 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sky2_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sky2_hw*
  store %struct.sky2_hw* %9, %struct.sky2_hw** %6, align 8
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %11 = load i32, i32* @B0_Y2_SP_ISRC2, align 4
  %12 = call i32 @sky2_read32(%struct.sky2_hw* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %15
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %22 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = call i32 @prefetch(i32* %27)
  %29 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %30 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %29, i32 0, i32 1
  %31 = call i32 @napi_schedule(i32* %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
