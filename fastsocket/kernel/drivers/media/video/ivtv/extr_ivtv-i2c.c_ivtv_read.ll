; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i2c read from %x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i8, i8*, i64)* @ivtv_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_read(%struct.ivtv* %0, i8 zeroext %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @EREMOTEIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %62, %4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %65

22:                                               ; preds = %20
  %23 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %24 = call i32 @ivtv_start(%struct.ivtv* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 1
  %32 = or i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = call i32 @ivtv_sendbyte(%struct.ivtv* %28, i8 zeroext %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %27, %22
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %59

45:                                               ; preds = %43
  %46 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = icmp eq i64 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ivtv_readbyte(%struct.ivtv* %46, i8* %49, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %36

59:                                               ; preds = %43
  %60 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %61 = call i32 @ivtv_stop(%struct.ivtv* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %14

65:                                               ; preds = %20
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8, i8* %6, align 1
  %70 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 zeroext %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @ivtv_start(%struct.ivtv*) #1

declare dso_local i32 @ivtv_sendbyte(%struct.ivtv*, i8 zeroext) #1

declare dso_local i32 @ivtv_readbyte(%struct.ivtv*, i8*, i32) #1

declare dso_local i32 @ivtv_stop(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
