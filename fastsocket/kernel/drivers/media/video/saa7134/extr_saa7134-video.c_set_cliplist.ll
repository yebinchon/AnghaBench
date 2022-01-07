; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_set_cliplist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_set_cliplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.cliplist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"clip: %s winbits=%02x pos=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i32, %struct.cliplist*, i32, i8*)* @set_cliplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cliplist(%struct.saa7134_dev* %0, i32 %1, %struct.cliplist* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cliplist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cliplist* %2, %struct.cliplist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %89, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %13
  %18 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %18, i64 %20
  %22 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %26, i64 %28
  %30 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 15
  br i1 %36, label %37, label %53

37:                                               ; preds = %17
  %38 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %38, i64 %40
  %42 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %44, i64 %47
  %49 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %89

53:                                               ; preds = %37, %17
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @saa_writeb(i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  %60 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %60, i64 %62
  %64 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @saa_writeb(i32 %59, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 3
  %70 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %70, i64 %72
  %74 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 8
  %77 = call i32 @saa_writeb(i32 %69, i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.cliplist*, %struct.cliplist** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %80, i64 %82
  %84 = getelementptr inbounds %struct.cliplist, %struct.cliplist* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %53, %52
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %13

92:                                               ; preds = %13
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 1024
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 0
  %99 = call i32 @saa_writeb(i32 %98, i32 0)
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @saa_writeb(i32 %101, i32 0)
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 2
  %105 = call i32 @saa_writeb(i32 %104, i32 0)
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 3
  %108 = call i32 @saa_writeb(i32 %107, i32 0)
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 8
  store i32 %111, i32* %7, align 4
  br label %93

112:                                              ; preds = %93
  ret void
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
