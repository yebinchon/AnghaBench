; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i8*, i16)* @em2800_i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_send_bytes(i8* %0, i8 zeroext %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.em28xx*, align 8
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 4, i32* %14, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.em28xx*
  store %struct.em28xx* %18, %struct.em28xx** %15, align 8
  br label %19

19:                                               ; preds = %65, %4
  %20 = load i16, i16* %9, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i16, i16* %9, align 2
  %25 = sext i16 %24 to i32
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i16, i16* %9, align 2
  %32 = sext i16 %31 to i32
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  store i32 %34, i32* %13, align 4
  %35 = load %struct.em28xx*, %struct.em28xx** %15, align 8
  %36 = load i8, i8* %7, align 1
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @em2800_i2c_send_max4(%struct.em28xx* %35, i8 zeroext %36, i8* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = load i16, i16* %9, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %9, align 2
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %65

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %42
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @em2800_i2c_send_max4(%struct.em28xx*, i8 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
