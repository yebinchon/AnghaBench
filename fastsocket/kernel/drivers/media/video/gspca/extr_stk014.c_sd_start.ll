; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.sd = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"set intf %d %d failed\00", align 1
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"camera started alt: 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jpeg_define(i32 %10, i32 %13, i32 %16, i32 34)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jpeg_set_qual(i32 %20, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_set_interface(i32 %27, i32 %30, i32 1)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @set_par(%struct.gspca_dev* %32, i32 268435456)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @set_par(%struct.gspca_dev* %34, i32 0)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @set_par(%struct.gspca_dev* %36, i32 -2147295231)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @set_par(%struct.gspca_dev* %38, i32 335544320)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 320
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  store i32 -2147295231, i32* %5, align 4
  br label %46

45:                                               ; preds = %1
  store i32 1073868800, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @set_par(%struct.gspca_dev* %47, i32 %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_set_interface(i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %123

73:                                               ; preds = %46
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = call i32 @reg_r(%struct.gspca_dev* %74, i32 1584)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @rcv_val(%struct.gspca_dev* %76, i32 32)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_r(%struct.gspca_dev* %78, i32 1616)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = call i32 @snd_val(%struct.gspca_dev* %80, i32 32, i32 -1)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @reg_w(%struct.gspca_dev* %82, i32 1568, i32 0)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @reg_w(%struct.gspca_dev* %84, i32 1584, i32 0)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @reg_w(%struct.gspca_dev* %86, i32 1600, i32 0)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @reg_w(%struct.gspca_dev* %88, i32 1616, i32 0)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @reg_w(%struct.gspca_dev* %90, i32 1632, i32 0)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @setbrightness(%struct.gspca_dev* %92)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @setcontrast(%struct.gspca_dev* %94)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @setcolors(%struct.gspca_dev* %96)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @set_par(%struct.gspca_dev* %98, i32 159383552)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @set_par(%struct.gspca_dev* %100, i32 176160768)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @set_par(%struct.gspca_dev* %102, i32 192937984)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @set_par(%struct.gspca_dev* %104, i32 218300416)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @setlightfreq(%struct.gspca_dev* %106)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @set_par(%struct.gspca_dev* %108, i32 16777216)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @set_par(%struct.gspca_dev* %110, i32 16777216)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %73
  %117 = load i32, i32* @D_STREAM, align 4
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PDEBUG(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %116, %73
  br label %123

123:                                              ; preds = %122, %62
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  ret i32 %126
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @set_par(%struct.gspca_dev*, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @rcv_val(%struct.gspca_dev*, i32) #1

declare dso_local i32 @snd_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

declare dso_local i32 @setlightfreq(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
