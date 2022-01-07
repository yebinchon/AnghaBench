; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_set_contrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16, i16 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@cit_model1_ntries = common dso_local global i32 0, align 4
@cit_set_contrast.cv = internal constant [7 x %struct.anon] [%struct.anon { i16 5, i16 5, i16 15 }, %struct.anon { i16 4, i16 4, i16 22 }, %struct.anon { i16 2, i16 3, i16 22 }, %struct.anon { i16 2, i16 8, i16 22 }, %struct.anon { i16 1, i16 12, i16 22 }, %struct.anon { i16 1, i16 14, i16 22 }, %struct.anon { i16 1, i16 16, i16 22 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_set_contrast(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %102 [
    i32 132, label %13
    i32 130, label %46
    i32 128, label %46
    i32 131, label %47
    i32 129, label %68
    i32 133, label %94
  ]

13:                                               ; preds = %1
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = sdiv i32 %17, 1333
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i32 %20, i32 1058)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2000
  %26 = sdiv i32 %25, 1333
  store i32 %26, i32* %4, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %27, i32 %28, i32 1059)
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4000
  %34 = sdiv i32 %33, 1333
  store i32 %34, i32* %4, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cit_write_reg(%struct.gspca_dev* %35, i32 %36, i32 1060)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 8000
  %42 = sdiv i32 %41, 1333
  store i32 %42, i32* %4, align 4
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %43, i32 %44, i32 1061)
  br label %102

46:                                               ; preds = %1, %1
  br label %102

47:                                               ; preds = %1
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 20, %50
  %52 = mul nsw i32 %51, 1000
  %53 = sdiv i32 %52, 1333
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %64, %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @cit_model1_ntries, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %59, i32 20, i32 %60)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @cit_send_FF_04_02(%struct.gspca_dev* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %54

67:                                               ; preds = %54
  br label %102

68:                                               ; preds = %1
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 3
  store i32 %72, i32* %7, align 4
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i16, i16* %77, align 2
  %79 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %73, i32 103, i16 zeroext %78)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %80, i32 91, i16 zeroext %85)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 2
  %92 = load i16, i16* %91, align 2
  %93 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %87, i32 92, i16 zeroext %92)
  br label %102

94:                                               ; preds = %1
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = trunc i32 %99 to i16
  %101 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %95, i32 91, i16 zeroext %100)
  br label %102

102:                                              ; preds = %1, %94, %68, %67, %46, %13
  ret i32 0
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_Packet_Format1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_send_FF_04_02(%struct.gspca_dev*) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
