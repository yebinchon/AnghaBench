; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_key_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_key_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@B43_SEC_ALGO_NONE = common dso_local global i32 0, align 4
@B43_SEC_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_key_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_key_clear(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %12)
  %14 = icmp sge i32 %9, %13
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i1 [ true, %2 ], [ %14, %8 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @B43_WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @B43_SEC_ALGO_NONE, align 4
  %27 = load i32, i32* @B43_SEC_KEYSIZE, align 4
  %28 = call i32 @do_key_write(%struct.b43_wldev* %24, i32 %25, i32 %26, i32* null, i32 %27, i32* null)
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 3
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = call i32 @b43_new_kidx_api(%struct.b43_wldev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 4
  %39 = load i32, i32* @B43_SEC_ALGO_NONE, align 4
  %40 = load i32, i32* @B43_SEC_KEYSIZE, align 4
  %41 = call i32 @do_key_write(%struct.b43_wldev* %36, i32 %38, i32 %39, i32* null, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %35, %31, %23
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @do_key_write(%struct.b43_wldev*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @b43_new_kidx_api(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
