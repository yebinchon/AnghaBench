; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_initialize_mt9m111.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_initialize_mt9m111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 }

@__const.em28xx_initialize_mt9m111.regs = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\0D\00\01", [3 x i8] c"\0D\00\00", [3 x i8] c"\0A\00!", [3 x i8] c"!\04\00"], align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_initialize_mt9m111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_initialize_mt9m111(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x [3 x i8]], align 1
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = bitcast [4 x [3 x i8]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x [3 x i8]], [4 x [3 x i8]]* @__const.em28xx_initialize_mt9m111.regs, i32 0, i32 0, i32 0), i64 12, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %4, i64 0, i64 0
  %9 = bitcast [3 x i8]* %8 to i8**
  %10 = call i32 @ARRAY_SIZE(i8** %9)
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %4, i64 0, i64 %16
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %19 = call i32 @i2c_master_send(i32* %14, i8* %18, i32 3)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @i2c_master_send(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
