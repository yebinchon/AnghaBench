; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_set_sharpness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_set_sharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16, i16, i16 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i64 }

@__const.cit_set_sharpness.sa = private unnamed_addr constant [7 x i16] [i16 17, i16 19, i16 22, i16 24, i16 26, i16 8, i16 10], align 2
@cit_model1_ntries = common dso_local global i32 0, align 4
@cit_set_sharpness.sv = internal constant [7 x %struct.anon] [%struct.anon { i16 0, i16 0, i16 5, i16 20 }, %struct.anon { i16 1, i16 4, i16 5, i16 20 }, %struct.anon { i16 2, i16 4, i16 5, i16 20 }, %struct.anon { i16 3, i16 4, i16 5, i16 20 }, %struct.anon { i16 3, i16 5, i16 5, i16 20 }, %struct.anon { i16 3, i16 6, i16 5, i16 20 }, %struct.anon { i16 3, i16 7, i16 5, i16 20 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_set_sharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_set_sharpness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i16], align 2
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %63 [
    i32 132, label %11
    i32 130, label %11
    i32 128, label %11
    i32 133, label %11
    i32 131, label %12
    i32 129, label %30
  ]

11:                                               ; preds = %1, %1, %1, %1
  br label %63

12:                                               ; preds = %1
  %13 = bitcast [7 x i16]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %13, i8* align 2 bitcast ([7 x i16]* @__const.cit_set_sharpness.sa to i8*), i64 14, i1 false)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %26, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @cit_model1_ntries, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [7 x i16], [7 x i16]* %5, i64 0, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %19, i32 19, i16 zeroext %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %14

29:                                               ; preds = %14
  br label %63

30:                                               ; preds = %1
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 8
  %38 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %31, i32 96, i16 zeroext %37)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 2
  %46 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %39, i32 97, i16 zeroext %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 2
  %53 = load i16, i16* %52, align 4
  %54 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %47, i32 98, i16 zeroext %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3
  %61 = load i16, i16* %60, align 2
  %62 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %55, i32 99, i16 zeroext %61)
  br label %63

63:                                               ; preds = %1, %30, %29, %11
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cit_PacketFormat2(%struct.gspca_dev*, i32, i16 zeroext) #2

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i16 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
