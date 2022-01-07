; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i32, i32*, i32, i32 }

@alt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"alternate forced to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"minimum isoc packet size: %u (alt=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"setting alternate %d with wMaxPacketSize=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot change alternate number to %d (error=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_set_alternate(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @alt, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @alt, align 4
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i32, ...) @em28xx_coredbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @alt, align 4
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %94

32:                                               ; preds = %18, %1
  %33 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2
  %37 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = icmp sgt i32 %40, 345600
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = mul i32 %43, 2
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %32
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %90, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %46
  %53 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %93

66:                                               ; preds = %52
  %67 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %78 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ugt i32 %73, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %66
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %87 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %66
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %46

93:                                               ; preds = %62, %46
  br label %94

94:                                               ; preds = %93, %24
  %95 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %103 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, ...) @em28xx_coredbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %107 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %116 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %118 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %121 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, i32, ...) @em28xx_coredbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %122)
  %124 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %125 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %128 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @usb_set_interface(i32 %126, i32 0, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %100
  %134 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %135 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %142

140:                                              ; preds = %100
  br label %141

141:                                              ; preds = %140, %94
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %133
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @em28xx_coredbg(i8*, i32, ...) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
