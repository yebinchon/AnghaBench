; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_rx_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, i8** }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @rtl8169_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_rx_fill(%struct.rtl8169_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_RX_DESC, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %47

20:                                               ; preds = %10
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i8* @rtl8169_alloc_rx_data(%struct.rtl8169_private* %21, i64 %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @rtl8169_make_unusable_by_asic(i64 %37)
  br label %59

39:                                               ; preds = %20
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %19
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %6

50:                                               ; preds = %6
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %52 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @NUM_RX_DESC, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @rtl8169_mark_as_last_descriptor(i64 %57)
  store i32 0, i32* %2, align 4
  br label %64

59:                                               ; preds = %31
  %60 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %61 = call i32 @rtl8169_rx_clear(%struct.rtl8169_private* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %50
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @rtl8169_alloc_rx_data(%struct.rtl8169_private*, i64) #1

declare dso_local i32 @rtl8169_make_unusable_by_asic(i64) #1

declare dso_local i32 @rtl8169_mark_as_last_descriptor(i64) #1

declare dso_local i32 @rtl8169_rx_clear(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
