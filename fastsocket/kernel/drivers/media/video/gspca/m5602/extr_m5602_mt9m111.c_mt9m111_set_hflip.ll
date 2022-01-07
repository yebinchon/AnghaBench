; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_hflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_hflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Set horizontal flip to %d\00", align 1
@HFLIP_IDX = common dso_local global i64 0, align 8
@MT9M111_PAGE_MAP = common dso_local global i32 0, align 4
@MT9M111_SC_R_MODE_CONTEXT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @mt9m111_set_hflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_hflip(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %8, align 8
  %13 = load %struct.sd*, %struct.sd** %8, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* @D_V4L2, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PDEBUG(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* @HFLIP_IDX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sd*, %struct.sd** %8, align 8
  %28 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = call i32 @m5602_write_sensor(%struct.sd* %27, i32 %28, i32* %29, i32 2)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.sd*, %struct.sd** %8, align 8
  %37 = load i32, i32* @MT9M111_SC_R_MODE_CONTEXT_B, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %39 = call i32 @m5602_read_sensor(%struct.sd* %36, i32 %37, i32* %38, i32 2)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %35
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 253
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 1
  %50 = and i32 %49, 2
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sd*, %struct.sd** %8, align 8
  %54 = load i32, i32* @MT9M111_SC_R_MODE_CONTEXT_B, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %56 = call i32 @m5602_write_sensor(%struct.sd* %53, i32 %54, i32* %55, i32 2)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %44, %42, %33
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
