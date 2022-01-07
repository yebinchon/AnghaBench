; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model0(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i16 0, i16* %4, align 2
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = call i32 @cit_get_clock_div(%struct.gspca_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = call i32 @cit_write_reg(%struct.gspca_dev* %13, i16 zeroext 0, i32 256)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @cit_write_reg(%struct.gspca_dev* %15, i16 zeroext 3, i32 1080)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @cit_write_reg(%struct.gspca_dev* %17, i16 zeroext 30, i32 1067)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i16 zeroext 65, i32 1068)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = call i32 @cit_write_reg(%struct.gspca_dev* %21, i16 zeroext 8, i32 1078)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i16 zeroext 36, i32 1027)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @cit_write_reg(%struct.gspca_dev* %25, i16 zeroext 44, i32 1028)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @cit_write_reg(%struct.gspca_dev* %27, i16 zeroext 2, i32 1062)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @cit_write_reg(%struct.gspca_dev* %29, i16 zeroext 20, i32 1063)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %73 [
    i32 160, label %34
    i32 176, label %47
    i32 320, label %60
  ]

34:                                               ; preds = %12
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = call i32 @cit_write_reg(%struct.gspca_dev* %35, i16 zeroext 4, i32 267)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = call i32 @cit_write_reg(%struct.gspca_dev* %37, i16 zeroext 1, i32 266)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @cit_write_reg(%struct.gspca_dev* %39, i16 zeroext 16, i32 258)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @cit_write_reg(%struct.gspca_dev* %41, i16 zeroext 160, i32 259)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = call i32 @cit_write_reg(%struct.gspca_dev* %43, i16 zeroext 0, i32 260)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = call i32 @cit_write_reg(%struct.gspca_dev* %45, i16 zeroext 120, i32 261)
  br label %73

47:                                               ; preds = %12
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @cit_write_reg(%struct.gspca_dev* %48, i16 zeroext 6, i32 267)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @cit_write_reg(%struct.gspca_dev* %50, i16 zeroext 0, i32 266)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = call i32 @cit_write_reg(%struct.gspca_dev* %52, i16 zeroext 5, i32 258)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @cit_write_reg(%struct.gspca_dev* %54, i16 zeroext 176, i32 259)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = call i32 @cit_write_reg(%struct.gspca_dev* %56, i16 zeroext 0, i32 260)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @cit_write_reg(%struct.gspca_dev* %58, i16 zeroext 144, i32 261)
  br label %73

60:                                               ; preds = %12
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = call i32 @cit_write_reg(%struct.gspca_dev* %61, i16 zeroext 8, i32 267)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = call i32 @cit_write_reg(%struct.gspca_dev* %63, i16 zeroext 4, i32 266)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @cit_write_reg(%struct.gspca_dev* %65, i16 zeroext 5, i32 258)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = call i32 @cit_write_reg(%struct.gspca_dev* %67, i16 zeroext 160, i32 259)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @cit_write_reg(%struct.gspca_dev* %69, i16 zeroext 16, i32 260)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = call i32 @cit_write_reg(%struct.gspca_dev* %71, i16 zeroext 120, i32 261)
  br label %73

73:                                               ; preds = %12, %60, %47, %34
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = call i32 @cit_write_reg(%struct.gspca_dev* %74, i16 zeroext 0, i32 265)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = trunc i32 %77 to i16
  %79 = call i32 @cit_write_reg(%struct.gspca_dev* %76, i16 zeroext %78, i32 273)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @cit_get_clock_div(%struct.gspca_dev*) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
