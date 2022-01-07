; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_dri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_dri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36050 = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: write DRI\0A\00", align 1
@ZR050_DRI_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr36050*)* @zr36050_set_dri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36050_set_dri(%struct.zr36050* %0) #0 {
  %2 = alloca %struct.zr36050*, align 8
  %3 = alloca [6 x i8], align 1
  store %struct.zr36050* %0, %struct.zr36050** %2, align 8
  %4 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %5 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  store i8 -1, i8* %8, align 1
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 1
  store i8 -35, i8* %9, align 1
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 3
  store i8 4, i8* %11, align 1
  %12 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %13 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 4
  store i8 %16, i8* %17, align 1
  %18 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %19 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 5
  store i8 %22, i8* %23, align 1
  %24 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %25 = load i32, i32* @ZR050_DRI_IDX, align 4
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %27 = call i32 @zr36050_pushit(%struct.zr36050* %24, i32 %25, i32 6, i8* %26)
  ret i32 %27
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @zr36050_pushit(%struct.zr36050*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
