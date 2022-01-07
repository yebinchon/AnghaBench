; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_mmio16write__write_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_mmio16write__write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"0x%X 0x%X 0x%X\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@B43_MAX_MMIO_ACCESS = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i8*, i64)* @mmio16write__write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio16write__write_file(%struct.b43_wldev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @B43_MAX_MMIO_ACCESS, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EADDRNOTAVAIL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp ugt i32 %28, 65535
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ugt i32 %31, 65535
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @E2BIG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = urem i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %51

47:                                               ; preds = %43
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @b43_read16(%struct.b43_wldev* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @b43_write16(%struct.b43_wldev* %58, i32 %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %40, %33, %24, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
