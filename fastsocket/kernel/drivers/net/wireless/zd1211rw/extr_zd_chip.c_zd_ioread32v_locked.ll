; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_ioread32v_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_ioread32v_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@USB_MAX_IOREAD32_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error: zd_ioread16v_locked. Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_ioread32v_locked(%struct.zd_chip* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @USB_MAX_IOREAD32_COUNT, align 4
  %20 = mul nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @USB_MAX_IOREAD32_COUNT, align 4
  %25 = mul nsw i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @USB_MAX_IOREAD32_COUNT, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = mul i32 2, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = mul nuw i64 4, %21
  %41 = icmp ugt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = mul nuw i64 4, %26
  %48 = icmp ugt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %76, %34
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 2, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @inc_addr(i32 %62)
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %23, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %23, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %55
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @zd_ioread16v_locked(%struct.zd_chip* %80, i32* %27, i32* %23, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %87 = call i32 @zd_chip_dev(%struct.zd_chip* %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @dev_dbg_f(i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

91:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 2, %97
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %27, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %27, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %92

117:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %117, %85, %31
  %119 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @inc_addr(i32) #2

declare dso_local i32 @zd_ioread16v_locked(%struct.zd_chip*, i32*, i32*, i32) #2

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #2

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
