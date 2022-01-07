; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_sd_stop0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_sd_stop0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i32, i64 }

@KEY_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stop0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stop0(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %78

11:                                               ; preds = %1
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %78 [
    i32 132, label %15
    i32 131, label %18
    i32 130, label %25
    i32 128, label %25
    i32 129, label %40
    i32 133, label %61
  ]

15:                                               ; preds = %11
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @cit_write_reg(%struct.gspca_dev* %16, i32 192, i32 256)
  br label %78

18:                                               ; preds = %11
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @cit_send_FF_04_02(%struct.gspca_dev* %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @cit_read_reg(%struct.gspca_dev* %21, i32 256, i32 0)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i32 129, i32 256)
  br label %78

25:                                               ; preds = %11, %11
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %26, i32 48, i32 4)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i32 128, i32 256)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @cit_write_reg(%struct.gspca_dev* %30, i32 32, i32 273)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i32 160, i32 273)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %34, i32 48, i32 2)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @cit_write_reg(%struct.gspca_dev* %36, i32 32, i32 273)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %38, i32 0, i32 274)
  br label %78

40:                                               ; preds = %11
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @cit_write_reg(%struct.gspca_dev* %41, i32 6, i32 300)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %43, i32 70, i32 0)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @cit_read_reg(%struct.gspca_dev* %45, i32 278, i32 0)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @cit_write_reg(%struct.gspca_dev* %47, i32 100, i32 278)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @cit_read_reg(%struct.gspca_dev* %49, i32 277, i32 0)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @cit_write_reg(%struct.gspca_dev* %51, i32 3, i32 277)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = call i32 @cit_write_reg(%struct.gspca_dev* %53, i32 8, i32 291)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @cit_write_reg(%struct.gspca_dev* %55, i32 0, i32 279)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @cit_write_reg(%struct.gspca_dev* %57, i32 0, i32 274)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = call i32 @cit_write_reg(%struct.gspca_dev* %59, i32 128, i32 256)
  br label %78

61:                                               ; preds = %11
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %62, i32 73, i32 255)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @cit_write_reg(%struct.gspca_dev* %64, i32 6, i32 300)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @cit_write_reg(%struct.gspca_dev* %66, i32 0, i32 278)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @cit_write_reg(%struct.gspca_dev* %68, i32 8, i32 291)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @cit_write_reg(%struct.gspca_dev* %70, i32 0, i32 279)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @cit_write_reg(%struct.gspca_dev* %72, i32 3, i32 307)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = call i32 @cit_write_reg(%struct.gspca_dev* %74, i32 0, i32 273)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @cit_write_reg(%struct.gspca_dev* %76, i32 192, i32 256)
  br label %78

78:                                               ; preds = %10, %11, %61, %40, %25, %18, %15
  ret void
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_send_FF_04_02(%struct.gspca_dev*) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model2_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
