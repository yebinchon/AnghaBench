; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-core.c_saa7164_dumpregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-core.c_saa7164_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"--------------------> 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"region0[0x%08x] = %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7164_dumpregs(%struct.saa7164_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7164_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %125, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %128

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = add nsw i64 %15, 0
  %17 = call i64 @saa7164_readb(i64 %16)
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = add nsw i64 %22, 1
  %24 = call i64 @saa7164_readb(i64 %23)
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = add nsw i64 %29, 2
  %31 = call i64 @saa7164_readb(i64 %30)
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = add nsw i64 %36, 3
  %38 = call i64 @saa7164_readb(i64 %37)
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = add nsw i64 %43, 4
  %45 = call i64 @saa7164_readb(i64 %44)
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 5
  %52 = call i64 @saa7164_readb(i64 %51)
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = add nsw i64 %57, 6
  %59 = call i64 @saa7164_readb(i64 %58)
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = add nsw i64 %64, 7
  %66 = call i64 @saa7164_readb(i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = add nsw i64 %71, 8
  %73 = call i64 @saa7164_readb(i64 %72)
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = add nsw i64 %78, 9
  %80 = call i64 @saa7164_readb(i64 %79)
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = add nsw i64 %85, 10
  %87 = call i64 @saa7164_readb(i64 %86)
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = add nsw i64 %92, 11
  %94 = call i64 @saa7164_readb(i64 %93)
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = add nsw i64 %99, 12
  %101 = call i64 @saa7164_readb(i64 %100)
  %102 = trunc i64 %101 to i32
  %103 = load i64, i64* %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = add nsw i64 %106, 13
  %108 = call i64 @saa7164_readb(i64 %107)
  %109 = trunc i64 %108 to i32
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = add nsw i64 %113, 14
  %115 = call i64 @saa7164_readb(i64 %114)
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = add nsw i64 %120, 15
  %122 = call i64 @saa7164_readb(i64 %121)
  %123 = trunc i64 %122 to i32
  %124 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %18, i32 %25, i32 %32, i32 %39, i32 %46, i32 %53, i32 %60, i32 %67, i32 %74, i32 %81, i32 %88, i32 %95, i32 %102, i32 %109, i32 %116, i32 %123)
  br label %125

125:                                              ; preds = %10
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 16
  store i32 %127, i32* %5, align 4
  br label %7

128:                                              ; preds = %7
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @saa7164_readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
