; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_iowrite32a_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_iowrite32a_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_ioreq32 = type { i32 }

@USB_MAX_IOWRITE32_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error _zd_iowrite32v_locked. Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_iowrite32a_locked(%struct.zd_chip* %0, %struct.zd_ioreq32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca %struct.zd_ioreq32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store %struct.zd_ioreq32* %1, %struct.zd_ioreq32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %14 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %13, i32 0, i32 0
  %15 = call i32 @zd_usb_iowrite16v_async_start(i32* %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %69, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @USB_MAX_IOWRITE32_COUNT, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @USB_MAX_IOWRITE32_COUNT, align 4
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %27, %20
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %35, i64 %39
  %41 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %49

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %30

49:                                               ; preds = %44, %30
  %50 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %51 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %51, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @_zd_iowrite32v_async_locked(%struct.zd_chip* %50, %struct.zd_ioreq32* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %61 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %60, i32 0, i32 0
  %62 = call i32 @zd_usb_iowrite16v_async_end(i32* %61, i32 0)
  %63 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %64 = call i32 @zd_chip_dev(%struct.zd_chip* %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_dbg_f(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %16

75:                                               ; preds = %16
  %76 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %77 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %76, i32 0, i32 0
  %78 = call i32 @zd_usb_iowrite16v_async_end(i32* %77, i32 50)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @zd_usb_iowrite16v_async_start(i32*) #1

declare dso_local i32 @_zd_iowrite32v_async_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @zd_usb_iowrite16v_async_end(i32*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
