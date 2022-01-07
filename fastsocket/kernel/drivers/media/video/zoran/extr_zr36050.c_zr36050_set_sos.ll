; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_sos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36050 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: write SOS\0A\00", align 1
@NO_OF_COMPONENTS = common dso_local global i32 0, align 4
@zr36050_td = common dso_local global i32* null, align 8
@zr36050_ta = common dso_local global i32* null, align 8
@ZR050_SOS1_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr36050*)* @zr36050_set_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36050_set_sos(%struct.zr36050* %0) #0 {
  %2 = alloca %struct.zr36050*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.zr36050* %0, %struct.zr36050** %2, align 8
  %5 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %6 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 -1, i8* %9, align 16
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 1
  store i8 -38, i8* %10, align 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %11, align 2
  %12 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 3, %13
  %15 = add nsw i32 %14, 3
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 3
  store i8 %16, i8* %17, align 1
  %18 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 4
  store i8 %19, i8* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %51, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 5, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %31
  store i8 %27, i8* %32, align 1
  %33 = load i32*, i32** @zr36050_td, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 4
  %39 = load i32*, i32** @zr36050_ta, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 6, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %49
  store i8 %45, i8* %50, align 1
  br label %51

51:                                               ; preds = %25
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 3, %56
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %62 = mul nsw i32 2, %61
  %63 = add nsw i32 3, %62
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %65
  store i8 63, i8* %66, align 1
  %67 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 3, %68
  %70 = add nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %74 = load i32, i32* @ZR050_SOS1_IDX, align 4
  %75 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 5, %76
  %78 = add nsw i32 %77, 3
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %80 = call i32 @zr36050_pushit(%struct.zr36050* %73, i32 %74, i32 %78, i8* %79)
  ret i32 %80
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @zr36050_pushit(%struct.zr36050*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
