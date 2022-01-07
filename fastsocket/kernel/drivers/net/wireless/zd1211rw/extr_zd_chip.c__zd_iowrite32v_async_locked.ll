; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c__zd_iowrite32v_async_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c__zd_iowrite32v_async_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32 }
%struct.zd_ioreq32 = type { i32, i32 }
%struct.zd_ioreq16 = type { i32, i32 }

@USB_MAX_IOWRITE32_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, %struct.zd_ioreq32*, i32)* @_zd_iowrite32v_async_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zd_iowrite32v_async_locked(%struct.zd_chip* %0, %struct.zd_ioreq32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca %struct.zd_ioreq32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store %struct.zd_ioreq32* %1, %struct.zd_ioreq32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @USB_MAX_IOWRITE32_COUNT, align 4
  %16 = mul nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca %struct.zd_ioreq16, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %21 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %20, i32 0, i32 1
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = call i32 @ZD_ASSERT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @USB_MAX_IOWRITE32_COUNT, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = mul i32 2, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = mul nuw i64 8, %17
  %41 = icmp ugt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %95, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 2, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %51, i64 %53
  %55 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %19, i64 %59
  %61 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %62, i64 %64
  %66 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @inc_addr(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %19, i64 %70
  %72 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %73, i64 %75
  %77 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %19, i64 %81
  %83 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %84, i64 %86
  %88 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %19, i64 %92
  %94 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %48
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %44

98:                                               ; preds = %44
  %99 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %100 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %99, i32 0, i32 0
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @zd_usb_iowrite16v_async(i32* %100, %struct.zd_ioreq16* %19, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

104:                                              ; preds = %98, %31, %26
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ZD_ASSERT(i32) #2

declare dso_local i32 @mutex_is_locked(i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @inc_addr(i32) #2

declare dso_local i32 @zd_usb_iowrite16v_async(i32*, %struct.zd_ioreq16*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
